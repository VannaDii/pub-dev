import 'dart:collection';
import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

import 'package:yaml/yaml.dart';
import 'package:path/path.dart' as path;
import 'package:json_schema2/json_schema2.dart';

import 'enums.dart';
import 'logger.dart';

export 'enums.dart';
export 'logger.dart';

/// A handler to convert [data] from a [File] into [T]
typedef FileParser<T> = T Function(Uint8List data);

/// A handler to create a file at [path] with content
typedef FileCreator = bool Function({File file});

/// A callback for external process finalization
typedef ProcessFinalizer = void Function(int code);

/// Common utility functions shared by all tasks and commands
class Utils {
  /// An async [Stream] of [File] instances found responsive to the [matcher]
  /// within the [rootDir]/[subPath] location on the file system. THe [rootDir]
  /// will default to [Directory.current] if not provided
  static Stream<File> findFiles({
    String? subPath,
    String? rootDir,
    RegExp? matcher,
  }) async* {
    final finalRoot = rootDir ?? Directory.current.path;
    final finalSub = subPath ?? '';
    final finalPath = path.join(finalRoot, finalSub);
    final baseDir = Directory(finalPath);
    if (baseDir.existsSync()) {
      await for (var entry in baseDir.list(recursive: true)) {
        if (entry is File &&
            (matcher == null || matcher.hasMatch(entry.path))) {
          yield entry;
        }
      }
    }
  }

  /// A map of expected [KnownPaths] relative to a workspace.
  static final Map<KnownPaths, String> relativePathRoots = {
    KnownPaths.dfat: './.dfat',
    KnownPaths.iac: './iac',
    KnownPaths.lambdas: './lambdas',
    KnownPaths.schemas: './.dfat/schemas',
    KnownPaths.shared: './shared',
    KnownPaths.assets: './shared/assets'
  };

  /// Gets a path from within the [rootDir] for the specified [type], this will
  /// optionally [create] the directory if it doesn't already exist.
  static String pathFromRoot(KnownPaths type,
      [String? rootDir, bool create = true]) {
    final safeRoot = rootDir ?? Directory.current.path;
    final typePath = relativePathRoots[type];
    final typeDir = path.normalize(path.join(safeRoot, typePath));
    if (create && !Directory(typeDir).existsSync()) {
      Directory(typeDir).createSync(recursive: true);
    }
    return typeDir;
  }

  /// Runs a `chmod` command against the [filePath] in the [workingDir] using the provided [perms]
  static bool chmod(String perms, String filePath, [String? workingDir]) {
    return Process.runSync('chmod', [perms, filePath],
                workingDirectory: workingDir)
            .exitCode ==
        0;
  }

  /// Indicates whether or not this process is running in our docker image
  static bool get isInDocker => Platform.environment.containsKey('IN_DOCKER');

  /// Indicates whether or not a docker image exists by [name]
  static bool dockerImageExists(String name) {
    final dockerArgs = ['image', 'ls', name, '--format', '"{{.Repository}}"'];
    final result = Process.runSync('docker', dockerArgs);
    final success = result.exitCode == 0;
    final text = result.stdout.toString().trim().replaceAll("\"", "");
    final sameName = (text == name);
    return success && sameName;
  }

  /// Attempts to read a [File] from the specified [filePath], and parse it with
  /// the specified [parser]. Common [FileParser] implementations are available
  /// from [FileParsers]. If the file doesn't exist, throws a [FileSystemException]
  static T readFile<T>({required File file, required FileParser<T> parser}) {
    if (!file.existsSync()) {
      throw FileSystemException('File not found', file.path);
    }

    return parser(file.readAsBytesSync());
  }

  /// Attempts to read a [File] from the specified [filePath], and parse it with
  /// the specified [parser]. Common [FileParser] implementations are available
  /// from [FileParsers]. If the file doesn't exist, throws a [FileSystemException]
  static T readFilePath<T>(
      {required String filePath, required FileParser<T> parser}) {
    final reqFile = File(filePath);
    return readFile(file: reqFile, parser: parser);
  }

  /// Reads the file at [filePath] as a [JsonSchema]
  static JsonSchema readSchemaFile(String filePath, [FileCreator? creator]) {
    final parser = FileParsers.jsonParser;
    final schemaFile = File(filePath);

    if (!schemaFile.existsSync() && creator != null) {
      creator(file: schemaFile);
    }
    final schemaJson = Utils.readFile(file: schemaFile, parser: parser);
    return JsonSchema.createSchema(schemaJson);
  }

  /// Checks if [command] is executable on this system.
  static bool isCommand(String command) {
    return Process.runSync('command', ['-v', command]).exitCode == 0;
  }

  /// Gets the git hash from [dirPath], if it's a repo, otherwise `null`.
  static String? getGitHash([String? dirPath]) {
    final gitPath =
        path.normalize(path.join(dirPath ?? Directory.current.path, '.git'));
    final isGitPath = Directory(gitPath).existsSync();
    final hasGitTool = Utils.isCommand('git');
    if (!isGitPath || !hasGitTool) return null;

    final result = Process.runSync('git', ['rev-parse', '--short', 'HEAD'],
        workingDirectory: dirPath);
    if (result.exitCode != 0) {
      throw FileSystemException(result.stderr.toString(), dirPath);
    }

    return result.stdout.toString().trim();
  }

