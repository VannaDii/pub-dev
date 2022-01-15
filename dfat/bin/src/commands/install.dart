import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class InstallCommand extends DfatCommand {
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
  Future<bool> run() async {
    logger.header("Install");
    useSequence([
      InstallDfatFilesTask(this, logger),
      UpdateSchemasTask(this, logger),
    ]);
    final result = await runSequence();
    logger.footer("Install");
    return result;
  }
}
