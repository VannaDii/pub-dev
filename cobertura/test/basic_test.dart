import 'dart:io';

import 'package:test/test.dart';

final testDir = Directory.current.path;

String formatOutput(int value) {
  return "\x1B[37m\x1B[100;1m covered \x1B[0m\x1B[0m\x1B[30m\x1B[42m $value% \x1B[0m\x1B[0m";
}

void main() {
  group('Basic Tests', () {
    test('Generates a Badge As Expected', () {
      final args = ["cobertura", "show", "-b", "-i", "$testDir/test/lcov.info"];
      final result = Process.runSync("dart", ["run", ...args]);
      final line = result.stdout
          .toString()
          .split("\n")
          .where((e) => e.trim().isNotEmpty)
          .join("\n");

      final expectation = formatOutput(100);
      expect(line, equals(expectation));
    });
  });
}
