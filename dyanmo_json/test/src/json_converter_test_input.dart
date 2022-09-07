// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_dynamo_json_test_input.dart';

@ShouldGenerate(r'''
JsonConverterNamedCtor<E> _$JsonConverterNamedCtorFromDynamoJson<E>(
        Map<String, dynamic> json) =>
    JsonConverterNamedCtor<E>()
      ..value = const _DurationMillisecondConverter.named()
          .fromJson(json['value'] as int)
      ..genericValue =
          _GenericConverter<E>.named().fromJson(json['genericValue'] as int)
      ..keyAnnotationFirst =
          JsonConverterNamedCtor._fromJson(json['keyAnnotationFirst'] as int);

Map<String, dynamic> _$JsonConverterNamedCtorToDynamoJson<E>(
        JsonConverterNamedCtor<E> instance) =>
    <String, dynamic>{
      'value': const _DurationMillisecondConverter.named()
          .toDynamoJson(instance.value),
      'genericValue':
          _GenericConverter<E>.named().toDynamoJson(instance.genericValue),
      'keyAnnotationFirst':
          JsonConverterNamedCtor._toJson(instance.keyAnnotationFirst),
    };
''')
@DynamoJson()
@_DurationMillisecondConverter.named()
@_GenericConverter.named()
class JsonConverterNamedCtor<E> {
  late Duration value;
  late E genericValue;

  // Field annotations have precedence over class annotations
  @DynamoKey(fromDynamoJson: _fromJson, toDynamoJson: _toJson)
  late Duration keyAnnotationFirst;

  static Duration _fromJson(int value) => throw UnimplementedError();

  static int _toJson(Duration object) => 42;
}

@ShouldGenerate(r'''
JsonConvertOnField<E> _$JsonConvertOnFieldFromDynamoJson<E>(
        Map<String, dynamic> json) =>
    JsonConvertOnField<E>()
      ..annotatedField = const _DurationMillisecondConverter()
          .fromJson(json['annotatedField'] as int)
      ..annotatedWithNamedCtor = const _DurationMillisecondConverter.named()
          .fromJson(json['annotatedWithNamedCtor'] as int)
      ..classAnnotatedWithField =
          _durationConverter.fromJson(json['classAnnotatedWithField'] as int)
      ..genericValue =
          _GenericConverter<E>().fromJson(json['genericValue'] as int);

Map<String, dynamic> _$JsonConvertOnFieldToDynamoJson<E>(
        JsonConvertOnField<E> instance) =>
    <String, dynamic>{
      'annotatedField': const _DurationMillisecondConverter()
          .toDynamoJson(instance.annotatedField),
      'annotatedWithNamedCtor': const _DurationMillisecondConverter.named()
          .toDynamoJson(instance.annotatedWithNamedCtor),
      'classAnnotatedWithField':
          _durationConverter.toDynamoJson(instance.classAnnotatedWithField),
      'genericValue':
          _GenericConverter<E>().toDynamoJson(instance.genericValue),
    };
''')
@DynamoJson()
@_durationConverter
class JsonConvertOnField<E> {
  @_DurationMillisecondConverter()
  late Duration annotatedField;

  @_DurationMillisecondConverter.named()
  late Duration annotatedWithNamedCtor;

  late Duration classAnnotatedWithField;

  @_GenericConverter()
  late E genericValue;
}

class _GenericConverter<T> implements DynamoConverter<T, int> {
  const _GenericConverter();

  const _GenericConverter.named();

  @override
  T fromDynamoJson(int json) => throw UnimplementedError();

  @override
  int toDynamoJson(T object) => 0;
}

@ShouldThrow(
  '`DynamoConverter` implementations can have no more than one type argument. '
  '`_BadConverter` has 2.',
  element: '_BadConverter',
)
@DynamoJson()
@_BadConverter()
class JsonConverterWithBadTypeArg<T> {
  late T value;
}

class _BadConverter<T, S> implements DynamoConverter<S, int> {
  const _BadConverter();

  @override
  S fromDynamoJson(int json) => throw UnimplementedError();

  @override
  int toDynamoJson(S object) => 0;
}

@ShouldThrow(
  'Found more than one matching converter for `Duration`.',
  element: '',
)
@DynamoJson()
@_durationConverter
@_DurationMillisecondConverter()
class JsonConverterDuplicateAnnotations {
  late Duration value;
}

const _durationConverter = _DurationMillisecondConverter();

class _DurationMillisecondConverter implements DynamoConverter<Duration, int> {
  const _DurationMillisecondConverter();

  const _DurationMillisecondConverter.named();

  @override
  Duration fromDynamoJson(int json) => throw UnimplementedError();

  @override
  int toDynamoJson(Duration object) => throw UnimplementedError();
}

@ShouldThrow(
  'Generators with constructor arguments are not supported.',
  element: '',
)
@DynamoJson()
@_ConverterWithCtorParams(42)
class JsonConverterCtorParams {
  late Duration value;
}

class _ConverterWithCtorParams implements DynamoConverter<Duration, int> {
  final int param;

  const _ConverterWithCtorParams(this.param);

  @override
  Duration fromDynamoJson(int json) => throw UnimplementedError();

  @override
  int toDynamoJson(Duration object) => 0;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$JsonConverterOnGetterToDynamoJson(
        JsonConverterOnGetter instance) =>
    <String, dynamic>{
      'annotatedGetter': const _NeedsConversionConverter()
          .toDynamoJson(instance.annotatedGetter),
    };
''')
@DynamoJson(createFactory: false)
class JsonConverterOnGetter {
  @DynamoKey()
  @_NeedsConversionConverter()
  _NeedsConversion get annotatedGetter => _NeedsConversion();
}

class _NeedsConversion {}

class _NeedsConversionConverter
    implements DynamoConverter<_NeedsConversion, int> {
  const _NeedsConversionConverter();

  @override
  _NeedsConversion fromDynamoJson(int json) => _NeedsConversion();

  @override
  int toDynamoJson(_NeedsConversion object) => 0;
}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `value`.
To support the type `_NeedsConversion` you can:
$converterOrKeyInstructions''',
)
@_NullableConverter()
@DynamoJson()
class JsonConverterNullableToNonNullable {
  late _NeedsConversion value;
}

class _NullableConverter
    implements DynamoConverter<_NeedsConversion?, Object?> {
  const _NullableConverter();

  @override
  _NeedsConversion? fromDynamoJson(Object? json) => null;

  @override
  Object? toDynamoJson(_NeedsConversion? object) => null;
}
