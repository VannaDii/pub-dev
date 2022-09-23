// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'generic_argument_factories_nullable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericClassWithHelpersNullable<T, S>
    _$GenericClassWithHelpersNullableFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromDynamoJsonT,
  S Function(Object? json) fromJsonS,
) =>
        GenericClassWithHelpersNullable<T, S>(
          value: _$nullableGenericFromJson(json['value'], fromDynamoJsonT),
          list: (json['list'] as List<dynamic>?)
              ?.map((e) => _$nullableGenericFromJson(e, fromDynamoJsonT))
              .toList(),
          someSet: (json['someSet'] as List<dynamic>?)
              ?.map((e) => _$nullableGenericFromJson(e, fromJsonS))
              .toSet(),
        );

Map<String, dynamic> _$GenericClassWithHelpersNullableToJson<T, S>(
  GenericClassWithHelpersNullable<T, S> instance,
  Object? Function(T value) toDynamoJsonT,
  Object? Function(S value) toDynamoJsonS,
) =>
    <String, dynamic>{
      'value': _$nullableGenericToJson(instance.value, toDynamoJsonT),
      'list': instance.list
          ?.map((e) => _$nullableGenericToJson(e, toDynamoJsonT))
          .toList(),
      'someSet': instance.someSet
          ?.map((e) => _$nullableGenericToJson(e, toDynamoJsonS))
          .toList(),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ConcreteClassNullable _$ConcreteClassNullableFromJson(
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

Map<String, dynamic> _$ConcreteClassNullableToJson(
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
