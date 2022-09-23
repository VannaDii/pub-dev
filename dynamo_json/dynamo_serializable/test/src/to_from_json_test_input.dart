// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_json_serializable_test_input.dart';

int _toInt(bool input) => 42;

int _twoArgFunction(int a, int b) => 42;

dynamic _toDynamic(dynamic input) => null;

Object _toObject(Object input) => throw UnimplementedError();

String _toStringFromObject(Object? input) => throw UnimplementedError();

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `fromDynamoJson` function '
  '`_toInt` return type `int` is not compatible with field type `String`.',
  element: 'field',
)
@DynamoSerializable()
class BadFromFuncReturnType {
  @DynamoKey(fromDynamoJson: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `fromDynamoJson` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@DynamoSerializable()
class InvalidFromFunc2Args {
  @DynamoKey(fromDynamoJson: _twoArgFunction)
  late String field;
}

@ShouldGenerate(
  r'''
ValidToFromFuncClassStatic _$ValidToFromFuncClassStaticFromDynamoJson(
        Map<String, dynamic> json) =>
    ValidToFromFuncClassStatic()
      ..field = ValidToFromFuncClassStatic._staticFunc(json['field'] as String);

Map<String, dynamic> _$ValidToFromFuncClassStaticToDynamoJson(
        ValidToFromFuncClassStatic instance) =>
    <String, dynamic>{
      'field': ValidToFromFuncClassStatic._staticFunc(instance.field),
    };
''',
)
@DynamoSerializable()
class ValidToFromFuncClassStatic {
  static String _staticFunc(String param) => throw UnimplementedError();

  @DynamoKey(fromDynamoJson: _staticFunc, toDynamoJson: _staticFunc)
  late String field;
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `toDynamoJson` function `_toInt` '
  'argument type `bool` is not compatible with field type `String`.',
  element: 'field',
)
@DynamoSerializable()
class BadToFuncReturnType {
  @DynamoKey(toDynamoJson: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@DynamoKey` on the `values` field. The `fromDynamoJson` function '
  '`_fromList` return type `List<int>?` is not compatible with field type '
  '`List<int>`.',
  element: 'values',
)
@DynamoSerializable()
class Reproduce869NullableGenericType {
  @DynamoKey(
    toDynamoJson: _toList, // nullable
    fromDynamoJson: _fromList, // nullable
  )
  late final List<int> values;
}

@ShouldGenerate(
  r'''
Reproduce869NullableGenericTypeWithDefault
    _$Reproduce869NullableGenericTypeWithDefaultFromDynamoJson(
            Map<String, dynamic> json) =>
        Reproduce869NullableGenericTypeWithDefault()
          ..values =
              json['values'] == null ? [] : _fromList(json['values'] as List?)
          ..valuesNullable = json['valuesNullable'] == null
              ? []
              : _fromList(json['valuesNullable'] as List?);

Map<String, dynamic> _$Reproduce869NullableGenericTypeWithDefaultToDynamoJson(
        Reproduce869NullableGenericTypeWithDefault instance) =>
    <String, dynamic>{
      'values': _toList(instance.values),
      'valuesNullable': _toList(instance.valuesNullable),
    };
''',
)
@DynamoSerializable()
class Reproduce869NullableGenericTypeWithDefault {
  @DynamoKey(
    toDynamoJson: _toList, // nullable
    fromDynamoJson: _fromList, // nullable
    defaultValue: <int>[],
  )
  late List<int> values;

  @DynamoKey(
    toDynamoJson: _toList, // nullable
    fromDynamoJson: _fromList, // nullable
    defaultValue: <int>[],
  )
  List<int>? valuesNullable;
}

List<int>? _fromList(List? pairs) =>
    pairs?.map((it) => it as int).toList(growable: false);

List<List>? _toList(List<int>? pairs) =>
    pairs?.map((it) => [it]).toList(growable: false);

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `toDynamoJson` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@DynamoSerializable()
class InvalidToFunc2Args {
  @DynamoKey(toDynamoJson: _twoArgFunction)
  late String field;
}

@ShouldGenerate(
  "_toStringFromObject(json['field'])",
  contains: true,
)
@DynamoSerializable()
class ObjectConvertMethods {
  @DynamoKey(fromDynamoJson: _toStringFromObject, toDynamoJson: _toObject)
  late String field;
}

@ShouldGenerate(
  "_toDynamic(json['field'])",
  contains: true,
)
@DynamoSerializable()
class DynamicConvertMethods {
  @DynamoKey(fromDynamoJson: _toDynamic, toDynamoJson: _toDynamic)
  late String field;
}

String _toString(String input) => 'null';

@ShouldGenerate(
  "_toString(json['field'] as String)",
  contains: true,
)
@DynamoSerializable()
class TypedConvertMethods {
  @DynamoKey(fromDynamoJson: _toString, toDynamoJson: _toString)
  late String field;
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$ToJsonNullableFalseIncludeIfNullFalseToDynamoJson(
    ToJsonNullableFalseIncludeIfNullFalse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', _toString(instance.field));
  return val;
}
''',
)
@DynamoSerializable(createFactory: false)
class ToJsonNullableFalseIncludeIfNullFalse {
  @DynamoKey(toDynamoJson: _toString, includeIfNull: false)
  late String field;
}

String _fromDynamicMap(Map input) => '';

String _fromDynamicList(List input) => 'null';

String _fromDynamicIterable(Iterable input) => 'null';

@ShouldGenerate(
  r'''
FromDynamicCollection _$FromDynamicCollectionFromDynamoJson(
        Map<String, dynamic> json) =>
    FromDynamicCollection()
      ..mapField = _fromDynamicMap(json['mapField'] as Map)
      ..listField = _fromDynamicList(json['listField'] as List)
      ..iterableField = _fromDynamicIterable(json['iterableField'] as List);
''',
)
@DynamoSerializable(createToDynamoJson: false)
class FromDynamicCollection {
  @DynamoKey(fromDynamoJson: _fromDynamicMap)
  late String mapField;
  @DynamoKey(fromDynamoJson: _fromDynamicList)
  late String listField;
  @DynamoKey(fromDynamoJson: _fromDynamicIterable)
  late String iterableField;
}

String _fromNullableDynamicMap(Map? input) => '';

String _fromNullableDynamicList(List? input) => 'null';

String _fromNullableDynamicIterable(Iterable? input) => 'null';

@ShouldGenerate(
  r'''
FromNullableDynamicCollection _$FromNullableDynamicCollectionFromDynamoJson(
        Map<String, dynamic> json) =>
    FromNullableDynamicCollection()
      ..mapField = _fromNullableDynamicMap(json['mapField'] as Map?)
      ..listField = _fromNullableDynamicList(json['listField'] as List?)
      ..iterableField =
          _fromNullableDynamicIterable(json['iterableField'] as List?);
''',
)
@DynamoSerializable(createToDynamoJson: false)
class FromNullableDynamicCollection {
  @DynamoKey(fromDynamoJson: _fromNullableDynamicMap)
  late String mapField;
  @DynamoKey(fromDynamoJson: _fromNullableDynamicList)
  late String listField;
  @DynamoKey(fromDynamoJson: _fromNullableDynamicIterable)
  late String iterableField;
}

String _noArgs() => throw UnimplementedError();

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `fromDynamoJson` function '
  '`_noArgs` must have one positional parameter.',
  element: 'field',
)
@DynamoSerializable(createToDynamoJson: false)
class BadNoArgs {
  @DynamoKey(fromDynamoJson: _noArgs)
  String? field;
}

String? _twoArgs(a, b) => null;

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `fromDynamoJson` function '
  '`_twoArgs` must have one positional parameter.',
  element: 'field',
)
@DynamoSerializable(createToDynamoJson: false)
class BadTwoRequiredPositional {
  @DynamoKey(fromDynamoJson: _twoArgs)
  String? field;
}

String? _oneNamed({a}) => null;

@ShouldThrow(
  'Error with `@DynamoKey` on the `field` field. The `fromDynamoJson` function '
  '`_oneNamed` must have one positional parameter.',
  element: 'field',
)
@DynamoSerializable(createToDynamoJson: false)
class BadOneNamed {
  @DynamoKey(fromDynamoJson: _oneNamed)
  String? field;
}

String _oneNormalOnePositional(a, [b]) => throw UnimplementedError();

@ShouldGenerate("_oneNormalOnePositional(json['field'])", contains: true)
@DynamoSerializable(createToDynamoJson: false)
class OkayOneNormalOptionalPositional {
  @DynamoKey(fromDynamoJson: _oneNormalOnePositional)
  String? field;
}

String _oneNormalOptionalNamed(a, {b}) => throw UnimplementedError();

@ShouldGenerate("_oneNormalOptionalNamed(json['field'])", contains: true)
@DynamoSerializable(createToDynamoJson: false)
class OkayOneNormalOptionalNamed {
  @DynamoKey(fromDynamoJson: _oneNormalOptionalNamed)
  String? field;
}

String _onlyOptionalPositional([a, b]) => throw UnimplementedError();

@ShouldGenerate("_onlyOptionalPositional(json['field'])", contains: true)
@DynamoSerializable(createToDynamoJson: false)
class OkayOnlyOptionalPositional {
  @DynamoKey(fromDynamoJson: _onlyOptionalPositional)
  String? field;
}

@ShouldGenerate(
  r'''
_BetterPrivateNames _$BetterPrivateNamesFromDynamoJson(
        Map<String, dynamic> json) =>
    _BetterPrivateNames(
      name: json['name'] as String,
    );

Map<String, dynamic> _$BetterPrivateNamesToDynamoJson(
        _BetterPrivateNames instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
''',
)
@DynamoSerializable(createFactory: true, createToDynamoJson: true)
// ignore: unused_element
class _BetterPrivateNames {
  final String name;

  _BetterPrivateNames({required this.name});
}
