import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class CheckCommand extends DfatCommand {
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

  final String inBl = '   ';

  @override
  List<TaskCommand> revealTasks() => [
        CheckToolsTask(this, logger),
        CheckFSTask(this, logger),
      ];

  @override
  Future<bool> run() async {
    final blockCloser = logger.header('Checks');
    useSequence([CheckToolsTask(this, logger), CheckFSTask(this, logger)]);

    final args = argResults!;
    final bool useFix = args['fix'];

    bool result = await runSequence({
      CheckFSTask.taskName: {'fix': useFix}
    });

    if (!result) {
      logger.printWarn(
          'Some errors can be fixed automatically using the '
          '${'dfat check --fix'.bold()}.',
          inBl);
    }

    return blockCloser(result);
  }
}
