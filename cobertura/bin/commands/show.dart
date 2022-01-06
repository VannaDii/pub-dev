import 'dart:io';
import 'dart:math' show max;

import 'package:cobertura/models.dart';
import 'package:path/path.dart';
import 'package:args/command_runner.dart';
import 'package:cobertura/cobertura.dart';

enum PadStyle { left, right, balanced }

class ShowCommand extends Command {
  @override
  final name = "show";

  @override
  final description = "Writes a console formatted report from LCOV to stdout";

  ShowCommand() {
    var workDir = Directory.current.path;
    var coverageDir = join(workDir, 'coverage');

    argParser.addOption(
      'input',
      abbr: 'i',
      defaultsTo: relative(join(coverageDir, 'lcov.info'), from: workDir),
      help: "The input file to display.",
    );
  }

  String _pad(Object value, [int amount = 8, PadStyle where = PadStyle.right]) {
    var stringValue = value is String ? value : value.toString();
    switch (where) {
      case PadStyle.left:
        return stringValue.padLeft(amount);
      case PadStyle.right:
        return stringValue.padRight(amount);
      default:
        return stringValue.padLeft(amount).padRight(amount);
    }
  }

  num _avg<T>(Iterable<T> values, num Function(num, T) reducer) {
    return values.fold<num>(0, reducer) / values.length;
  }

  @override
  void run() {
    var args = argResults!;
    var inputFilePath = normalize(absolute(args['input']));
    var results = parseLcov(filePath: inputFilePath);
    var l0 = results.records.fold<int>(0, (p, c) => max(p, c.file.length)) + 4;

    print("""\n
Date: ${results.timestamp.toIso8601String()}
From: $inputFilePath\n
${_pad('Filename', l0)}${_pad('Stmts')}${_pad('Miss')}${_pad('Cover', 10)}${_pad('Missing')}
${results.records.map((r) => """
${_pad(r.file, l0)}${_pad(r.statements)}${_pad(r.misses)}${_pad('${(r.coverage * 100).toStringAsFixed(2)}%', 10)}${_pad(r.gap)}
""").join()}${_pad('Total', l0)}${_pad(results.records.fold<int>(0, (p, c) => p + c.statements))}${_pad(results.records.fold<int>(0, (p, c) => p + c.misses))}${_pad('${(_avg<Record>(results.records, (p, c) => p + c.coverage) * 100).toStringAsFixed(2)}%', 10)}${_pad(results.records.fold<double>(0, (p, c) => p + c.gap))}
""");
  }
}
