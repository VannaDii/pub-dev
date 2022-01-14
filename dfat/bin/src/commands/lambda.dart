import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;

import '../utils.dart';
import 'base.dart';
import '../logger.dart';

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

  String _getIaCValue(String lambdaDir, String key) {
    return (jsonDecode(
            File(path.join(lambdaDir, 'iac.json')).readAsStringSync())
        as Map<String, dynamic>)[key];
  }

  bool _compileLambda(String lambdaDir) {
    final lambdaName = path.basename(lambdaDir);
    logger.printFixed('     💪 Compiling ${lambdaName.green()}');

    final distPath = path.join(lambdaDir, '.dist');
    if (!Directory(distPath).existsSync()) Directory(distPath).createSync();

    final outputName = _getIaCValue(lambdaDir, 'handler');
    final args = ['compile', 'exe', 'main.dart', '-o', '.dist/$outputName'];
    final result = Process.runSync('dart', args, workingDirectory: lambdaDir);

    return handleProcessResult(result, logger, '          ', () {
      final outputFile = File('.dist/$outputName');
      if (outputFile.existsSync()) {
        Utils.chmod('+x', '.dist/$outputName');
      }
    });
  }

  bool _packLambda(String lambdaDir) {
    final lambdaName = path.basename(lambdaDir);
    final outputName = 'lambda_$lambdaName.zip';
    final inputName = path.join(lambdaDir, '.dist/bootstrap');
    final outZipPath = path.join(lambdaDir, '.dist', outputName);
    logger.printFixed('     📦 Packing ${lambdaName.green()}');

    try {
      ZipFileEncoder()
        ..create(outZipPath)
        ..addFile(File(inputName))
        ..close();
    } catch (_) {
      logger.printFailed();
      return false;
    }

    logger.printDone();
    return true;
  }

  @override
  bool run() {
    logger.header("Lambdas");

    bool result = true;
    final args = argResults!;
    final String rootDir = getFinalDir(args['root']);

    logger.printFixed('   🔎 Finding lambdas');
    final String lambdasPath = path.join(rootDir, 'lambdas');
    final lambdaRoots = Directory(lambdasPath)
        .listSync(recursive: false, followLinks: false)
        .whereType<Directory>()
        .map((e) => e.path)
        .toList(growable: false);
    logger.printDone();

    final indent = '     ';
    for (var lambdaDir in lambdaRoots) {
      var lambdaName = path.basename(lambdaDir);
      final closer =
          logger.printBlock("ƛ Handling ${lambdaName.green()}", '   ');
      try {
        if (result) result = cleanDir(lambdaDir, logger, indent);
        if (result) result = pubGet(lambdaDir, logger, indent);
        if (result) result = _compileLambda(lambdaDir);
        if (result) result = _packLambda(lambdaDir);
        closer(true);
      } catch (_) {
        closer(false);
      }
    }

    logger.footer("Lambdas");

    return result;
  }
}
