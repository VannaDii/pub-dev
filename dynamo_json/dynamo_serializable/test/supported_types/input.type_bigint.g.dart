// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_bigint.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClass(
      BigInt.parse(json['value'] as String),
    );

Map<String, dynamic> _$SimpleClassToDynamoJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.toString(),
    };

SimpleClassNullable _$SimpleClassNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullable(
      json['value'] == null ? null : BigInt.parse(json['value'] as String),
    );

Map<String, dynamic> _$SimpleClassNullableToDynamoJson(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toString(),
    };
