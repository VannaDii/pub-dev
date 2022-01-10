import 'dart:io';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;

import 'base.dart';
import '../logger.dart';

class DockerCommand extends DfatCommand {
  @override
  final name = "docker";

  @override
  final description =
      "Runs a build in a DFAT docker image, building the image first if needed.";

  @override
  String get category => 'Granular';

  final String pti = '     ';

  DockerCommand(Logger logger)
      : super(logger: logger, tools: DfatCommand.isInDocker ? [] : ['docker']) {
    var workDir = Directory.current.path;
    var imageName = "${path.basename(workDir)}-builder";

    argParser
      ..addOption(
        'root',
        abbr: 'r',
        defaultsTo: path.relative(workDir, from: workDir),
        help: "The root path to process. Should be your workspace root.",
      )
      ..addOption(
        'name',
        abbr: 'n',
        help:
            "The name of the docker builder image. Defaults to your workspace root directory name ($imageName).",
      )
      ..addFlag(
        'build-only',
        abbr: 'b',
        defaultsTo: false,
        help: "Only build the docker image, don't automatically run it.",
      )
      ..addFlag(
        'force',
        abbr: 'f',
        defaultsTo: false,
        help: "Forces an image build even if one already exists.",
      );
  }

  String? get _userDir =>
      Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];

  bool _hasDockerImage(String imageName) {
    logger.printFixed("   🔎 Checking for image ${imageName.green()}");
    final dockerArgs = [
      'image',
      'ls',
      imageName,
      '--format',
      '"{{.Repository}}"'
    ];
    final result = Process.runSync('docker', dockerArgs);

    final hasImage = (result.exitCode == 0) &&
        (result.stdout.toString().trim().replaceAll("\"", "") == imageName);

    if (hasImage) {
      logger.printDone();
    } else {
      logger.printFailed();
    }

    return hasImage;
  }

  Future<bool> _buildDockerImage(String rootDir, String imageName) async {
    final dfatDir = pathFromRoot(KnownPaths.dfat, rootDir);
    final dockerDir = path.relative(dfatDir, from: rootDir);
    logger.printBlock("🧱 Building ${imageName.green()} image", '   ');
    final dockerArgs = [
      'build',
      '-q',
      '--rm',
      '--build-arg',
      'SOURCE_PATH=$rootDir',
      '--build-arg',
      'USER_HOME=$_userDir',
      '-t',
      imageName,
      '-f',
      'Dockerfile.dfat.al2',
      '.'
    ];

    final result =
        await Process.start('docker', dockerArgs, workingDirectory: dockerDir)
            .then((p) {
      p.stdout.pipe(logger.getPipeOut(pti));
      p.stderr.pipe(logger.getPipeErr(pti));
      return p;
    });

    final exitCode = await result.exitCode;
    logger.printFixed("  🧱 Building ${imageName.green()} image");
    if (exitCode == 0) {
      logger.printDone();
    } else {
      logger.printFailed();
    }

    return (exitCode == 0);
  }

  Future<Process> _runInDocker(String rootDir, String imageName) {
    logger.printFixed("   🚢 Using docker image ${imageName.green()}");
    logger.printDone();

    final args = [
      'run',
      '--rm',
      '--name',
      imageName,
      '-v',
      '$rootDir:/home/code',
      '-v',
      '$_userDir:/home/user',
      '-e',
      'CI=false',
      '-it',
      imageName
    ];
    return Process.start('docker', args,
        workingDirectory: rootDir, mode: ProcessStartMode.inheritStdio);
  }

  @override
  Future<bool> run() async {
    logger.header("Docker");

    final args = argResults!;
    final bool canRun = !args['build-only'];
    final bool useForce = args['force'];
    final String rootDir = getFinalDir(args['root']);
    final String imageNameFallback = "${path.basename(rootDir)}-builder";
    final String imageName = args['name'] ?? imageNameFallback;

    bool proceed = _hasDockerImage(imageName);
    if (!proceed || useForce) {
      proceed = await _buildDockerImage(rootDir, imageName);
    }
    proceed = proceed && canRun;

    final Future<Process>? builder =
        proceed ? _runInDocker(rootDir, imageName) : null;

    logger.footer("Docker");

    if (builder != null) {
      return await builder.then((p) => p.exitCode).then((v) => v) == 0;
    }

    return !canRun;
  }
}
