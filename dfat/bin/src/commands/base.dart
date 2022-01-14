import 'dart:io';
import 'dart:convert';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;
import 'package:args/command_runner.dart';

import 'tasks/base.dart';
export '../enums.dart';

typedef ProcessFinalizer = void Function();

abstract class DfatRepairCommand extends DfatCommand {
  DfatRepairCommand({
    required List<String> tools,
    required Logger logger,
  }) : super(tools: tools, logger: logger);

  bool writeSchemaFiles(String rootDir) {
    logger.printFixed('   📝 Writing schema files');
    final schemasDir = pathFromRoot(KnownPaths.schemas, rootDir);

    try {
      if (!Directory(schemasDir).existsSync()) {
        Directory(schemasDir).createSync(recursive: true);
      }

      Assets.schemaLambda.writeTo();
      Assets.schemaShared.writeTo();

      logger.printDone();
      return true;
    } on FileSystemException catch (e) {
      logger.printFailed(e.message);
      return false;
    }
  }

  bool updateSchemaReferences(String rootDir) {
    logger.printFixed('   📝 Writing schema references');
    final schemasDir = pathFromRoot(KnownPaths.schemas, rootDir);

    try {
      var iacFiles = findFiles(rootDir, matcher: iacJsonMatcher);
      for (var file in iacFiles) {
        var schemaName = file.path.contains('/lambdas/')
            ? 'iac.lambda.schema.json'
            : 'iac.shared.schema.json';
        var relSchemaPath = path.relative(schemasDir, from: file.parent.path);
        var iacJson = jsonDecode(file.readAsStringSync());
        iacJson[r'$schema'] = path.join(relSchemaPath, schemaName);
        file.writeAsStringSync(JsonEncoder.withIndent('  ').convert(iacJson));
      }
      logger.printDone();
      return true;
    } catch (e) {
      logger.printFailed();
      return false;
    }
  }

  bool writeDockerFiles(String rootDir) {
    logger.printFixed('   📝 Writing docker files');

    try {
      Assets.dockerAmznL2.writeTo();
      Assets.dockerRunScript.writeTo(chmod: '+x');

      logger.printDone();
      return true;
    } on FileSystemException catch (e) {
      logger.printFailed(e.message);
      return false;
    }
  }
}

abstract class DfatCommand extends Command<bool> {
  DfatCommand({required this.tools, required this.logger});

  final Logger logger;

  final List<String> tools;

  List<TaskCommand> get sequence => [];

  List<DfatCommand> get allCommands =>
      (runner?.commands.values ?? []).whereType<DfatCommand>().toList();

  List<String> get allTools =>
      [...tools, ...sequence.map((e) => e.requirements.tools).expand((e) => e)];

  List<FileRequirement> get allFsPaths =>
      [...sequence.map((e) => e.requirements.files).expand((e) => e)];

  List<String> get globalTools =>
      allCommands.map((e) => e.allTools).expand((e) => e).toSet().toList()
        ..sort();

  List<FileRequirement> get globalFsPaths =>
      allCommands.map((e) => e.allFsPaths).expand((e) => e).toSet().toList()
        ..sort();

  Future<bool> runSequence(
      [Map<String, Map<String, dynamic>> args = const {}]) async {
    bool result = true;
    final _def = <String, dynamic>{};
    for (var task in sequence) {
      if (!result) {
        break;
      } else {
        final ta = (args.containsKey(task.name) ? args[task.name] : _def)!;
        result = await task.runWith(ta) ?? false;
      }
    }
    return result;
  }

  static bool get isInDocker => Platform.environment.containsKey('IN_DOCKER');

  final iacJsonMatcher =
      RegExp(r"^.*/iac.json$", caseSensitive: false, dotAll: true);

  String? which(String toolName) {
    final result = Process.runSync('which', [toolName]);
    return (result.exitCode == 0) ? result.stdout.toString() : null;
  }

  String pathFromRoot(KnownPaths type, String rootDir, [bool create = true]) {
    final typeDir =
        path.normalize(path.join(rootDir, Utils.relativePathRoots[type]));
    if (create && !Directory(typeDir).existsSync()) {
      Directory(typeDir).createSync(recursive: true);
    }
    return typeDir;
  }

  bool handleProcessResult(
    ProcessResult result,
    Logger logger, [
    String indent = '',
    ProcessFinalizer? finalizer,
  ]) {
    if (result.exitCode == 0) {
      logger.printDone();
    } else {
      logger.printFailed('code ${result.exitCode}');

      String logs = result.stderr.toString();
      if (logs.isEmpty) logs = result.stdout.toString();
      logger.printPassThru(logs, indent);
    }

    if (finalizer != null) finalizer();

    return result.exitCode == 0;
  }

  bool deleteIfExists(String entityPath) {
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

  bool cleanDir(String dirPath, Logger logger, [String indent = '']) {
    final lambdaName = path.basename(dirPath);
    logger.printFixed('$indent🧼 Cleaning ${lambdaName.green()}');

    try {
      final targets = [
        '.dist', /* '.dart_tool', '.packages', 'pubspec.lock' */
      ];
      for (var target in targets) {
        deleteIfExists(path.join(dirPath, target));
      }
      logger.printDone();
    } on FileSystemException catch (e) {
      logger.printFailed(e.message);
      return false;
    }
    return true;
  }

  bool pubGet(String dirPath, Logger logger, [String indent = '']) {
    final lambdaName = path.basename(dirPath);
    logger.printFixed('$indent👇 Dependencies for ${lambdaName.green()}');

    final args = ['pub', 'get'];
    final result = Process.runSync('dart', args, workingDirectory: dirPath);

    return handleProcessResult(result, logger, '$indent  ');
  }

  String getFinalDir(String dirPath) {
    var finalPath = dirPath;
    if (!path.isAbsolute(finalPath)) finalPath = path.absolute(finalPath);
    if (finalPath.endsWith('/.')) {
      finalPath = finalPath.substring(0, finalPath.length - 2);
    }
    return finalPath;
  }

  Iterable<File> findFiles(String rootDir,
      {String? subPath, required RegExp matcher}) {
    var baseDir =
        Directory(subPath != null ? path.join(rootDir, subPath) : rootDir);
    if (!baseDir.existsSync()) return [];
    return baseDir
        .listSync(recursive: true)
        .where((e) => e is File && matcher.hasMatch(e.path))
        .map((e) => e as File);
  }

  String getGitHash(String dirPath) {
    final result = Process.runSync('git', ['rev-parse', '--short', 'HEAD'],
        workingDirectory: dirPath);
    if (result.exitCode != 0) {
      throw FileSystemException(result.stderr.toString(), dirPath);
    }

    return result.stdout.toString().trim();
  }
}
