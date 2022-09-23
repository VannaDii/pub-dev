// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_json_serializable_test_input.dart';

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `result` because of type `TResult` (type parameter).
To support type parameters (generic types) you can:
$converterOrKeyInstructions
* Set `DynamoSerializable.genericArgumentFactories` to `true`
  https://pub.dev/documentation/dynamo_annotation/latest/dynamo_annotation/DynamoSerializable/genericArgumentFactories.html''',
  element: 'result',
)
@DynamoSerializable()
class Issue713<TResult> {
  List<TResult>? result;
}

@ShouldGenerate(r'''
GenericClass<T, S> _$GenericClassFromDynamoJson<T extends num, S>(
        Map<String, dynamic> json) =>
    GenericClass<T, S>()
      ..fieldObject = _dataFromJson(json['fieldObject'])
      ..fieldDynamic = _dataFromJson(json['fieldDynamic'])
      ..fieldInt = _dataFromJson(json['fieldInt'])
      ..fieldT = _dataFromJson(json['fieldT'])
      ..fieldS = _dataFromJson(json['fieldS']);

Map<String, dynamic> _$GenericClassToDynamoJson<T extends num, S>(
        GenericClass<T, S> instance) =>
    <String, dynamic>{
      'fieldObject': _dataToJson(instance.fieldObject),
      'fieldDynamic': _dataToJson(instance.fieldDynamic),
      'fieldInt': _dataToJson(instance.fieldInt),
      'fieldT': _dataToJson(instance.fieldT),
      'fieldS': _dataToJson(instance.fieldS),
    };
''')
@DynamoSerializable()
class GenericClass<T extends num, S> {
  @DynamoKey(fromDynamoJson: _dataFromJson, toDynamoJson: _dataToJson)
  late Object fieldObject;

  @DynamoKey(fromDynamoJson: _dataFromJson, toDynamoJson: _dataToJson)
  dynamic fieldDynamic;

  @DynamoKey(fromDynamoJson: _dataFromJson, toDynamoJson: _dataToJson)
  late int fieldInt;

  @DynamoKey(fromDynamoJson: _dataFromJson, toDynamoJson: _dataToJson)
  late T fieldT;

  @DynamoKey(fromDynamoJson: _dataFromJson, toDynamoJson: _dataToJson)
  late S fieldS;

  GenericClass();
}

T _dataFromJson<T extends num>(Object? input) => throw UnimplementedError();

Object _dataToJson<T extends num>(T input) => throw UnimplementedError();

@ShouldGenerate(
  r'''
GenericArgumentFactoriesFlagWithoutGenericType
    _$GenericArgumentFactoriesFlagWithoutGenericTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        GenericArgumentFactoriesFlagWithoutGenericType();

Map<String, dynamic>
    _$GenericArgumentFactoriesFlagWithoutGenericTypeToDynamoJson(
            GenericArgumentFactoriesFlagWithoutGenericType instance) =>
        <String, dynamic>{};
''',
  expectedLogItems: [
    'The class `GenericArgumentFactoriesFlagWithoutGenericType` is annotated '
        'with `DynamoSerializable` field `genericArgumentFactories: true`. '
        '`genericArgumentFactories: true` only affects classes with type '
        'parameters. For classes without type parameters, the option is '
        'ignored.',
  ],
)
@DynamoSerializable(genericArgumentFactories: true)
class GenericArgumentFactoriesFlagWithoutGenericType {}
