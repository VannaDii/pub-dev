import 'dart:async';

import 'dart:convert';

typedef LogFunc = void Function(String message);

class LogPipe extends StreamConsumer<List<int>> {
  LogPipe(this.logger);

  final LogFunc logger;

  @override
  Future addStream(Stream<List<int>> stream) {
    return stream.listen(
      (event) {
        if (event.isNotEmpty) {
          logger(utf8.decode(event));
        }
      },
    ).asFuture(true);
  }

  @override
  Future close() {
    return Future.value(true);
  }
}
