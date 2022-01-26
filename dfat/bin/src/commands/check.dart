import 'tasks/all.dart';

class CheckCommand extends DfatCommand {
  @override
  final name = "check";

  @override
  final description = "Checks your environment for DFAT required tools.";

  @override
  String get category => 'General';

  CheckCommand(Logger logger) : super(logger: logger, tools: []) {
    argParser.addFlag(
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
    final blockLogger = logger.headerBlock('Checks');
    useSequence([
      CheckToolsTask(this, blockLogger),
      CheckFSTask(this, blockLogger),
    ]);

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

    return blockLogger.close(result);
  }
}
