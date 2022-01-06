import 'dart:io';

import 'package:xml/xml.dart' as xml;
import 'package:path/path.dart' as path;

import 'enums.dart';
import 'models.dart';

const _endOfRecordLcov = 'end_of_record';

_isEor(String data) => data == _endOfRecordLcov;

AnalysisResult _parseLcov({required String filePath}) {
  File file = File(filePath);
  if (!file.existsSync()) throw FileSystemException("File not found", filePath);

  var records = <Record>[];
  var record = Record.empty();
  var timestamp = file.statSync().modified;
  for (var line in file.readAsLinesSync()) {
    if (line.isEmpty) {
      break;
    } else if (_isEor(line)) {
      records.add(record);
      record = Record.empty();
    } else {
      record = _transform(record, line);
    }
  }
  return AnalysisResult(records: records, timestamp: timestamp);
}

Record _transform(Record record, String line) {
  var lineData = LcovLine.fromLine(line);
  switch (lineData.type) {
    case LcovDataType.TN:
      {
        return record.update(title: lineData.data[0]);
      }
    case LcovDataType.SF:
      {
        return record.update(file: lineData.data[0]);
      }
    case LcovDataType.FN:
      {
        return record.update(
            functions: record.functions.update(details: [
          ...record.functions.details,
          Funcs(
            name: lineData.data[1].toString(),
            line: int.parse(lineData.data[0]),
          )
        ]));
      }
    case LcovDataType.FNDA:
      {
        final hit = lineData.data[0];
        final name = lineData.data[1].toString();
        var changed = record.functions.details
            .where((fn) => fn.name == name)
            .map((fn) => fn.update(hit: int.parse(hit)));
        var others = record.functions.details.where((fn) => fn.name != name);
        return record.update(
            functions:
                record.functions.update(details: [...others, ...changed]));
      }
    case LcovDataType.FNF:
      {
        return record.update(
            functions:
                record.functions.update(found: int.parse(lineData.data[0])));
      }
    case LcovDataType.FNH:
      {
        return record.update(
            functions:
                record.functions.update(hit: int.parse(lineData.data[0])));
      }
    case LcovDataType.BRDA:
      {
        final ln = int.parse(lineData.data[0]);
        final block = int.parse(lineData.data[1]);
        final branch = int.parse(lineData.data[2]);
        final taken = lineData.data[3].toString();
        return record.update(
            branches: record.branches.update(details: [
          ...record.branches.details,
          Branches(
            line: ln,
            block: block,
            branch: branch,
            taken: taken == '-' ? 0 : int.parse(taken),
          )
        ]));
      }
    case LcovDataType.BRF:
      {
        return record.update(
            branches:
                record.branches.update(found: int.parse(lineData.data[0])));
      }
    case LcovDataType.BRH:
      {
        return record.update(
            branches: record.branches.update(hit: int.parse(lineData.data[0])));
      }
    case LcovDataType.DA:
      {
        final ln = int.parse(lineData.data[0]);
        final hit = int.parse(lineData.data[1]);
        return record.update(
            lines: record.lines.update(
                details: [...record.lines.details, Lines(line: ln, hit: hit)]));
      }
    case LcovDataType.LF:
      {
        return record.update(
            lines: record.lines.update(found: int.parse(lineData.data[0])));
      }
    case LcovDataType.LH:
      {
        return record.update(
            lines: record.lines.update(hit: int.parse(lineData.data[0])));
      }
    default:
      return record;
  }
}

void _writeCobertura({
  required AnalysisResult results,
  required String name,
  required String version,
  required String outFilePath,
}) {
  var lineHits = results.records.fold<int>(0, (p, c) => p + c.lines.hit);
  var lineFinds = results.records.fold<int>(0, (p, c) => p + c.lines.found);
  var lineRate = lineFinds > 0 ? (lineHits / lineFinds).round() : lineFinds;

  var branchHits = results.records.fold<int>(0, (p, c) => p + c.branches.hit);
  var branchFinds =
      results.records.fold<int>(0, (p, c) => p + c.branches.found);
  var branchRate =
      branchFinds > 0 ? (branchHits / branchFinds).round() : branchFinds;

  var epochTimeStamp = (DateTime.now().millisecondsSinceEpoch / 1000).round();

  var builder = xml.XmlBuilder();
  builder
    ..declaration(encoding: 'UTF-8')
    ..xml(
        '<!DOCTYPE coverage SYSTEM "http://cobertura.sourceforge.net/xml/coverage-04.dtd">');
  builder.element("coverage", attributes: {
    "lines-valid": lineFinds.toString(),
    "lines-covered": lineHits.toString(),
    "line-rate": lineRate.toString(),
    "branches-valid": branchFinds.toString(),
    "branches-covered": branchHits.toString(),
    "branch-rate": branchRate.toString(),
    "timestamp": epochTimeStamp.toString(),
    "complexity": "0",
    "version": version
  }, nest: () {
    builder
      ..element("sources", nest: () {
        for (var r in results.records) {
          builder.element("source", nest: r.file);
        }
      })
      ..element("packages", nest: () {
        builder.element("package", attributes: {
          "name": name,
          "line-rate": lineRate.toString(),
          "branch-rate": branchRate.toString()
        }, nest: () {
          builder.element("classes", nest: () {
            for (var r in results.records) {
              var fileName = r.file;
              var className = path.basenameWithoutExtension(r.file);

              var classLineRate = r.lines.found > 0
                  ? (r.lines.hit / r.lines.found).round()
                  : r.lines.found;
              var classBranchRate = r.branches.found > 0
                  ? (r.branches.hit / r.branches.found).round()
                  : r.branches.found;

              builder.element("class", attributes: {
                "name": className,
                "filename": fileName,
                "line-rate": classLineRate.toString(),
                "branch-rate": classBranchRate.toString()
              }, nest: () {
                builder.element("lines", nest: () {
                  for (var line in r.lines.details) {
                    builder.element("line", attributes: {
                      "number": line.line.toString(),
                      "hits": line.hit.toString(),
                      "branch": "false"
                    });
                  }
                });
              });
            }
          });
        });
      });
  });
  File(outFilePath)
      .writeAsStringSync(builder.buildDocument().toXmlString(pretty: true));
}

/// Transforms the `LCOV` data from [inputFilePath] into `Cobertura` data
/// in the [outputFilePath], adding the [name] and [version] `XML` attributes.
void transform({
  required String name,
  required String version,
  required String inputFilePath,
  required String outputFilePath,
}) {
  var results = _parseLcov(filePath: inputFilePath);
  _writeCobertura(
      results: results,
      name: name,
      version: version,
      outFilePath: outputFilePath);
}
