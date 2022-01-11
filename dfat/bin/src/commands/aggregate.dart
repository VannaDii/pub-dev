import 'dart:io';
import 'dart:convert';

import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';

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
    final String iacDir = pathFromRoot(KnownPaths.iac, rootDir);

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

    final iacFiles = findFiles(rootDir, matcher: iacJsonMatcher).toList();
    final sharedIacFile =
        iacFiles.firstWhereOrNull((f) => f.path.contains('/shared/'));
    final Map<String, dynamic> sharedIaC = sharedIacFile != null
        ? jsonDecode(sharedIacFile.readAsStringSync())
        : <String, dynamic>{};
    if (sharedIacFile != null) {
      iacFiles.remove(sharedIacFile);
      sharedIaC.remove(r"$schema");
    }

    final tfVarsMap = <String, dynamic>{
      ...sharedIaC,
      "lambda_configs": <String, dynamic>{},
    };
    logger.printFixed("   🔩 Merging IaC definitions");
    for (var jsonFile in iacFiles) {
      final isLambda = jsonFile.path.contains('/lambdas/');
      if (!isLambda) continue; // We're only here for lambda configs

      final name = path.basename(jsonFile.parent.path);
      Map<String, dynamic> iac = jsonDecode(jsonFile.readAsStringSync());
      iac.remove(r"$schema");
      tfVarsMap['lambda_configs'][name] = iac;
    }
    File(path.join(distDir, 'iac.auto.tfvars.json'))
        .writeAsStringSync(jsonEncode(tfVarsMap));

    // If there's an IaC directory, put a copy there for convenience.
    if (Directory(iacDir).existsSync()) {
      File(path.join(iacDir, 'iac.auto.tfvars.json'))
          .writeAsStringSync(jsonEncode(tfVarsMap));
    }

    logger.printDone();

    logger.printFixed("   📝 Noting IaC Hash");
    File(path.join(distDir, 'iac.hash')).writeAsStringSync(getGitHash(rootDir));
    logger.printDone();

    logger.footer("Aggregate");

    return true;
  }
}
