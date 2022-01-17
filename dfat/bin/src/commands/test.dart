import 'dart:collection';
import 'dart:io';

import 'package:path/path.dart' as path;

import 'tasks/all.dart';

class TestCommand extends DfatCommand {
  @override
  final name = "test";

  @override
  final description =
      "Runs dart run test with coverage (if available). Can produce GCOV, LCOV or Cobertura.";

  @override
  String get category => 'General';

  TestCommand(Logger logger) : super(logger: logger, tools: []) {
    var workDir = Directory.current.path;

    argParser
      ..addOption(
        'root',
        abbr: 'r',
        defaultsTo: path.relative(workDir, from: workDir),
        help: "The root path to process. Should be your workspace root.",
      )
      ..addOption('style',
          abbr: 's',
          allowed: ['gcov', 'lcov'],
          defaultsTo: 'gcov',
          help: "If coverage is used, determines the output type.")
      ..addFlag(
        'coverage',
        abbr: 'c',
        defaultsTo: true,
        help: "Indicates if code coverage should be calculated or not.",
      );
  }

  @override
  List<TaskCommand> revealTasks() => [DartTestTask(this, logger)];

  @override
  Future<bool> run() async {
    final closer = logger.header("Test");
    final covStyle = argResults!['style'];
    final wantsCoverage = argResults!['coverage'];
    final targets = Queue<String>.from(
        await Utils.findFiles(matcher: RegExps.filePubSpecYaml).toList().then(
            (files) => files
                .where((e) =>
                    e.parent.path.endsWith('shared') ||
                    e.parent.parent.path.endsWith('lambdas'))
                .map((e) => e.parent.path)
                .toList()));
    useSequence(targets.map((e) => DartTestTask(this, logger)).toList());
    final result = await runSequenceSame((taskName) {
      return {
        'style': covStyle,
        'target': targets.removeFirst(),
        'coverage': wantsCoverage,
      };
    });
    return closer(result);
  }
}
