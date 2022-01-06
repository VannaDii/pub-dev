import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:path/path.dart';
import 'package:args/command_runner.dart';

import '../cobertura.dart';

class ConvertCommand extends Command {
  @override
  final name = "convert";

  @override
  final description = "Converts LCOV data files to Cobertura format";

  ConvertCommand() {
    var workDir = Directory.current.path;
    var coverageDir = join(workDir, 'coverage');

    argParser
      ..addOption(
        'input',
        abbr: 'i',
        defaultsTo: relative(join(coverageDir, 'lcov.info'), from: workDir),
        help: "The input file to process.",
      )
      ..addOption(
        'output',
        abbr: 'o',
        defaultsTo: relative(join(coverageDir, 'cobertura.xml'), from: workDir),
        help: "The output file to produce.",
      )
      ..addOption(
        'pubspec',
        abbr: 'p',
        defaultsTo: relative(join(workDir, 'pubspec.yaml'), from: workDir),
        help: "The pubspec.yaml file path of the analyzed package.",
      )
      ..addOption(
        'name',
        abbr: 'n',
        defaultsTo: null,
        help:
            "The name of the analyzed package. If provided, overrides the version found in pubspec.yaml\n(defaults to pubspec['name'])",
      )
      ..addOption(
        'version',
        abbr: 'v',
        defaultsTo: null,
        help:
            "The version of the analyzed package. If provided, overrides the version found in pubspec.yaml\n(defaults to pubspec['version'])",
      );
  }

  @override
  void run() {
    var args = argResults!;
    String? specName, specVersion;
    String pubSpecFilePath = normalize(absolute(args['pubspec']));
    if (pubSpecFilePath.isNotEmpty && File(pubSpecFilePath).existsSync()) {
      var spec = loadYaml(File(pubSpecFilePath).readAsStringSync(),
          sourceUrl: Uri.file(pubSpecFilePath));
      specName = spec['name'];
      specVersion = spec['version'];
    }

    String inputFilePath = normalize(absolute(args['input']));
    String outputFilePath = normalize(absolute(args['output']));
    String packageName = (args['name'] ?? specName);
    String packageVersion = (args['version'] ?? specVersion);

    transform(
      name: packageName,
      version: packageVersion,
      outputFilePath: outputFilePath,
      inputFilePath: inputFilePath,
    );
  }
}
