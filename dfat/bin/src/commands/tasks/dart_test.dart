import 'dart:io';

import 'package:path/path.dart' as path;

import 'base.dart';

class DartTestTask extends TaskCommand {
  DartTestTask(DfatCommand parent, Logger logger)
      : super(parent, logger, TaskRequirements());

  static String taskName = 'dart-test';

  @override
  String get name => DartTestTask.taskName;

  @override
  String get description => 'Uses `dart run` to run tests.';

  final inRs = '   ';

  @override
  Future<bool> run() async {
    final dirPath = targetDir;
    final ind = args['indent'] ?? inRs;
    final baseName = path.basename(dirPath);
    logger.printFixed('🧪 Testing ${baseName.green()}', ind);

    final hasTestDir = Directory(path.join(targetDir, 'test')).existsSync();
    if (!hasTestDir) {
      logger.printSkipped('missing test directory');
      return true;
    }

    final usesTests =
        (Utils.getPubSpecValue(targetDir, 'dev_dependencies.test') ??
                Utils.getPubSpecValue(targetDir, 'dependencies.test')) !=
            null;
    if (!usesTests) {
      logger.printSkipped('missing test in pubspec');
      return true;
    }

    final outputName = Utils.getIaCValue(dirPath, 'handler');
    final useCoverage = args['coverage'] ?? true;
    final relOutPath = '.dist/$outputName';

    final usesCover = useCoverage &&
        (Utils.getPubSpecValue(targetDir, 'dev_dependencies.coverage') ??
                Utils.getPubSpecValue(targetDir, 'dependencies.coverage')) !=
            null;

    final List<String> dartArgs = [
      'run',
      'test',
      '--chain-stack-traces',
      ...(usesCover ? ['--coverage="coverage"'] : []),
    ];
    final pRes = Process.runSync('dart', dartArgs, workingDirectory: dirPath);

    return Utils.handleProcessResult(pRes, logger, '          ', (code) {
      final outputFile = File(relOutPath);
      final success = code == 0 && outputFile.existsSync();
      if (success) Utils.chmod('+x', relOutPath);
    });
  }
}
