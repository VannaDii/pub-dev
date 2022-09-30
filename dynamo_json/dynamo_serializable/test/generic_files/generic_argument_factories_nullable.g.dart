// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'generic_argument_factories_nullable.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

GenericClassWithHelpersNullable<T, S>
    _$GenericClassWithHelpersNullableFromDynamoJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromDynamoJsonT,
  S Function(Object? json) fromDynamoJsonS,
) =>
        GenericClassWithHelpersNullable<T, S>(
          value:
              _$nullableGenericFromDynamoJson(json['value'], fromDynamoJsonT),
          list: (json['list'] as List<dynamic>?)
              ?.map((e) => _$nullableGenericFromDynamoJson(e, fromDynamoJsonT))
              .toList(),
          someSet: (json['someSet'] as List<dynamic>?)
              ?.map((e) => _$nullableGenericFromDynamoJson(e, fromDynamoJsonS))
              .toSet(),
        );

Map<String, dynamic> _$GenericClassWithHelpersNullableToDynamoJson<T, S>(
  GenericClassWithHelpersNullable<T, S> instance,
  Object? Function(T value) toDynamoJsonT,
  Object? Function(S value) toDynamoJsonS,
) =>
    <String, dynamic>{
      'value': _$nullableGenericToDynamoJson(instance.value, toDynamoJsonT),
      'list': instance.list
          ?.map((e) => _$nullableGenericToDynamoJson(e, toDynamoJsonT))
          .toList(),
      'someSet': instance.someSet
          ?.map((e) => _$nullableGenericToDynamoJson(e, toDynamoJsonS))
          .toList(),
    };

T? _$nullableGenericFromDynamoJson<T>(
  Object? input,
  T Function(Object? json) fromDynamoJson,
) =>
    input == null ? null : fromDynamoJson(input);

Object? _$nullableGenericToDynamoJson<T>(
  T? input,
  Object? Function(T value) toDynamoJson,
) =>
    input == null ? null : toDynamoJson(input);

ConcreteClassNullable _$ConcreteClassNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    ConcreteClassNullable(
      GenericClassWithHelpersNullable<int, String>.fromDynamoJson(
          json['value'] as Map<String, dynamic>,
          (value) => value as int,
          (value) => value as String),
      GenericClassWithHelpersNullable<double, BigInt>.fromDynamoJson(
          json['value2'] as Map<String, dynamic>,
          (value) => (value as num).toDouble(),
          (value) => BigInt.parse(value as String)),
      GenericClassWithHelpersNullable<double?, BigInt?>.fromDynamoJson(
          json['value3'] as Map<String, dynamic>,
          (value) => (value as num?)?.toDouble(),
          (value) => value == null ? null : BigInt.parse(value as String)),
    );

Map<String, dynamic> _$ConcreteClassNullableToDynamoJson(
        ConcreteClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toDynamoJson(
        (value) => value,
        (value) => value,
      ),
      'value2': instance.value2.toDynamoJson(
        (value) => value,
        (value) => value.toString(),
      ),
      'value3': instance.value3.toDynamoJson(
        (value) => value,
        (value) => value?.toString(),
      ),
    };
