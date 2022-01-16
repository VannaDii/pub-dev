import 'dart:io';

import 'package:tint/tint.dart';

import 'log_pipe.dart';

typedef MatchedClosure = T Function<T>(T result);

typedef SuccessClosure = bool Function(bool success, [String? reason]);

class Logger {
  final _padding = "....................................................";
  _getPad(int length) {
    return length > _padding.length ? '' : _padding.substring(length);
  }

  void printDone() {
    printRaw("✅\n");
  }

  void printFailed([String? reason = '', String indent = '']) {
    printLine("$indent🔴 ${reason ?? ''}".trimRight());
  }

  void printWarn([String? reason = '', String indent = '']) {
    printLine("$indent🟡 ${reason ?? ''}".trimRight());
  }

  void printInfo([String? reason = '', String indent = '']) {
    printLine("$indent🔵 ${reason ?? ''}".trimRight());
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

  MatchedClosure header([String? tag]) {
    printRaw("\n🤖 Processing ${(tag ?? '').green()}\n");
    return <T>(result) {
      footer(tag);
      return result;
    };
  }

  void footer([String? tag]) {
    printRaw("🏁 Finished ${(tag ?? '').green()}\n");
  }

  SuccessClosure printFixed(String message, [String indent = '']) {
    final visLen = message.strip().length;
    printRaw("$indent$message${_getPad(visLen + indent.length)}");
    return (bool success, [String? reason]) {
      if (success) {
        printDone();
      } else {
        printFailed(reason);
      }
      return success;
    };
  }

  void printLine([String message = '']) {
    stdout.write("$message\n");
  }

  void printRaw(String message) {
    stdout.write(message);
  }

  void printPassThru(String message, [String indent = '']) {
    if (message.isEmpty) return;
    print(indent +
        message.trim().split('\n').map((s) => s.trim()).join('\n$indent'));
  }

  SuccessClosure printBlock(String message, [String indent = '']) {
    print("$indent${message.trim()} =>");
    return (bool success, [String? reason]) {
      printFixed("$indent${message.trim()}");
      if (success) {
        printDone();
      } else {
        printFailed(reason, indent);
      }
      return success;
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
