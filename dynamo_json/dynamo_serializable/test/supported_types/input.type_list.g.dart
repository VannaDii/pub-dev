// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_list.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClass(
      json['value'] as List<dynamic>,
      json['withDefault'] as List<dynamic>? ?? [42, true, false, null],
    );

Map<String, dynamic> _$SimpleClassToDynamoJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullable(
      json['value'] as List<dynamic>?,
      json['withDefault'] as List<dynamic>? ?? [42, true, false, null],
    );

Map<String, dynamic> _$SimpleClassNullableToDynamoJson(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassOfBigInt _$SimpleClassOfBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigInt(
      (json['value'] as List<dynamic>)
          .map((e) => BigInt.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDynamoJson(
        SimpleClassOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfBigInt _$SimpleClassNullableOfBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfBigInt(
      (json['value'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDynamoJson(
        SimpleClassNullableOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfBigIntNullable _$SimpleClassOfBigIntNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntNullable(
      (json['value'] as List<dynamic>)
          .map((e) => e == null ? null : BigInt.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfBigIntNullableToDynamoJson(
        SimpleClassOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfBigIntNullable
    _$SimpleClassNullableOfBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : BigInt.parse(e as String))
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntNullableToDynamoJson(
        SimpleClassNullableOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };

SimpleClassOfBool _$SimpleClassOfBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBool(
      (json['value'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$SimpleClassOfBoolToDynamoJson(
        SimpleClassOfBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfBool _$SimpleClassNullableOfBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfBool(
      (json['value'] as List<dynamic>?)?.map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfBoolToDynamoJson(
        SimpleClassNullableOfBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfBoolNullable _$SimpleClassOfBoolNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBoolNullable(
      (json['value'] as List<dynamic>).map((e) => e as bool?).toList(),
    );

Map<String, dynamic> _$SimpleClassOfBoolNullableToDynamoJson(
        SimpleClassOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfBoolNullable
    _$SimpleClassNullableOfBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBoolNullable(
          (json['value'] as List<dynamic>?)?.map((e) => e as bool?).toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfBoolNullableToDynamoJson(
        SimpleClassNullableOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDateTime _$SimpleClassOfDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTime(
      (json['value'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDynamoJson(
        SimpleClassOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTime _$SimpleClassNullableOfDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfDateTime(
      (json['value'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDynamoJson(
        SimpleClassNullableOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassOfDateTimeNullable _$SimpleClassOfDateTimeNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeNullable(
      (json['value'] as List<dynamic>)
          .map((e) => e == null ? null : DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeNullableToDynamoJson(
        SimpleClassOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTimeNullable
    _$SimpleClassNullableOfDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : DateTime.parse(e as String))
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeNullableToDynamoJson(
        SimpleClassNullableOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassOfDouble _$SimpleClassOfDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDouble(
      (json['value'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDoubleToDynamoJson(
        SimpleClassOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDouble _$SimpleClassNullableOfDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfDouble(
      (json['value'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDoubleToDynamoJson(
        SimpleClassNullableOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDoubleNullable _$SimpleClassOfDoubleNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDoubleNullable(
      (json['value'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDoubleNullableToDynamoJson(
        SimpleClassOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDoubleNullable
    _$SimpleClassNullableOfDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDoubleNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDoubleNullableToDynamoJson(
        SimpleClassNullableOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDuration _$SimpleClassOfDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDuration(
      (json['value'] as List<dynamic>)
          .map((e) => Duration(microseconds: e as int))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDurationToDynamoJson(
        SimpleClassOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassNullableOfDuration _$SimpleClassNullableOfDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfDuration(
      (json['value'] as List<dynamic>?)
          ?.map((e) => Duration(microseconds: e as int))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDurationToDynamoJson(
        SimpleClassNullableOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassOfDurationNullable _$SimpleClassOfDurationNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDurationNullable(
      (json['value'] as List<dynamic>)
          .map((e) => e == null ? null : Duration(microseconds: e as int))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfDurationNullableToDynamoJson(
        SimpleClassOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassNullableOfDurationNullable
    _$SimpleClassNullableOfDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDurationNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : Duration(microseconds: e as int))
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDurationNullableToDynamoJson(
        SimpleClassNullableOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassOfDynamic _$SimpleClassOfDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamic(
      json['value'] as List<dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDynamoJson(
        SimpleClassOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamic _$SimpleClassNullableOfDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfDynamic(
      json['value'] as List<dynamic>?,
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDynamoJson(
        SimpleClassNullableOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumType _$SimpleClassOfEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumType(
      (json['value'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDynamoJson(
        SimpleClassOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]!).toList(),
    };

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumType _$SimpleClassNullableOfEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfEnumType(
      (json['value'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EnumTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDynamoJson(
        SimpleClassNullableOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]!).toList(),
    };

SimpleClassOfEnumTypeNullable _$SimpleClassOfEnumTypeNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeNullable(
      (json['value'] as List<dynamic>)
          .map((e) => $enumDecodeNullable(_$EnumTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeNullableToDynamoJson(
        SimpleClassOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassNullableOfEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => $enumDecodeNullable(_$EnumTypeEnumMap, e))
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeNullableToDynamoJson(
        SimpleClassNullableOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassOfInt _$SimpleClassOfIntFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClassOfInt(
      (json['value'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$SimpleClassOfIntToDynamoJson(
        SimpleClassOfInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfInt _$SimpleClassNullableOfIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfInt(
      (json['value'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToDynamoJson(
        SimpleClassNullableOfInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfIntNullable _$SimpleClassOfIntNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntNullable(
      (json['value'] as List<dynamic>).map((e) => e as int?).toList(),
    );

Map<String, dynamic> _$SimpleClassOfIntNullableToDynamoJson(
        SimpleClassOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfIntNullable
    _$SimpleClassNullableOfIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntNullable(
          (json['value'] as List<dynamic>?)?.map((e) => e as int?).toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntNullableToDynamoJson(
        SimpleClassNullableOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfNum _$SimpleClassOfNumFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClassOfNum(
      (json['value'] as List<dynamic>).map((e) => e as num).toList(),
    );

Map<String, dynamic> _$SimpleClassOfNumToDynamoJson(
        SimpleClassOfNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfNum _$SimpleClassNullableOfNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfNum(
      (json['value'] as List<dynamic>?)?.map((e) => e as num).toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfNumToDynamoJson(
        SimpleClassNullableOfNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfNumNullable _$SimpleClassOfNumNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfNumNullable(
      (json['value'] as List<dynamic>).map((e) => e as num?).toList(),
    );

Map<String, dynamic> _$SimpleClassOfNumNullableToDynamoJson(
        SimpleClassOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfNumNullable
    _$SimpleClassNullableOfNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfNumNullable(
          (json['value'] as List<dynamic>?)?.map((e) => e as num?).toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfNumNullableToDynamoJson(
        SimpleClassNullableOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfObject _$SimpleClassOfObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObject(
      (json['value'] as List<dynamic>).map((e) => e as Object).toList(),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDynamoJson(
        SimpleClassOfObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObject _$SimpleClassNullableOfObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfObject(
      (json['value'] as List<dynamic>?)?.map((e) => e as Object).toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDynamoJson(
        SimpleClassNullableOfObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfObjectNullable _$SimpleClassOfObjectNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectNullable(
      json['value'] as List<dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfObjectNullableToDynamoJson(
        SimpleClassOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectNullable
    _$SimpleClassNullableOfObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectNullable(
          json['value'] as List<dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectNullableToDynamoJson(
        SimpleClassNullableOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfString _$SimpleClassOfStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfString(
      (json['value'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimpleClassOfStringToDynamoJson(
        SimpleClassOfString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfString _$SimpleClassNullableOfStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfString(
      (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToDynamoJson(
        SimpleClassNullableOfString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringNullable _$SimpleClassOfStringNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringNullable(
      (json['value'] as List<dynamic>).map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$SimpleClassOfStringNullableToDynamoJson(
        SimpleClassOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringNullable
    _$SimpleClassNullableOfStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringNullable(
          (json['value'] as List<dynamic>?)?.map((e) => e as String?).toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringNullableToDynamoJson(
        SimpleClassNullableOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUri _$SimpleClassOfUriFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClassOfUri(
      (json['value'] as List<dynamic>)
          .map((e) => Uri.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfUriToDynamoJson(
        SimpleClassOfUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfUri _$SimpleClassNullableOfUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfUri(
      (json['value'] as List<dynamic>?)
          ?.map((e) => Uri.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToDynamoJson(
        SimpleClassNullableOfUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfUriNullable _$SimpleClassOfUriNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriNullable(
      (json['value'] as List<dynamic>)
          .map((e) => e == null ? null : Uri.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$SimpleClassOfUriNullableToDynamoJson(
        SimpleClassOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfUriNullable
    _$SimpleClassNullableOfUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriNullable(
          (json['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : Uri.parse(e as String))
              .toList(),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriNullableToDynamoJson(
        SimpleClassNullableOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };
