import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class ValidateCommand extends DfatCommand {
  @override
  final name = "validate";

  @override
  final description =
      "Validates your solution state and settings for deployment readiness.";

  @override
  String get category => 'General';

  ValidateCommand(Logger logger) : super(logger: logger, tools: []) {
    var workDir = Directory.current.path;

    argParser.addOption(
      'root',
      abbr: 'r',
      defaultsTo: path.relative(workDir, from: workDir),
      help: "The root path to process. Should be your workspace root.",
    );
  }

  @override
  List<TaskCommand> revealTasks() => [ValidateJsonTask(this, logger)];

  @override
  Future<bool> run() async {
    final footer = logger.header("Validate");
    useSequence([ValidateJsonTask(this, logger)]);
    final result = await runSequence();
    return footer(result);
  }
}
