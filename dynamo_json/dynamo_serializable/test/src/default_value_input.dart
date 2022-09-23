// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_json_serializable_test_input.dart';

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. '
  '`defaultValue` is `Symbol`, it must be a literal.',
  element: 'field',
)
@DynamoSerializable()
class DefaultWithSymbol {
  @DynamoKey(defaultValue: #symbol)
  late Object field;

  DefaultWithSymbol();
}

int _function() => 42;

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. '
  '`defaultValue` is `Function`, it must be a literal.',
  element: 'field',
)
@DynamoSerializable()
class DefaultWithFunction {
  @DynamoKey(defaultValue: _function)
  Object? field;

  DefaultWithFunction();
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. '
  '`defaultValue` is `Type`, it must be a literal.',
  element: 'field',
)
@DynamoSerializable()
class DefaultWithType {
  @DynamoKey(defaultValue: Object)
  late Object field;

  DefaultWithType();
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. '
  '`defaultValue` is `Duration`, it must be a literal.',
  element: 'field',
)
@DynamoSerializable()
class DefaultWithConstObject {
  @DynamoKey(defaultValue: Duration())
  late Object field;

  DefaultWithConstObject();
}

enum Enum { value }

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. '
  '`defaultValue` is `List > Enum`, it must be a literal.',
  element: 'field',
)
@DynamoSerializable()
class DefaultWithNestedEnum {
  @DynamoKey(defaultValue: [Enum.value])
  late Object field;

  DefaultWithNestedEnum();
}

@ShouldThrow(
  '`DynamoKey.nullForUndefinedEnumValue` cannot be used with '
  '`DynamoKey.defaultValue`.',
  element: 'enumValue',
)
@DynamoSerializable()
class BadEnumDefaultValue {
  @DynamoKey(defaultValue: DynamoKey.nullForUndefinedEnumValue)
  Enum? enumValue;

  BadEnumDefaultValue();
}

@ShouldGenerate(
  r'''
DefaultWithToJsonClass _$DefaultWithToJsonClassFromDynamoJson(
        Map<String, dynamic> json) =>
    DefaultWithToJsonClass()
      ..fieldDefaultValueToJson = json['fieldDefaultValueToJson'] == null
          ? 7
          : DefaultWithToJsonClass._fromDynamoJson(
              json['fieldDefaultValueToJson'] as String);
''',
)
@DynamoSerializable(createToDynamoJson: false)
class DefaultWithToJsonClass {
  @DynamoKey(defaultValue: 7, fromDynamoJson: _fromDynamoJson)
  late int fieldDefaultValueToJson;

  DefaultWithToJsonClass();

  static int _fromDynamoJson(String input) => 41;
}

@ShouldGenerate(
  r'''
DefaultWithDisallowNullRequiredClass
    _$DefaultWithDisallowNullRequiredClassFromDynamoJson(
        Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['theField'],
    disallowNullValues: const ['theField'],
  );
  return DefaultWithDisallowNullRequiredClass()
    ..theField = json['theField'] as int? ?? 7;
}
''',
  expectedLogItems: [
    'The `defaultValue` on field `theField` will have no effect because both '
        '`disallowNullValue` and `required` are set to `true`.',
  ],
)
@DynamoSerializable(createToDynamoJson: false)
class DefaultWithDisallowNullRequiredClass {
  @DynamoKey(defaultValue: 7, disallowNullValue: true, required: true)
  int? theField;

  DefaultWithDisallowNullRequiredClass();
}

@ShouldGenerate(
  r'''
CtorDefaultValueAndJsonKeyDefaultValue
    _$CtorDefaultValueAndJsonKeyDefaultValueFromDynamoJson(
            Map<String, dynamic> json) =>
        CtorDefaultValueAndJsonKeyDefaultValue(
          json['theField'] as int? ?? 7,
        );
''',
  expectedLogItems: [
    'The constructor parameter for `theField` has a default value `6`, but the '
        '`DynamoKey.defaultValue` value `7` will be used for missing or `null` '
        'values in JSON decoding.',
  ],
)
@DynamoSerializable(createToDynamoJson: false)
class CtorDefaultValueAndJsonKeyDefaultValue {
  @DynamoKey(defaultValue: 7)
  final int theField;

  CtorDefaultValueAndJsonKeyDefaultValue([this.theField = 6]);
}

@ShouldGenerate(
  r'''
SameCtorAndJsonKeyDefaultValue _$SameCtorAndJsonKeyDefaultValueFromDynamoJson(
        Map<String, dynamic> json) =>
    SameCtorAndJsonKeyDefaultValue(
      json['theField'] as int? ?? 3,
    );
''',
  expectedLogItems: [
    'The default value `3` for `theField` is defined twice '
        'in the constructor and in the `DynamoKey.defaultValue`.',
  ],
)
@DynamoSerializable(createToDynamoJson: false)
class SameCtorAndJsonKeyDefaultValue {
  @DynamoKey(defaultValue: 3)
  final int theField;

  SameCtorAndJsonKeyDefaultValue([this.theField = 3]);
}

@ShouldGenerate(r'''
DefaultDoubleConstants _$DefaultDoubleConstantsFromDynamoJson(
        Map<String, dynamic> json) =>
    DefaultDoubleConstants()
      ..defaultNan = (json['defaultNan'] as num?)?.toDouble() ?? double.nan
      ..defaultNegativeInfinity =
          (json['defaultNegativeInfinity'] as num?)?.toDouble() ??
              double.negativeInfinity
      ..defaultInfinity =
          (json['defaultInfinity'] as num?)?.toDouble() ?? double.infinity
      ..defaultMinPositive =
          (json['defaultMinPositive'] as num?)?.toDouble() ?? 5e-324
      ..defaultMaxFinite = (json['defaultMaxFinite'] as num?)?.toDouble() ??
          1.7976931348623157e+308;
''')
@DynamoSerializable(createToDynamoJson: false)
class DefaultDoubleConstants {
  @DynamoKey(defaultValue: double.nan)
  late double defaultNan;
  @DynamoKey(defaultValue: double.negativeInfinity)
  late double defaultNegativeInfinity;
  @DynamoKey(defaultValue: double.infinity)
  late double defaultInfinity;

  // Since these values can be represented as number literals, there is no
  // special handling. Including them here for completeness, though.
  @DynamoKey(defaultValue: double.minPositive)
  late double defaultMinPositive;
  @DynamoKey(defaultValue: double.maxFinite)
  late double defaultMaxFinite;

  DefaultDoubleConstants();
}
