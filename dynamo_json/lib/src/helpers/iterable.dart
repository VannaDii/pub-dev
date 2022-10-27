import 'package:dynamo_json/src/helpers/dynamo.dart';

/// Extension methods for iterable [DynamoMeta] instances.
extension IterableExtensions on DynamoMeta {
  /// Indicates if the [type] is considered iterable.
  bool get isIterable =>
      type.isDartCoreIterable || type.isDartCoreList || type.isDartCoreSet;

  /// Wraps an expression (ex: `instance.foo`) for use in a `toJson` call.
  String wrapIterableTo(String expression) {
    final nullablePrefix = nullHandlerToOrEmpty(expression);
    final firstSub = typeArgs.first;
    final subWrapper = DynamoMeta.forType(firstSub, dynamoTypeFor(firstSub));
    final result = "$nullablePrefix{'$dynamoTypeName': $expression$nullSuffix"
        ".map((e) => ${subWrapper.wrapTo('e${subWrapper.nullSuffix}')})"
        ".toList()}";
    return result;
  }

  /// Wraps an expression (ex: `json['foo']`) for use in a `fromJson` call.
  String wrapIterableFrom(String expression) {
    final nullablePrefix = nullHandlerFromOrEmpty(expression);
    final firstSub = typeArgs.first;
    final subWrapper = DynamoMeta.forType(firstSub, dynamoTypeFor(firstSub));
    final result = "$nullablePrefix($expression['$dynamoTypeName'] as "
        "$baseName<dynamic>).map((e) => ${subWrapper.wrapFrom("e")}).toList()";
    return result;
  }
}
