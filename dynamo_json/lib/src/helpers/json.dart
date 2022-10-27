import 'package:dynamo_json/src/helpers/dynamo.dart';

/// Extension methods for iterable [DynamoMeta] instances.
extension JsonExtensions on DynamoMeta {
  /// Indicates if the [dynamoType] is [DynamoType.unknown].
  bool get isDynamoUnknown => dynamoType == DynamoType.unknown;

  /// Wraps an expression (ex: `instance.foo`) for use in a `toJson` call.
  String wrapJsonTo(String expression) {
    final nullablePrefix = nullHandlerToOrEmpty(expression);
    final result = "$nullablePrefix{'${DynamoType.S.name}':"
        "jsonEncode($expression)}";
    return result;
  }

  /// Wraps an expression (ex: `json['foo']`) for use in a `fromJson` call.
  String wrapJsonFrom(String expression) {
    final nullablePrefix = nullHandlerFromOrEmpty(expression);
    final result = "${nullablePrefix}jsonDecode($expression['"
        "${DynamoType.S.name}'] as String) as $codeName";
    return result;
  }
}
