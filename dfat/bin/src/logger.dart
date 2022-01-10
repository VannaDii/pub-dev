import 'dart:io';

import 'log_pipe.dart';

class Logger {
  final _ansiPattern = RegExp([
    '[\\u001B\\u009B][[\\]()#;?]*(?:(?:(?:[a-zA-Z\\d]*(?:;[-a-zA-Z\\d\\/#&.:=?%@~_]*)*)?\\u0007)',
    '(?:(?:\\d{1,4}(?:;\\d{0,4})*)?[\\dA-PR-TZcf-ntqry=><~]))'
  ].join('|'));

  final _padding = "....................................................";
  _getPad(int length) {
    return length > _padding.length ? '' : _padding.substring(length);
  }

  void printDone() {
    printRaw("✅\n");
  }

  void printFailed([String? reason = '', String indent = '']) {
    printRaw("$indent🔴 $reason\n");
  }

  void printWarn([String? reason = '', String indent = '']) {
    printRaw("$indent🟡 $reason\n");
  }

  void printInfo([String? reason = '', String indent = '']) {
    printRaw("$indent🔵 $reason\n");
  }

  void printCached() {
    printRaw("🪣 (cached)\n");
  }

  void printSkipped([String? reason = '']) {
    printRaw("🔪 (skipped) $reason\n");
  }

  void printEnd([String? tag]) {
    printRaw("$tag\n");
  }

  void header([String? tag]) {
    printRaw("🤖 Processing '$tag'\n");
  }

  void footer([String? tag]) {
    printRaw("🏁 Finished '$tag'\n\n");
  }

  void printFixed(String message) {
    final visLen = message.replaceAll(_ansiPattern, '').length;
    printRaw("$message${_getPad(visLen)}");
  }

  void printLine(String message) {
    stdout.write("$message\n");
  }

  void printRaw(String message) {
    stdout.write(message);
  }

  void printPassThru(String message, [String indent = '']) {
    if (message.isEmpty) return;
    print(indent + message.trim().split('\n').join('\n$indent'));
  }

  void Function(bool success) printBlock(String message, [String indent = '']) {
    print("$indent${message.trim()} =>");
    return (bool success) {
      printFixed("$indent${message.trim()}");
      if (success) {
        printDone();
      } else {
        printFailed();
      }
    };
  }

  LogPipe getPipe([String indent = '']) {
    return LogPipe(((message) => printPassThru(message, indent)));
  }

  LogPipe getPipeErr([String indent = '']) {
    return LogPipe(((message) => printPassThru(message, "$indent🔴 ")));
  }

  LogPipe getPipeOut([String indent = '']) {
    return LogPipe(((message) => printPassThru(message, "$indent🔵 ")));
  }
}
