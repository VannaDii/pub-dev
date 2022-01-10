import 'dart:io';
import 'dart:convert';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;

import 'base.dart';
import '../logger.dart';

class AggregateCommand extends DfatCommand {
  @override
  final name = "aggregate";

  @override
  final description = "Performs the DFAT deployment aggregation routine.";

  @override
  String get category => 'Granular';

  final _lambdaZipMatcher =
      RegExp(r"^.*/\.dist/.*\.zip$", caseSensitive: false, dotAll: true);

  AggregateCommand(Logger logger) : super(logger: logger, tools: ['git']) {
    var workDir = Directory.current.path;
    var distDir = path.join(workDir, '.dist');

    argParser
      ..addOption(
        'root',
        abbr: 'r',
        defaultsTo: path.relative(workDir, from: workDir),
        help: "The root path to process. Should be your workspace root.",
      )
      ..addOption(
        'dist',
        abbr: 'd',
        defaultsTo: path.relative(distDir, from: workDir),
        help: "The output path for distribution aggregation.",
      );
  }

  @override
  bool run() {
    logger.header("Aggregate");

    final args = argResults!;
    final String rootDir = getFinalDir(args['root']);
    final String distDir = getFinalDir(args['dist']);
    final tfVarsMap = <String, dynamic>{
      "shared_config": <String, dynamic>{},
      "lambda_configs": <String, dynamic>{},
    };

    if (!Directory(rootDir).existsSync()) throw ArgumentError.notNull('input');
    if (Directory(distDir).existsSync()) {
      Directory(distDir).deleteSync(recursive: true);
    }
    Directory(distDir).createSync(recursive: true);

    final zips =
        findFiles(rootDir, subPath: 'lambdas', matcher: _lambdaZipMatcher);
    logger.printLine(
        "   📥 Received ${zips.map((e) => path.basename(e.path).green()).join(', ')}");

    for (var zipFile in zips) {
      logger.printFixed("   🚀 Copying ${path.basename(zipFile.path).green()}");
      zipFile.copySync(path.join(distDir, path.basename(zipFile.path)));
      logger.printDone();
    }

    logger.printFixed("   🔩 Merging IaC definitions");
    for (var jsonFile in findFiles(rootDir, matcher: iacJsonMatcher)) {
      final isLambda = jsonFile.path.contains('/lambdas/');
      final name = path.basename(jsonFile.parent.path);
      Map<String, dynamic> iac = jsonDecode(jsonFile.readAsStringSync());
      iac.remove(r"$schema");
      if (isLambda) {
        tfVarsMap['lambda_configs'][name] = iac;
      } else {
        tfVarsMap['shared_config'] = iac;
      }
    }
    File(path.join(distDir, 'iac.auto.tfvars.json'))
        .writeAsStringSync(jsonEncode(tfVarsMap));
    logger.printDone();

    logger.printFixed("   📝 Noting IaC Hash");
    File(path.join(distDir, 'iac.hash')).writeAsStringSync(getGitHash(rootDir));
    logger.printDone();

    logger.footer("Aggregate");

    return true;
  }
}
