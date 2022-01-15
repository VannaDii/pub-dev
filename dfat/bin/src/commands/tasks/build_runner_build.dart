import 'dart:io';

import 'package:path/path.dart' as path;

import 'base.dart';

class BuildRunnerBuildTask extends TaskCommand {
  BuildRunnerBuildTask(DfatCommand parent, Logger logger)
      : super(parent, logger, TaskRequirements());

  static String taskName = 'build-runner-build';

  @override
  String get name => BuildRunnerBuildTask.taskName;

  @override
  String get description =>
      'Runs `dart run build_runner build` in the specified `target` folder';

  final inRs = '   ';

  @override
  Future<bool> run() async {
    final dirPath = targetDir;
    final baseName = path.basename(dirPath);
    logger.printFixed('🏃 Runner build ${baseName.green()}', inRs);

    final dartArgs = [
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs'
    ];
    final result = Process.runSync('dart', dartArgs, workingDirectory: dirPath);

    return Utils.handleProcessResult(result, logger, inRs + inRs);
  }
}
