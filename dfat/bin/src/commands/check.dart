import 'dart:io';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';

import 'base.dart';
import '../logger.dart';

class CheckCommand extends DfatRepairCommand {
  @override
  final name = "check";

  @override
  final description = "Checks your environment for DFAT required tools.";

  @override
  String get category => 'General';

  CheckCommand(Logger logger) : super(logger: logger, tools: []) {
    var workDir = Directory.current.path;

    argParser
      ..addOption(
        'root',
        abbr: 'r',
        defaultsTo: path.relative(workDir, from: workDir),
        help: "The root path to process. Should be your workspace root.",
      )
      ..addFlag(
        'fix',
        negatable: false,
        defaultsTo: false,
        help: "When set, creates missing folders.",
      );
  }

  bool _checkFolders(String rootDir, [bool create = false]) {
    var result = true;
    for (var kp in KnownPaths.values) {
      bool canMake = false;
      String knownPath = '';
      switch (kp) {
        case KnownPaths.dfat:
        case KnownPaths.schemas:
          {
            canMake = true;
            knownPath = pathFromRoot(kp, rootDir, create);
          }
          break;
        case KnownPaths.iac:
        case KnownPaths.shared:
        case KnownPaths.assets:
        case KnownPaths.lambdas:
          knownPath = pathFromRoot(kp, rootDir, false);
          break;
      }

      final pathName = path.basename(knownPath);
      logger.printFixed("   🔦 Looking for ${pathName.green()}");
      if (Directory(knownPath).existsSync()) {
        logger.printDone();
        if (create && canMake) {
          if (kp == KnownPaths.schemas) {
            writeSchemaFiles(rootDir);
            updateSchemaReferences(rootDir);
          } else if (kp == KnownPaths.dfat) {
            writeDockerFiles(rootDir);
          }
        }
      } else {
        result = false;
        logger.printWarn("missing, ${canMake ? "can" : "won't"} re-create.");
      }
    }

    return result;
  }

  @override
  bool run() {
    logger.header("Check");

    final tools = (runner?.commands.values
                .whereType<DfatCommand>()
                .expand((e) => e.tools) ??
            [])
        .toSet()
        .sorted();

    var result = true;
    final args = argResults!;
    final bool useFix = args['fix'];
    final rootDir = getFinalDir(args['root']);
    for (var toolName in tools) {
      logger.printFixed("   🔦 Looking for ${toolName.green()}");
      var path = which(toolName);
      if (path == null) {
        result = false;
        logger.printFailed();
      } else {
        logger.printDone();
      }

      if (!result) break;
    }

    if (result) result = _checkFolders(rootDir, useFix);
    if (!result) {
      logger.printWarn(
          "One or more folders doesn't exist."
              " Running `dfat check --fix` might fix this.",
          '   ');
    }

    logger.footer("Check");
    return result;
  }
}
