import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

import 'package:json_schema2/json_schema2.dart';
import 'package:path/path.dart' as path;

import 'enums.dart';
export 'enums.dart';

/// A handler to convert [data] from a [File] into [T]
typedef FileParser<T> = T Function(Uint8List data);

/// A handler to create a file at [path] with content
typedef FileCreator = bool Function({File file});

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

class RegExps {
  static final RegExp fileIaCJson = RegExp(r'^.*/iac.json$');
}