  /// Returns the result of [path.normalize], as an absolute path from [Directory.current].
  static String getFinalDir(String dirPath) {
    var finalPath = dirPath;
    if (!path.isAbsolute(finalPath)) finalPath = path.absolute(finalPath);
    if (finalPath.endsWith('/.')) {
      finalPath = finalPath.substring(0, finalPath.length - 2);
    }
    return path.normalize(finalPath);
  }

  /// Handles the child process results and outputs
  static bool handleProcessResult(
    ProcessResult result,
    Logger logger, [
    String indent = '',
    ProcessFinalizer? finalizer,
    String message = '',
  ]) {
    if (result.exitCode == 0) {
      logger.printDone(message);
    } else {
      logger.printFailed('code ${result.exitCode}');

      String logs = result.stderr.toString();
      if (logs.isEmpty) logs = result.stdout.toString();
      logger.printPassThru(logs, indent);
    }

    if (finalizer != null) finalizer(result.exitCode);

    return result.exitCode == 0;
  }

  /// Deletes a [FileSystemEntity] by [entityPath], only if it exists.
  /// If [entityPath] is a directory, it is deleted recursively.
  /// Returns `true` if the [entityPath] doesn't exist or was deleted,
  /// otherwise `false`.
  static bool deleteIfExists(String entityPath) {
    try {
      if (FileSystemEntity.isDirectorySync(entityPath)) {
        final dir = Directory(entityPath);
        if (dir.existsSync()) dir.deleteSync(recursive: true);
      } else {
        final file = File(entityPath);
        if (file.existsSync()) file.deleteSync();
      }
    } on FileSystemException catch (_) {
      return false;
    }
    return true;
  }

  /// Gets the value of [key] from the `iac.json` file in the [targetDir].
  static String? getIaCValue(String targetDir, String key) {
    final targetFile = File(path.join(targetDir, 'iac.json'));
    if (!targetFile.existsSync()) {
      throw FileSystemException('File not found', targetFile.path);
    }

    final jsonData = targetFile.readAsStringSync();
    final Map<String, dynamic> iacMap = jsonDecode(jsonData);
    return iacMap.containsKey(key) ? iacMap[key] : null;
  }

  /// Gets the value of [key] from the `pubspec.yaml` file in the [targetDir].
  static String? getPubSpecValue(String targetDir, String key) {
    final targetFile = File(path.join(targetDir, 'pubspec.yaml'));
    if (!targetFile.existsSync()) {
      throw FileSystemException('File not found', targetFile.path);
    }

    final yamlPath = Queue<String>.from(key.split('.'));
    final pubspec = loadYaml(targetFile.readAsStringSync());

    var node = pubspec;
    while (yamlPath.isNotEmpty) {
      dynamic part = yamlPath.removeFirst();
      if (RegExps.numberTest.hasMatch(part)) {
        part = int.parse(part);
      }
      try {
        final next = node[part];
        node = next;
      } catch (_) {
        node = null;
        break;
      }
    }

    return node;
  }

  /// Checks the OS-reported CPU architecture and returns the appropriate
  /// internal [CpuArch] value.
  static CpuArch getCPUArch() {
    String procType = '';
    if (Platform.isMacOS) {
      final result =
          Process.runSync('sysctl', ['-in', 'sysctl.proc_translated']);
      var isCompat = (int.tryParse(result.stdout.toString().trim()) ?? 0) == 1;
      if (isCompat) {
        return CpuArch.arm64v8;
      }
    } else if (Platform.isLinux || Platform.isMacOS && isCommand('uname')) {
      final result = Process.runSync(
        'uname',
        ['-m'],
        runInShell: true,
        includeParentEnvironment: false,
      );
      procType = result.stdout.toString().trim().toLowerCase();
    } else if (Platform.isWindows) {
      // See: https://superuser.com/a/1441469/386643
      procType = Platform.environment['PROCESSOR_ARCHITECTURE']!.toLowerCase();
    }

    switch (procType) {
      case 'x86':
      case 'i386':
      case 'amd64':
      case 'x86_64':
        return Platform.isWindows ? CpuArch.windowsAmd64 : CpuArch.amd64;
      case 'arm64':
      case 'aarch64':
      default:
        return CpuArch.arm64v8;
    }
  }
}

/// Basic file type parsers
class FileParsers {
  /// A JSON file parser
  static dynamic jsonParser(Uint8List data) {
    return json.decode(utf8Parser(data));
  }

  /// A UTF-8 (text) file parser
  static dynamic utf8Parser(Uint8List data) {
    return utf8.decode(data);
  }
}

/// Well known regular expressions
class RegExps {
  /// The pattern `^.*/iac.json$`
  static final RegExp fileIaCJson = RegExp(r'^.*/iac.json$');

  /// The pattern `^.*/pubspec.yaml$`
  static final RegExp filePubSpecYaml = RegExp(r'^.*/pubspec.yaml$');

  /// The pattern `^.*/pubspec.yaml$`
  static final RegExp numberTest = RegExp(r'^\d+$');
}
