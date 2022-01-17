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
    final blockCloser = logger.header('Docker Build');

    final String imageName = args['name'];
    final rootDir = Directory.current.path;
    final dfatDir = Utils.pathFromRoot(KnownPaths.dfat);
    final dockerDir = path.relative(dfatDir);

    logger.printBlock("🧱 Building ${imageName.green()} image", inRs);
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
      p.stdout.pipe(logger.getPipeOut(pti));
      p.stderr.pipe(logger.getPipeErr(pti));
      return p;
    });

    final exitCode = await result.exitCode;
    logger.printFixed("   🧱 Building ${imageName.green()} image");
    if (exitCode == 0) {
      logger.printDone();
    } else {
      logger.printFailed();
    }

    return blockCloser(exitCode == 0);
  }
}
