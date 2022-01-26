import 'dart:io';

import 'package:path/path.dart' as path;

import 'base.dart';

class DockerBuildTask extends TaskCommand {
  DockerBuildTask(DfatCommand parent, Logger logger)
      : super(
            parent,
            logger,
            TaskRequirements(files: [
              AssetRequirement(Assets.dockerAmznL2),
              AssetRequirement(Assets.dockerRunScript)
            ]));

  static String taskName = 'docker-build';

  @override
  String get name => DockerBuildTask.taskName;

  @override
  String get description => 'Builds the required docker image.';

  final inRs = '   ';

  @override
  Future<bool> run() async {
    final blockLogger = logger.headerBlock('Docker Build');

    final String imageName = args['name'];
    final rootDir = Directory.current.path;
    final dfatDir = Utils.pathFromRoot(KnownPaths.dfat);
    final dockerDir = path.relative(dfatDir);

    blockLogger.printBlock("🧱 Building ${imageName.green()} image", inRs);
    final dockerArgs = [
      'build',
      '-q',
      '--rm',
      '--build-arg',
      'SOURCE_PATH=$rootDir',
      '--build-arg',
      'USER_HOME=$userDir',
      '-t',
      imageName,
      '-f',
      'Dockerfile.dfat.al2',
      '.'
    ];

    final String pti = '      ';
    final result =
        await Process.start('docker', dockerArgs, workingDirectory: dockerDir)
            .then((p) {
      p.stdout.pipe(blockLogger.getPipeOut(pti));
      p.stderr.pipe(blockLogger.getPipeErr(pti));
      return p;
    });

    final exitCode = await result.exitCode;
    return blockLogger.close(exitCode == 0);
  }
}
