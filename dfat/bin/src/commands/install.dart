import 'dart:io';

import 'package:path/path.dart' as path;

import 'base.dart';
import '../logger.dart';

class InstallCommand extends DfatRepairCommand {
  @override
  final name = "install";

  @override
  final description =
      "Installs the required Dockerfile, schema files, and updates the IaC JSON files to use the appropriate schemas.";

  @override
  String get category => 'General';

  InstallCommand(Logger logger) : super(logger: logger, tools: []) {
    var workDir = Directory.current.path;

    argParser.addOption(
      'root',
      abbr: 'r',
      defaultsTo: path.relative(workDir, from: workDir),
      help: "The root path to process. Should be your workspace root.",
    );
  }

  @override
  bool run() {
    logger.header("Install");

    bool result = true;
    final args = argResults!;
    final String rootDir = getFinalDir(args['root']);

    if (result) result = writeDockerFiles(rootDir);
    if (result) result = writeSchemaFiles(rootDir);
    if (result) result = updateSchemaReferences(rootDir);

    logger.footer("Install");

    return result;
  }
}
