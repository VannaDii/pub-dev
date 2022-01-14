import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class CheckCommand extends DfatRepairCommand {
  @override
  final name = "check";

  @override
  final description = "Checks your environment for DFAT required tools.";

  @override
  String get category => 'General';

  @override
  List<TaskCommand> get sequence =>
      [CheckToolsTask(this, logger), CheckFSTask(this, logger)];

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

  @override
  Future<bool> run() async {
    final args = argResults!;
    final bool useFix = args['fix'];

    bool result = await runSequence({
      CheckFSTask.taskName: {'fix': useFix}
    });
    return result;
  }
}
