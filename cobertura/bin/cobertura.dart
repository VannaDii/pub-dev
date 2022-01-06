import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'package:cobertura/cobertura.dart';

void main(List<String> arguments) {
  var workDir = Directory.current.path;
  var parser = ArgParser(allowTrailingOptions: true, usageLineLength: 120)
    ..addOption(
      'input',
      abbr: 'i',
      defaultsTo: path.join(workDir, 'coverage', 'lcov.info'),
      help: "The input file to process.",
    )
    ..addOption(
      'output',
      abbr: 'o',
      defaultsTo: path.join(workDir, 'coverage', 'cobertura.xml'),
      help: "The output file to produce.",
    )
    ..addOption(
      'name',
      abbr: 'n',
      defaultsTo: null,
      help:
          "The name of the analyzed package. Typically the folder name. If provided, overrides the version found in pubspec.yaml",
    )
    ..addOption(
      'version',
      abbr: 'v',
      defaultsTo: null,
      help:
          "The version of the analyzed package. If provided, overrides the version found in pubspec.yaml",
    )
    ..addOption(
      'pub-spec',
      abbr: 'p',
      defaultsTo: path.join(workDir, 'pubspec.yaml'),
      help: "The pubspec.yaml file path of the analyzed package.",
    );
  var args = parser.parse(arguments);

  String? specName, specVersion;
  var pubSpecFilePath = args['pub-spec'].toString();
  if (pubSpecFilePath.isNotEmpty && File(pubSpecFilePath).existsSync()) {
    var spec = loadYaml(File(pubSpecFilePath).readAsStringSync(),
        sourceUrl: Uri.file(pubSpecFilePath));
    specName = spec['name'];
    specVersion = spec['version'];
  }

  String inputFilePath = args['input'];
  String outputFilePath = args['output'];
  String packageName = (args['name'] ?? specName);
  String packageVersion = (args['version'] ?? specVersion);

  transform(
    name: packageName,
    version: packageVersion,
    outputFilePath: outputFilePath,
    inputFilePath: inputFilePath,
  );
}
