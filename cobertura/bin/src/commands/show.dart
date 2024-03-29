import 'dart:io';
import 'dart:math' show max;

import 'package:path/path.dart';
import 'package:tint/tint.dart';
import 'package:args/command_runner.dart';
import 'package:collection/collection.dart';
import 'package:cli_badges/cli_badges.dart';

import '../models.dart';
import '../cobertura.dart';

enum PadStyle { left, right, balanced }

class ShowCommand extends Command {
  @override
  final name = "show";

  @override
  final description = "Writes a console formatted report from LCOV to stdout";

  String _wH(String message) {
    if (_noColor) return message;
    return message.bold().brightWhite();
  }

  String _uV(String message) {
    if (_noColor) return message;
    return message.italic().brightWhite();
  }

  String _dD(String message) {
    if (_noColor) return message;
    return message.bold().dim();
  }

  String _wS(num value, String Function(num)? toString) {
    var stringify = toString ?? (v) => v.toString();
    if (_noColor) return stringify(value);
    if (value <= 20) {
      return stringify(value).red();
    } else if (value > 20 && value < 70) {
      return stringify(value).yellow();
    } else {
      return stringify(value).green();
    }
  }

  ShowCommand() {
    var workDir = Directory.current.path;
    var coverageDir = join(workDir, 'coverage');

    argParser
      ..addOption(
        'input',
        abbr: 'i',
        defaultsTo: relative(join(coverageDir, 'lcov.info'), from: workDir),
        help: "The input file to display.",
      )
      ..addFlag(
        "no-color",
        abbr: 'c',
        negatable: false,
        defaultsTo: false,
        help: "Disable colorization of console output.",
      )
      ..addFlag(
        "value-only",
        abbr: 'v',
        negatable: false,
        defaultsTo: false,
        help: "Calculates and prints the total coverage value only. "
            "Overrides with badge-only.",
      )
      ..addFlag(
        "badge-only",
        abbr: 'b',
        negatable: false,
        defaultsTo: false,
        help: "Calculates and prints the total coverage value only as a badge. "
            "Conflicts with value-only.",
      );
  }

  String get _input => argResults?['input'];

  bool get _noColor => argResults?['no-color'];

  bool get _valueOnly => argResults?['value-only'];

  bool get _badgeOnly => argResults?['badge-only'];

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

  String? _root(Iterable<String> paths) {
    for (var i = 0; i < double.maxFinite; i++) {
      if (paths.firstWhereOrNull(
              (p) => p.length <= i || p[i] != paths.first[i]) !=
          null) {
        return paths.first.substring(0, i);
      }
    }
    throw Exception('This should be impossible!');
  }

  void _printMeta(
      {required DateTime time,
      required String inputPath,
      required String rootPath}) {
    print("");
    print(
        "${_wH("Date:")} ${_uV(time.toIso8601String().split('T').join(' '))}");
    print("${_wH("From:")} ${_uV(inputPath)}");
    print("${_wH("With:")} ${_uV(rootPath)}");
    print("");
  }

  void _printHeaders(int col0len) {
    print(_wH(
        "${_pad('Filename', col0len)}${_pad('Stmts')}${_pad('Miss')}${_pad('Cover', 10)}${_pad('Missing')}"));
  }

  void _printRecord(int col0len, Record r) {
    print(
        "${_uV(_pad(r.file, col0len))}${_pad(r.statements)}${_pad(r.misses)}${_wS(r.coverage * 100, (v) => _pad('${v.toStringAsFixed(2)}%', 10))}${_pad(r.gap)}");
  }

  void _printRecords(int col0len, List<Record> records) {
    for (var r in records) {
      _printRecord(col0len, r);
    }
  }

  double _calcTotal(Iterable<Record> records) {
    final hits = records.fold<int>(0, (v, r) => v + r.lines.hit);
    final found = records.fold<int>(0, (v, r) => v + r.lines.found);
    final total = hits / found;
    return total;
  }

  void _printTotal(int col0len, List<Record> records) {
    final total = _calcTotal(records);
    print(
        "${_wH(_pad('Total', col0len))}${_pad(records.fold<int>(0, (p, c) => p + c.statements))}${_pad(records.fold<int>(0, (p, c) => p + c.misses))}${_wS((total * 100), (v) => _pad("${v.toStringAsFixed(2)}%", 10))}${_pad(records.fold<double>(0, (p, c) => p + c.gap))}");
  }

  void _printDivider(int col0len) {
    // This creates a visual divider above the 'total' line
    // First column length + fixed width * column count
    print(_dD(''.padRight(col0len + (8 * 4.25).round(), '-')));
  }

  Future<void> _printBadge(Iterable<Record> records) async {
    if (_noColor) return;

    final total = _calcTotal(records);
    final value = (total * 100).round();
    final theme = value <= 20
        ? BadgeTheme.red
        : value < 70
            ? BadgeTheme.yellow
            : BadgeTheme.green;
    final badge = Badge(label: 'covered', message: '$value%', theme: theme);

    final badger = Badge.inline([badge]);

    print(badger);
    await stdout.flush();
  }

  Future<void> _printTotalValue(Iterable<Record> records) async {
    final total = _calcTotal(records);
    final value = (total * 100).round();

    print(value);
    await stdout.flush();
  }

  @override
  void run() async {
    var inputFilePath = normalize(absolute(_input));
    var results = parseLcov(filePath: inputFilePath);
    var records = results.records;
    var rootPath = _root(records.map((p) => p.file));
    if (rootPath != null) {
      records = records
          .map((r) => r.update(file: relative(r.file, from: rootPath)))
          .toList();
    }

    if (_valueOnly) {
      await _printTotalValue(records);
      exit(0);
    }

    if (_badgeOnly) {
      await _printBadge(records);
      exit(0);
    }

    var col0len = records.fold<int>(0, (p, c) => max(p, c.file.length)) + 4;

    _printMeta(
        time: results.timestamp,
        inputPath: inputFilePath,
        rootPath: rootPath ?? '/');
    _printHeaders(col0len);
    _printDivider(col0len);
    _printRecords(col0len, records);
    _printDivider(col0len);
    _printTotal(col0len, records);
    print('');
    _printBadge(records);
  }
}
