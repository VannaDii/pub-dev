import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'nested_values_example.g.dart';

/// An example work-around for
/// https://github.com/google/json_serializable.dart/issues/490
@DynamoSerializable()
class NestedValueExample {
  NestedValueExample(this.nestedValues);

  factory NestedValueExample.fromDynamoJson(Map<String, dynamic> json) =>
      _$NestedValueExampleFromDynamoJson(json);

  @_NestedListConverter()
  @DynamoKey(name: 'root_items')
  final List<String> nestedValues;

  Map<String, dynamic> toDynamoJson() => _$NestedValueExampleToDynamoJson(this);
}

class _NestedListConverter
    extends DynamoConverter<List<String>, Map<String, dynamic>> {
  const _NestedListConverter();

  @override
  List<String> fromDynamoJson(Map<String, dynamic> json) => [
        for (var e in json['items'] as List)
          (e as Map<String, dynamic>)['name'] as String
      ];

  @override
  Map<String, dynamic> toDynamoJson(List<String> object) => {
        'items': [
          for (var item in object) {'name': item}
        ]
      };
}
