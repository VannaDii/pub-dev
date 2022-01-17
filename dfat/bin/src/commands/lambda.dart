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
        DartTestTask(this, logger),
        DartCompileTask(this, logger),
        ZipArchiveTask(this, logger)
      ];

  @override
  Future<bool> run() async {
    final footer = logger.header("Lambdas");

    bool result = true;
    final args = argResults!;
    final String rootDir = Utils.getFinalDir(args['root']);

    logger.printFixed('   🔎 Finding lambdas');
    final String lambdasPath = path.join(rootDir, 'lambdas');
    final lambdaRoots = Directory(lambdasPath)
        .listSync(recursive: false, followLinks: false)
        .whereType<Directory>()
        .map((e) => e.path)
        .toList(growable: false);
    logger.printDone();

    useSequence([
      CleanDirTask(this, logger),
      PubGetTask(this, logger),
      DartTestTask(this, logger),
      DartCompileTask(this, logger),
      ZipArchiveTask(this, logger)
    ]);

    final ind = '   ';
    final subInd = ind + ind;
    for (var lambdaDir in lambdaRoots) {
      var lambdaName = path.basename(lambdaDir);
      final closer =
          logger.printBlock("ƛ  Handling ${lambdaName.green()}", ind);
      final outputName = Utils.getIaCValue(lambdaDir, 'handler');
      final zipInput = path.join(lambdaDir, '.dist', outputName);
      final zipOutput = path.join(lambdaDir, '.dist', 'lambda_$lambdaName.zip');
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
      closer(result);
    }

    return footer(result);
  }
}
