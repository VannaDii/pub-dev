import 'dart:io';

import 'tasks/all.dart';

class SharedCommand extends DfatCommand {
  @override
  final name = "shared";

  @override
  final description = "Builds the shared library for the lambdas and app.";

  @override
  String get category => 'Granular';

  final String pti = '        - ';

  SharedCommand(Logger logger) : super(logger: logger, tools: ['dart']) {
    argParser.addFlag(
      'test',
      abbr: 't',
      negatable: false,
      defaultsTo: false,
      help: "Just run the tests in shared",
    );
  }

  bool get testOnly => argResults!['test'];

  @override
  List<TaskCommand> revealTasks() => [
        CleanDirTask(this, logger),
        PubGetTask(this, logger),
        BuildRunnerCleanTask(this, logger),
        BuildRunnerBuildTask(this, logger),
        DartTestTask(this, logger)
      ];

  @override
  Future<bool> run() async {
    final blockLogger = logger.headerBlock("Shared");

    final sharedDir = Utils.pathFromRoot(KnownPaths.shared, rootDir);
    final isNoCacheSet = Platform.environment.containsKey('NO_CACHE');
    final testSequence = [DartTestTask(this, blockLogger)];
    final fullSequence = [
      CleanDirTask(this, blockLogger),
      PubGetTask(this, blockLogger),
      ...(isNoCacheSet
          ? [
              BuildRunnerCleanTask(this, blockLogger),
              BuildRunnerBuildTask(this, blockLogger)
            ]
          : [BuildRunnerBuildTask(this, blockLogger)]),
      ...testSequence
    ];

    useSequence(testOnly ? testSequence : fullSequence);

    final result = await runSequence({
      PubGetTask.taskName: {'target': sharedDir},
      CleanDirTask.taskName: {'target': sharedDir},
      DartTestTask.taskName: {'target': sharedDir},
      BuildRunnerCleanTask.taskName: {'target': sharedDir},
      BuildRunnerBuildTask.taskName: {'target': sharedDir},
    });

    return blockLogger.close(result);
  }
}
