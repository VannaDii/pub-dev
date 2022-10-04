// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_values_example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

NestedValueExample _$NestedValueExampleFromDynamoJson(
        Map<String, dynamic> json) =>
    NestedValueExample(
      const _NestedListConverter().fromDynamoJson((json['root_items']
          as Map<String, dynamic>)['L'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedValueExampleToDynamoJson(
        NestedValueExample instance) =>
    <String, dynamic>{
      'root_items': {
        'L': const _NestedListConverter().toDynamoJson(instance.nestedValues)
      },
    };
