import 'dart:io';

import 'package:path/path.dart' as path;

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
    var workDir = Directory.current.path;

    argParser.addOption(
      'root',
      abbr: 'r',
      defaultsTo: path.relative(workDir, from: workDir),
      help: "The root path to process. Should be your workspace root.",
    );
  }

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
    logger.header("Shared");

    final args = argResults!;
    final rootDir = Utils.getFinalDir(args['root']);
    final sharedDir = Utils.pathFromRoot(KnownPaths.shared, rootDir);
    final isNoCacheSet = Platform.environment.containsKey('NO_CACHE');
    useSequence([
      CleanDirTask(this, logger),
      PubGetTask(this, logger),
      ...(isNoCacheSet
          ? [
              BuildRunnerCleanTask(this, logger),
              BuildRunnerBuildTask(this, logger)
            ]
          : [BuildRunnerBuildTask(this, logger)]),
      DartTestTask(this, logger),
    ]);

    final result = await runSequence({
      PubGetTask.taskName: {'target': sharedDir},
      CleanDirTask.taskName: {'target': sharedDir},
      DartTestTask.taskName: {'target': sharedDir},
      BuildRunnerCleanTask.taskName: {'target': sharedDir},
      BuildRunnerBuildTask.taskName: {'target': sharedDir},
    });

    logger.footer("Shared");

    return result;
  }
}
