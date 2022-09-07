part of '_dynamo_json_test_input.dart';

@ShouldGenerate(
  r'''
UnknownEnumValue _$UnknownEnumValueFromDynamoJson(Map<String, dynamic> json) =>
    UnknownEnumValue()
      ..value = $enumDecodeNullable(
              _$UnknownEnumValueItemsEnumMap, json['value'],
              unknownValue: UnknownEnumValueItems.vUnknown) ??
          UnknownEnumValueItems.vNull;

const _$UnknownEnumValueItemsEnumMap = {
  UnknownEnumValueItems.v0: 'v0',
  UnknownEnumValueItems.v1: 'v1',
  UnknownEnumValueItems.v2: 'v2',
  UnknownEnumValueItems.vUnknown: 'vUnknown',
  UnknownEnumValueItems.vNull: 'vNull',
};
''',
)
@DynamoJson(
  createToJson: false,
)
class UnknownEnumValue {
  @DynamoKey(
    defaultValue: UnknownEnumValueItems.vNull,
    unknownEnumValue: UnknownEnumValueItems.vUnknown,
  )
  UnknownEnumValueItems? value;
}

enum UnknownEnumValueItems { v0, v1, v2, vUnknown, vNull }

@ShouldThrow(
  'Error with `@DynamoKey` on the `value` field. `unknownEnumValue` has type '
  '`int`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@DynamoJson()
class UnknownEnumValueListWrongType {
  @DynamoKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<int> value;
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `value` field. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@DynamoJson()
class UnknownEnumValueListWrongEnumType {
  @DynamoKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<UnknownEnumValueItems> value;
}

enum WrongEnumType { otherValue }

@ShouldThrow(
  'Error with `@DynamoKey` on the `value` field. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@DynamoJson()
class UnknownEnumValueWrongEnumType {
  @DynamoKey(unknownEnumValue: WrongEnumType.otherValue)
  late UnknownEnumValueItems value;
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `value` field. `unknownEnumValue` can only be '
  'set on fields of type enum or on Iterable, List, or Set instances of an '
  'enum type.',
)
@DynamoJson()
class UnknownEnumValueNotEnumField {
  @DynamoKey(unknownEnumValue: UnknownEnumValueItems.vUnknown)
  int? value;
}
