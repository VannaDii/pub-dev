import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class LambdaCommand extends DfatCommand {
  @override
  final name = "lambda";

  @override
  final description = "Builds and packages lambdas for distribution.";

  @override
  String get category => 'Granular';

  LambdaCommand(Logger logger) : super(logger: logger, tools: ['dart']) {
    argParser.addFlag(
      'test',
      abbr: 't',
      negatable: false,
      defaultsTo: false,
      help: "Just run the tests in lambdas",
    );
  }

  bool get testOnly => argResults!['test'];

  @override
  List<TaskCommand> revealTasks() => [
        CleanDirTask(this, logger),
        PubGetTask(this, logger),
        DartTestTask(this, logger),
        DartCompileTask(this, logger),
        ZipArchiveTask(this, logger)
      ];

  @override
  Future<bool> run() async {
    bool result = true;
    final closer = logger.header("Lambdas");

    logger.printFixed('   🔎 Finding lambdas');
    final String lambdasPath = path.join(rootDir, 'lambdas');
    final lambdaRoots = Directory(lambdasPath)
        .listSync(recursive: false, followLinks: false)
        .whereType<Directory>()
        .map((e) => e.path)
        .toList(growable: false);
    logger.printDone('found ${lambdaRoots.length}');

    final ind = '   ';
    final subInd = ind + ind;
    for (var lambdaDir in lambdaRoots) {
      var lambdaName = path.basename(lambdaDir);
      final blockLogger = logger.collapsibleBlock(
        "ƛ  Handling ${lambdaName.green()}",
        ind,
      );
      final outputName = Utils.getIaCValue(lambdaDir, 'handler');
      final zipInput = path.join(lambdaDir, '.dist', outputName);
      final zipOutput = path.join(lambdaDir, '.dist', 'lambda_$lambdaName.zip');

      final testSequence = [DartTestTask(this, blockLogger)];
      final fullSequence = [
        CleanDirTask(this, blockLogger),
        PubGetTask(this, blockLogger),
        ...testSequence,
        DartCompileTask(this, blockLogger),
        ZipArchiveTask(this, blockLogger)
      ];

      useSequence(testOnly ? testSequence : fullSequence);

      result = await runSequence({
        CleanDirTask.taskName: {'target': lambdaDir, 'indent': subInd},
        PubGetTask.taskName: {'target': lambdaDir, 'indent': subInd},
        DartTestTask.taskName: {'target': lambdaDir, 'indent': subInd},
        DartCompileTask.taskName: {'target': lambdaDir, 'indent': subInd},
        ZipArchiveTask.taskName: {
          'input': zipInput,
          'output': zipOutput,
          'indent': subInd
        },
      });
      result = blockLogger.close(result);
    }

    return closer(result);
  }
}
