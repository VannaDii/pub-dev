import 'dart:io';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;

import 'base.dart';
import '../logger.dart';

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

  bool _buildRunnerClean(String rootDir) {
    final dirName = path.basename(rootDir);
    logger.printFixed('   🏃 Runner clean ${dirName.green()}');

    final args = ['run', 'build_runner', 'clean'];
    final result = Process.runSync('dart', args, workingDirectory: rootDir);

    return handleProcessResult(result, logger, '    ');
  }

  bool _buildRunnerBuild(String rootDir) {
    final dirName = path.basename(rootDir);
    logger.printFixed('   🏃 Runner build ${dirName.green()}');

    final args = ['run', 'build_runner', 'clean'];
    final result = Process.runSync('dart', args, workingDirectory: rootDir);

    return handleProcessResult(result, logger, '    ');
  }

  @override
  bool run() {
    logger.header("Shared");

    var result = true;
    final args = argResults!;
    final rootDir = getFinalDir(args['root']);
    final sharedDir = pathFromRoot(KnownPaths.shared, rootDir);
    final isNoCacheSet = Platform.environment.containsKey('NO_CACHE');

    if (result) result = cleanDir(sharedDir, logger, '   ');
    if (result) result = pubGet(sharedDir, logger, '   ');
    if (result && isNoCacheSet) result = _buildRunnerClean(sharedDir);
    if (result) result = _buildRunnerBuild(sharedDir);

    logger.footer("Shared");

    return result;
  }
}
