import 'dart:io';

import 'package:tint/tint.dart';

import 'log_pipe.dart';

typedef MatchedClosure = T Function<T>(T result);

typedef SuccessClosure = bool Function(bool success, [String? reason]);

class BlockLogger extends Logger {
  BlockLogger(this.message);

  String? memo;
  int _linesPrinted = 0;

  final String message;

  bool close(bool result) {
    if (result) {
      for (var i = -1; i < _linesPrinted; i++) {
        stdout.write('\x1B[0K\x1B[1A\x1B[0K');
      }
    }
    return super.printFixed(message)(result, memo);
  }

  @override
  String useMemo(String message) {
    memo = message;
    return memo!;
  }

  @override
  void printLine([String message = '']) {
    _linesPrinted++;
    super.printLine(message);
  }
}

class Logger {
  final _padding = "....................................................";
  _getPad(int length) {
    return length > _padding.length ? '' : _padding.substring(length);
  }

  String useMemo(String message) {
    throw UnimplementedError('only supported in BlockLogger');
  }

  void printDone([String? message = '']) {
    printLine("✅${message == null || message.isEmpty ? '' : ' $message'}");
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
    printLine("🪣 (cached)");
  }

  void printSkipped([String? reason = '']) {
    printLine("🔪 (skipped) $reason");
  }

  void printEnd([String? tag]) {
    printLine("$tag");
  }

  MatchedClosure header([String? tag]) {
    printRaw("🤖 Processing ${(tag ?? '').green()}\n");
    return <T>(result) {
      footer(tag);
      return result;
    };
  }

  BlockLogger headerBlock([String? tag]) {
    final message = "🤖 Processing ${(tag ?? '').green()}";
    printRaw("$message\n");
    return BlockLogger(message);
  }

  void footer([String? tag]) {
    printRaw("🏁 Finished ${(tag ?? '').green()}\n");
  }

  SuccessClosure printFixed(String message, [String indent = '']) {
    final visLen = message.strip().length;
    printRaw("$indent$message${_getPad(visLen + indent.length)}");
    return (bool success, [String? reason]) {
      if (success) {
        printDone(reason);
      } else {
        printFailed(reason);
      }
      return success;
    };
  }

  void printLine([String message = '']) {
    printRaw("$message\n");
  }

  void printRaw(String message) {
    stdout.write(message);
  }

  void printPassThru(String message, [String indent = '']) {
    if (message.isEmpty) return;
    final lfp = RegExp(r'\n|\r');
    printLine(indent +
        message.trim().split(lfp).map((s) => s.trim()).join('\n$indent'));
  }

  SuccessClosure printBlock(String message, [String indent = '']) {
    final baseMessage = "$indent${message.trim()}";
    printLine("$baseMessage =>");
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

  BlockLogger collapsibleBlock(String message, [String indent = '']) {
    final baseMessage = "$indent${message.trim()}";
    printLine("$baseMessage =>");
    return BlockLogger(baseMessage);
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
