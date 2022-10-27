import 'package:dynamo_json/src/helpers/dynamo.dart';
import 'package:dynamo_json/src/utils.dart';

/// Extension methods for iterable [DynamoMeta] instances.
extension DecoratedExtensions on DynamoMeta {
  /// Indicates if the [type] is decorated with `@DynamoJson()`.
  bool get isDecorated =>
      hasAnnotationNamed(type, 'DynamoJson') && hasToFromDynamoJson(type);

  /// Wraps an expression (ex: `instance.foo`) for use in a `toJson` call.
  String wrapDecoratedTo(String expression) {
    final nullablePrefix = nullHandlerToOrEmpty(expression);
    final result = "$nullablePrefix{'$dynamoTypeName': $expression$nullSuffix"
        ".toDynamoJson()}";
    return result;
  }

  /// Wraps an expression (ex: `json['foo']`) for use in a `fromJson` call.
  String wrapDecoratedFrom(String expression) {
    final nullablePrefix = nullHandlerFromOrEmpty(expression);
    final result = "$nullablePrefix$baseName.fromDynamoJson($expression"
        "['$dynamoTypeName'] as Map<String, dynamic>)";
    return result;
  }
}
