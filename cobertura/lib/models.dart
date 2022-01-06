import 'package:meta/meta.dart';

import 'enums.dart';

class LcovLine {
  const LcovLine(this.type, this.data);

  final LcovDataType type;
  final List<String> data;

  factory LcovLine.fromLine(String line) {
    final parts = line.split(':');
    final type = enumFromString(LcovDataType.values, parts.first);
    return LcovLine(type, parts.last.split(','));
  }
}

@immutable
class Lines {
  const Lines({
    this.hit = 0,
    this.line = 0,
  });

  final int hit;
  final int line;
}

@immutable
class LinesData {
  const LinesData({
    this.hit = 0,
    this.found = 0,
    this.details = const [],
  });

  final int hit;
  final int found;
  final List<Lines> details;

  LinesData update({int? found, int? hit, List<Lines>? details}) {
    return LinesData(
      hit: hit ?? this.hit,
      found: found ?? this.found,
      details: details ?? this.details,
    );
  }
}

@immutable
class Funcs {
  const Funcs({
    this.hit = 0,
    this.line = 0,
    this.name = '',
  });

  final int hit;
  final int line;
  final String name;

  Funcs update({int? line, int? hit, String? name}) {
    return Funcs(
      hit: hit ?? this.hit,
      line: line ?? this.line,
      name: name ?? this.name,
    );
  }
}

@immutable
class FuncsData {
  const FuncsData({
    this.hit = 0,
    this.found = 0,
    this.details = const [],
  });

  final int found;
  final int hit;
  final List<Funcs> details;

  FuncsData update({int? found, int? hit, List<Funcs>? details}) {
    return FuncsData(
      hit: hit ?? this.hit,
      found: found ?? this.found,
      details: details ?? this.details,
    );
  }
}

@immutable
class Branches {
  const Branches({
    this.line = 0,
    this.block = 0,
    this.taken = 0,
    this.branch = 0,
  });

  final int line;
  final int block;
  final int taken;
  final int branch;
}

@immutable
class BranchesData {
  const BranchesData({
    this.hit = 0,
    this.found = 0,
    this.details = const [],
  });

  final int hit;
  final int found;
  final List<Branches> details;

  BranchesData update({int? found, int? hit, List<Branches>? details}) {
    return BranchesData(
      hit: hit ?? this.hit,
      found: found ?? this.found,
      details: details ?? this.details,
    );
  }
}

@immutable
class Record {
  const Record({
    this.file = '',
    this.title = '',
    this.lines = const LinesData(details: []),
    this.functions = const FuncsData(details: []),
    this.branches = const BranchesData(details: []),
  });

  final String file;
  final String title;
  final LinesData lines;
  final FuncsData functions;
  final BranchesData branches;

  factory Record.empty() {
    return Record(
      file: '',
      title: '',
      lines: LinesData(details: []),
      functions: FuncsData(details: []),
      branches: BranchesData(details: []),
    );
  }

  Record update({
    String? file,
    String? title,
    LinesData? lines,
    FuncsData? functions,
    BranchesData? branches,
  }) {
    return Record(
      file: file ?? this.file,
      title: title ?? this.title,
      lines: lines ?? this.lines,
      functions: functions ?? this.functions,
      branches: branches ?? this.branches,
    );
  }
}

class AnalysisResult {
  const AnalysisResult({required this.timestamp, required this.records});

  final DateTime timestamp;
  final List<Record> records;
}
