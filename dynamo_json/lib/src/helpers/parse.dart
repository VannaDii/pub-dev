import 'package:dynamo_json/src/helpers/dynamo.dart';

class _ParsableDef {
  final String to;
  final String from;

  const _ParsableDef({required this.to, required this.from});

  factory _ParsableDef.toStringParse() => _ParsableDef(
        to: 'toString()',
        from: 'parse',
      );
}

/// Built-ins known to support `toString` and `parse` for round-trips.
final _parsable = <String, _ParsableDef>{
  'DateTime': _ParsableDef(
    to: 'toUtc().toIso8601String()',
    from: 'parse',
  ),
  'int': _ParsableDef.toStringParse(),
  'double': _ParsableDef.toStringParse()
};

/// Extension methods for parsable [DynamoMeta] instances.
extension ParsableExtensions on DynamoMeta {
  /// Indicates if the [type] is considered parsable, having a `parse` method.
  bool get isParsable => _parsable.containsKey(baseName);

  /// Wraps an expression (ex: `instance.foo`) for use in a `toJson` call.
  String wrapParsableTo(String expression) {
    final nullablePrefix = nullHandlerToOrEmpty(expression);
    final result = "$nullablePrefix{'$dynamoTypeName': $expression$nullSuffix."
        "${_parsable[baseName]!.to}}";
    return result;
  }

  /// Wraps an expression (ex: `json['foo']`) for use in a `fromJson` call.
  String wrapParsableFrom(String expression) {
    final nullablePrefix = nullHandlerFromOrEmpty(expression);
    final result = "$nullablePrefix$baseName.${_parsable[baseName]!.from}"
        "($expression['$dynamoTypeName'] as String)";
    return result;
  }
}
