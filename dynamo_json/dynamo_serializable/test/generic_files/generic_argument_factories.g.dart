// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'generic_argument_factories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericClassWithHelpers<T, S> _$GenericClassWithHelpersFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromDynamoJsonT,
  S Function(Object? json) fromJsonS,
) =>
    GenericClassWithHelpers<T, S>(
      fromDynamoJsonT(json['value']),
      (json['list'] as List<dynamic>).map(fromDynamoJsonT).toList(),
      (json['someSet'] as List<dynamic>).map(fromJsonS).toSet(),
    );

Map<String, dynamic> _$GenericClassWithHelpersToJson<T, S>(
  GenericClassWithHelpers<T, S> instance,
  Object? Function(T value) toDynamoJsonT,
  Object? Function(S value) toDynamoJsonS,
) =>
    <String, dynamic>{
      'value': toDynamoJsonT(instance.value),
      'list': instance.list.map(toDynamoJsonT).toList(),
      'someSet': instance.someSet.map(toDynamoJsonS).toList(),
    };

ConcreteClass _$ConcreteClassFromJson(Map<String, dynamic> json) =>
    ConcreteClass(
      GenericClassWithHelpers<int, String>.fromJson(
          json['value'] as Map<String, dynamic>,
          (value) => value as int,
          (value) => value as String),
      GenericClassWithHelpers<double, BigInt>.fromJson(
          json['value2'] as Map<String, dynamic>,
          (value) => (value as num).toDouble(),
          (value) => BigInt.parse(value as String)),
      GenericClassWithHelpers<double?, BigInt?>.fromJson(
          json['value3'] as Map<String, dynamic>,
          (value) => (value as num?)?.toDouble(),
          (value) => value == null ? null : BigInt.parse(value as String)),
    );

Map<String, dynamic> _$ConcreteClassToJson(ConcreteClass instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(
        (value) => value,
        (value) => value,
      ),
      'value2': instance.value2.toJson(
        (value) => value,
        (value) => value.toString(),
      ),
      'value3': instance.value3.toJson(
        (value) => value,
        (value) => value?.toString(),
      ),
    };
