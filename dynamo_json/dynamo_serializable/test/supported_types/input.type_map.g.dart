// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_map.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromDynamoJson(Map<String, dynamic> json) =>
    SimpleClass(
      json['value'] as Map<String, dynamic>,
      json['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
    );

Map<String, dynamic> _$SimpleClassToDynamoJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullable(
      json['value'] as Map<String, dynamic>?,
      json['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
    );

Map<String, dynamic> _$SimpleClassNullableToDynamoJson(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassOfBigIntToBigInt _$SimpleClassOfBigIntToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntToDynamoJson(
        SimpleClassOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToBigInt
    _$SimpleClassNullableOfBigIntToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntToDynamoJson(
        SimpleClassNullableOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToBigInt _$SimpleClassOfDateTimeToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntToDynamoJson(
        SimpleClassOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToBigInt
    _$SimpleClassNullableOfDateTimeToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBigIntToDynamoJson(
        SimpleClassNullableOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToBigInt _$SimpleClassOfDynamicToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntToDynamoJson(
        SimpleClassOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToBigInt
    _$SimpleClassNullableOfDynamicToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntToDynamoJson(
        SimpleClassNullableOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToBigInt _$SimpleClassOfEnumTypeToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntToDynamoJson(
        SimpleClassOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toString())),
    };

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumTypeToBigInt
    _$SimpleClassNullableOfEnumTypeToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBigIntToDynamoJson(
        SimpleClassNullableOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toString())),
    };

SimpleClassOfIntToBigInt _$SimpleClassOfIntToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBigIntToDynamoJson(
        SimpleClassOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToBigInt
    _$SimpleClassNullableOfIntToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntToDynamoJson(
        SimpleClassNullableOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToBigInt _$SimpleClassOfObjectToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToBigIntToDynamoJson(
        SimpleClassOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToBigInt
    _$SimpleClassNullableOfObjectToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntToDynamoJson(
        SimpleClassNullableOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToBigInt _$SimpleClassOfStringToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToBigIntToDynamoJson(
        SimpleClassOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToBigInt
    _$SimpleClassNullableOfStringToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntToDynamoJson(
        SimpleClassNullableOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToBigInt _$SimpleClassOfUriToBigIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToBigInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBigIntToDynamoJson(
        SimpleClassOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToBigInt
    _$SimpleClassNullableOfUriToBigIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToBigInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntToDynamoJson(
        SimpleClassNullableOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToBigIntNullable
    _$SimpleClassOfBigIntToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntNullableToDynamoJson(
        SimpleClassOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToBigIntNullable
    _$SimpleClassNullableOfBigIntToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntNullableToDynamoJson(
        SimpleClassNullableOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToBigIntNullable
    _$SimpleClassOfDateTimeToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntNullableToDynamoJson(
        SimpleClassOfDateTimeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToBigIntNullable
    _$SimpleClassNullableOfDateTimeToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToBigIntNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToBigIntNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
        };

SimpleClassOfDynamicToBigIntNullable
    _$SimpleClassOfDynamicToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntNullableToDynamoJson(
        SimpleClassOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToBigIntNullable
    _$SimpleClassNullableOfDynamicToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntNullableToDynamoJson(
        SimpleClassNullableOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToBigIntNullable
    _$SimpleClassOfEnumTypeToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntNullableToDynamoJson(
        SimpleClassOfEnumTypeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toString())),
    };

SimpleClassNullableOfEnumTypeToBigIntNullable
    _$SimpleClassNullableOfEnumTypeToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToBigIntNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToBigIntNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toString())),
        };

SimpleClassOfIntToBigIntNullable
    _$SimpleClassOfIntToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToBigIntNullableToDynamoJson(
        SimpleClassOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToBigIntNullable
    _$SimpleClassNullableOfIntToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntNullableToDynamoJson(
        SimpleClassNullableOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToBigIntNullable
    _$SimpleClassOfObjectToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToBigIntNullableToDynamoJson(
        SimpleClassOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToBigIntNullable
    _$SimpleClassNullableOfObjectToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntNullableToDynamoJson(
        SimpleClassNullableOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToBigIntNullable
    _$SimpleClassOfStringToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToBigIntNullableToDynamoJson(
        SimpleClassOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToBigIntNullable
    _$SimpleClassNullableOfStringToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntNullableToDynamoJson(
        SimpleClassNullableOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToBigIntNullable
    _$SimpleClassOfUriToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToBigIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToBigIntNullableToDynamoJson(
        SimpleClassOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToBigIntNullable
    _$SimpleClassNullableOfUriToBigIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToBigIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntNullableToDynamoJson(
        SimpleClassNullableOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfBigIntToBool _$SimpleClassOfBigIntToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToBool(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToBoolToDynamoJson(
        SimpleClassOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBool
    _$SimpleClassNullableOfBigIntToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolToDynamoJson(
        SimpleClassNullableOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBool _$SimpleClassOfDateTimeToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToBool(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolToDynamoJson(
        SimpleClassOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBool
    _$SimpleClassNullableOfDateTimeToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolToDynamoJson(
        SimpleClassNullableOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBool _$SimpleClassOfDynamicToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToBool(
      Map<String, bool>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToBoolToDynamoJson(
        SimpleClassOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBool
    _$SimpleClassNullableOfDynamicToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolToDynamoJson(
        SimpleClassNullableOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBool _$SimpleClassOfEnumTypeToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToBool(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolToDynamoJson(
        SimpleClassOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToBool
    _$SimpleClassNullableOfEnumTypeToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolToDynamoJson(
        SimpleClassNullableOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToBool _$SimpleClassOfIntToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToBool(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBoolToDynamoJson(
        SimpleClassOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBool _$SimpleClassNullableOfIntToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfIntToBool(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolToDynamoJson(
        SimpleClassNullableOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBool _$SimpleClassOfObjectToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToBool(
      Map<String, bool>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToBoolToDynamoJson(
        SimpleClassOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBool
    _$SimpleClassNullableOfObjectToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolToDynamoJson(
        SimpleClassNullableOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBool _$SimpleClassOfStringToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToBool(
      Map<String, bool>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToBoolToDynamoJson(
        SimpleClassOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBool
    _$SimpleClassNullableOfStringToBoolFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToBool(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolToDynamoJson(
        SimpleClassNullableOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBool _$SimpleClassOfUriToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToBool(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBoolToDynamoJson(
        SimpleClassOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBool _$SimpleClassNullableOfUriToBoolFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfUriToBool(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolToDynamoJson(
        SimpleClassNullableOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToBoolNullable
    _$SimpleClassOfBigIntToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToBoolNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToBoolNullableToDynamoJson(
        SimpleClassOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBoolNullable
    _$SimpleClassNullableOfBigIntToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolNullableToDynamoJson(
        SimpleClassNullableOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBoolNullable
    _$SimpleClassOfDateTimeToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToBoolNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolNullableToDynamoJson(
        SimpleClassOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBoolNullable
    _$SimpleClassNullableOfDateTimeToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolNullableToDynamoJson(
        SimpleClassNullableOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBoolNullable
    _$SimpleClassOfDynamicToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToBoolNullable(
          Map<String, bool?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToBoolNullableToDynamoJson(
        SimpleClassOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBoolNullable
    _$SimpleClassNullableOfDynamicToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolNullableToDynamoJson(
        SimpleClassNullableOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBoolNullable
    _$SimpleClassOfEnumTypeToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToBoolNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolNullableToDynamoJson(
        SimpleClassOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToBoolNullable
    _$SimpleClassNullableOfEnumTypeToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolNullableToDynamoJson(
        SimpleClassNullableOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToBoolNullable _$SimpleClassOfIntToBoolNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToBoolNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBoolNullableToDynamoJson(
        SimpleClassOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBoolNullable
    _$SimpleClassNullableOfIntToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolNullableToDynamoJson(
        SimpleClassNullableOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBoolNullable
    _$SimpleClassOfObjectToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToBoolNullable(
          Map<String, bool?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfObjectToBoolNullableToDynamoJson(
        SimpleClassOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBoolNullable
    _$SimpleClassNullableOfObjectToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolNullableToDynamoJson(
        SimpleClassNullableOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBoolNullable
    _$SimpleClassOfStringToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToBoolNullable(
          Map<String, bool?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfStringToBoolNullableToDynamoJson(
        SimpleClassOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBoolNullable
    _$SimpleClassNullableOfStringToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolNullableToDynamoJson(
        SimpleClassNullableOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBoolNullable _$SimpleClassOfUriToBoolNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToBoolNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as bool?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBoolNullableToDynamoJson(
        SimpleClassOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBoolNullable
    _$SimpleClassNullableOfUriToBoolNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToBoolNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolNullableToDynamoJson(
        SimpleClassNullableOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDateTime _$SimpleClassOfBigIntToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeToDynamoJson(
        SimpleClassOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTime
    _$SimpleClassNullableOfBigIntToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDateTimeToDynamoJson(
        SimpleClassNullableOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfDateTimeToDateTime _$SimpleClassOfDateTimeToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeToDynamoJson(
        SimpleClassOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTime
    _$SimpleClassNullableOfDateTimeToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDateTimeToDynamoJson(
        SimpleClassNullableOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassOfDynamicToDateTime _$SimpleClassOfDynamicToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeToDynamoJson(
        SimpleClassOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTime
    _$SimpleClassNullableOfDynamicToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDateTimeToDynamoJson(
        SimpleClassNullableOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfEnumTypeToDateTime _$SimpleClassOfEnumTypeToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeToDynamoJson(
        SimpleClassOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTime
    _$SimpleClassNullableOfEnumTypeToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDateTimeToDynamoJson(
        SimpleClassNullableOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toIso8601String())),
    };

SimpleClassOfIntToDateTime _$SimpleClassOfIntToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDateTimeToDynamoJson(
        SimpleClassOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTime
    _$SimpleClassNullableOfIntToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeToDynamoJson(
        SimpleClassNullableOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfObjectToDateTime _$SimpleClassOfObjectToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeToDynamoJson(
        SimpleClassOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTime
    _$SimpleClassNullableOfObjectToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDateTimeToDynamoJson(
        SimpleClassNullableOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfStringToDateTime _$SimpleClassOfStringToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDateTimeToDynamoJson(
        SimpleClassOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTime
    _$SimpleClassNullableOfStringToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDateTimeToDynamoJson(
        SimpleClassNullableOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfUriToDateTime _$SimpleClassOfUriToDateTimeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToDateTime(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDateTimeToDynamoJson(
        SimpleClassOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTime
    _$SimpleClassNullableOfUriToDateTimeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDateTime(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeToDynamoJson(
        SimpleClassNullableOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfBigIntToDateTimeNullable
    _$SimpleClassOfBigIntToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeNullableToDynamoJson(
        SimpleClassOfBigIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTimeNullable
    _$SimpleClassNullableOfBigIntToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfBigIntToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfBigIntToDateTimeNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
        };

SimpleClassOfDateTimeToDateTimeNullable
    _$SimpleClassOfDateTimeToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeNullableToDynamoJson(
        SimpleClassOfDateTimeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTimeNullable
    _$SimpleClassNullableOfDateTimeToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToDateTimeNullable instance) =>
        <String, dynamic>{
          'value': instance.value?.map(
              (k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
        };

SimpleClassOfDynamicToDateTimeNullable
    _$SimpleClassOfDynamicToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeNullableToDynamoJson(
        SimpleClassOfDynamicToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTimeNullable
    _$SimpleClassNullableOfDynamicToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDynamicToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfDynamicToDateTimeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
        };

SimpleClassOfEnumTypeToDateTimeNullable
    _$SimpleClassOfEnumTypeToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeNullableToDynamoJson(
        SimpleClassOfEnumTypeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTimeNullable
    _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToDateTimeNullable instance) =>
        <String, dynamic>{
          'value': instance.value?.map(
              (k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toIso8601String())),
        };

SimpleClassOfIntToDateTimeNullable
    _$SimpleClassOfIntToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToDateTimeNullableToDynamoJson(
        SimpleClassOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTimeNullable
    _$SimpleClassNullableOfIntToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeNullableToDynamoJson(
        SimpleClassNullableOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfObjectToDateTimeNullable
    _$SimpleClassOfObjectToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeNullableToDynamoJson(
        SimpleClassOfObjectToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTimeNullable
    _$SimpleClassNullableOfObjectToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfObjectToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfObjectToDateTimeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
        };

SimpleClassOfStringToDateTimeNullable
    _$SimpleClassOfStringToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDateTimeNullableToDynamoJson(
        SimpleClassOfStringToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTimeNullable
    _$SimpleClassNullableOfStringToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfStringToDateTimeNullableToDynamoJson(
            SimpleClassNullableOfStringToDateTimeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
        };

SimpleClassOfUriToDateTimeNullable
    _$SimpleClassOfUriToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToDateTimeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToDateTimeNullableToDynamoJson(
        SimpleClassOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTimeNullable
    _$SimpleClassNullableOfUriToDateTimeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDateTimeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeNullableToDynamoJson(
        SimpleClassNullableOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfBigIntToDouble _$SimpleClassOfBigIntToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleToDynamoJson(
        SimpleClassOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDouble
    _$SimpleClassNullableOfBigIntToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleToDynamoJson(
        SimpleClassNullableOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDouble _$SimpleClassOfDateTimeToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleToDynamoJson(
        SimpleClassOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDouble
    _$SimpleClassNullableOfDateTimeToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDoubleToDynamoJson(
        SimpleClassNullableOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDouble _$SimpleClassOfDynamicToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleToDynamoJson(
        SimpleClassOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDouble
    _$SimpleClassNullableOfDynamicToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleToDynamoJson(
        SimpleClassNullableOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDouble _$SimpleClassOfEnumTypeToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleToDynamoJson(
        SimpleClassOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToDouble
    _$SimpleClassNullableOfEnumTypeToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDoubleToDynamoJson(
        SimpleClassNullableOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToDouble _$SimpleClassOfIntToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDoubleToDynamoJson(
        SimpleClassOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDouble
    _$SimpleClassNullableOfIntToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleToDynamoJson(
        SimpleClassNullableOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDouble _$SimpleClassOfObjectToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDoubleToDynamoJson(
        SimpleClassOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDouble
    _$SimpleClassNullableOfObjectToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleToDynamoJson(
        SimpleClassNullableOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDouble _$SimpleClassOfStringToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDoubleToDynamoJson(
        SimpleClassOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDouble
    _$SimpleClassNullableOfStringToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleToDynamoJson(
        SimpleClassNullableOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDouble _$SimpleClassOfUriToDoubleFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToDouble(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDoubleToDynamoJson(
        SimpleClassOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDouble
    _$SimpleClassNullableOfUriToDoubleFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDouble(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleToDynamoJson(
        SimpleClassNullableOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDoubleNullable
    _$SimpleClassOfBigIntToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleNullableToDynamoJson(
        SimpleClassOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDoubleNullable
    _$SimpleClassNullableOfBigIntToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleNullableToDynamoJson(
        SimpleClassNullableOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDoubleNullable
    _$SimpleClassOfDateTimeToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleNullableToDynamoJson(
        SimpleClassOfDateTimeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDoubleNullable
    _$SimpleClassNullableOfDateTimeToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToDoubleNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToDoubleNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
        };

SimpleClassOfDynamicToDoubleNullable
    _$SimpleClassOfDynamicToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleNullableToDynamoJson(
        SimpleClassOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDoubleNullable
    _$SimpleClassNullableOfDynamicToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleNullableToDynamoJson(
        SimpleClassNullableOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDoubleNullable
    _$SimpleClassOfEnumTypeToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleNullableToDynamoJson(
        SimpleClassOfEnumTypeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToDoubleNullable
    _$SimpleClassNullableOfEnumTypeToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToDoubleNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToDoubleNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
        };

SimpleClassOfIntToDoubleNullable
    _$SimpleClassOfIntToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToDoubleNullableToDynamoJson(
        SimpleClassOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDoubleNullable
    _$SimpleClassNullableOfIntToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleNullableToDynamoJson(
        SimpleClassNullableOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDoubleNullable
    _$SimpleClassOfObjectToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDoubleNullableToDynamoJson(
        SimpleClassOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDoubleNullable
    _$SimpleClassNullableOfObjectToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleNullableToDynamoJson(
        SimpleClassNullableOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDoubleNullable
    _$SimpleClassOfStringToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDoubleNullableToDynamoJson(
        SimpleClassOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDoubleNullable
    _$SimpleClassNullableOfStringToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleNullableToDynamoJson(
        SimpleClassNullableOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDoubleNullable
    _$SimpleClassOfUriToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToDoubleNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToDoubleNullableToDynamoJson(
        SimpleClassOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDoubleNullable
    _$SimpleClassNullableOfUriToDoubleNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDoubleNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleNullableToDynamoJson(
        SimpleClassNullableOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDuration _$SimpleClassOfBigIntToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDurationToDynamoJson(
        SimpleClassOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDuration
    _$SimpleClassNullableOfBigIntToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDurationToDynamoJson(
        SimpleClassNullableOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfDateTimeToDuration _$SimpleClassOfDateTimeToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationToDynamoJson(
        SimpleClassOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDuration
    _$SimpleClassNullableOfDateTimeToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDurationToDynamoJson(
        SimpleClassNullableOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassOfDynamicToDuration _$SimpleClassOfDynamicToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDurationToDynamoJson(
        SimpleClassOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDuration
    _$SimpleClassNullableOfDynamicToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDurationToDynamoJson(
        SimpleClassNullableOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfEnumTypeToDuration _$SimpleClassOfEnumTypeToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
            Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationToDynamoJson(
        SimpleClassOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDuration
    _$SimpleClassNullableOfEnumTypeToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDurationToDynamoJson(
        SimpleClassNullableOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.inMicroseconds)),
    };

SimpleClassOfIntToDuration _$SimpleClassOfIntToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDurationToDynamoJson(
        SimpleClassOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfIntToDuration
    _$SimpleClassNullableOfIntToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationToDynamoJson(
        SimpleClassNullableOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfObjectToDuration _$SimpleClassOfObjectToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDurationToDynamoJson(
        SimpleClassOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDuration
    _$SimpleClassNullableOfObjectToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDurationToDynamoJson(
        SimpleClassNullableOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfStringToDuration _$SimpleClassOfStringToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDurationToDynamoJson(
        SimpleClassOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfStringToDuration
    _$SimpleClassNullableOfStringToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDurationToDynamoJson(
        SimpleClassNullableOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfUriToDuration _$SimpleClassOfUriToDurationFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToDuration(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDurationToDynamoJson(
        SimpleClassOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfUriToDuration
    _$SimpleClassNullableOfUriToDurationFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDuration(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationToDynamoJson(
        SimpleClassNullableOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfBigIntToDurationNullable
    _$SimpleClassOfBigIntToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDurationNullableToDynamoJson(
        SimpleClassOfBigIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDurationNullable
    _$SimpleClassNullableOfBigIntToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfBigIntToDurationNullableToDynamoJson(
            SimpleClassNullableOfBigIntToDurationNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
        };

SimpleClassOfDateTimeToDurationNullable
    _$SimpleClassOfDateTimeToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationNullableToDynamoJson(
        SimpleClassOfDateTimeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDurationNullable
    _$SimpleClassNullableOfDateTimeToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToDurationNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToDurationNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
        };

SimpleClassOfDynamicToDurationNullable
    _$SimpleClassOfDynamicToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDurationNullableToDynamoJson(
        SimpleClassOfDynamicToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDurationNullable
    _$SimpleClassNullableOfDynamicToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDynamicToDurationNullableToDynamoJson(
            SimpleClassNullableOfDynamicToDurationNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
        };

SimpleClassOfEnumTypeToDurationNullable
    _$SimpleClassOfEnumTypeToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationNullableToDynamoJson(
        SimpleClassOfEnumTypeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDurationNullable
    _$SimpleClassNullableOfEnumTypeToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToDurationNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToDurationNullable instance) =>
        <String, dynamic>{
          'value': instance.value?.map(
              (k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.inMicroseconds)),
        };

SimpleClassOfIntToDurationNullable
    _$SimpleClassOfIntToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(int.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToDurationNullableToDynamoJson(
        SimpleClassOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfIntToDurationNullable
    _$SimpleClassNullableOfIntToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationNullableToDynamoJson(
        SimpleClassNullableOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfObjectToDurationNullable
    _$SimpleClassOfObjectToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDurationNullableToDynamoJson(
        SimpleClassOfObjectToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDurationNullable
    _$SimpleClassNullableOfObjectToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfObjectToDurationNullableToDynamoJson(
            SimpleClassNullableOfObjectToDurationNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
        };

SimpleClassOfStringToDurationNullable
    _$SimpleClassOfStringToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDurationNullableToDynamoJson(
        SimpleClassOfStringToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfStringToDurationNullable
    _$SimpleClassNullableOfStringToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfStringToDurationNullableToDynamoJson(
            SimpleClassNullableOfStringToDurationNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
        };

SimpleClassOfUriToDurationNullable
    _$SimpleClassOfUriToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToDurationNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(Uri.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToDurationNullableToDynamoJson(
        SimpleClassOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfUriToDurationNullable
    _$SimpleClassNullableOfUriToDurationNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDurationNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationNullableToDynamoJson(
        SimpleClassNullableOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfBigIntToDynamic _$SimpleClassOfBigIntToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToDynamic(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDynamicToDynamoJson(
        SimpleClassOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDynamic
    _$SimpleClassNullableOfBigIntToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToDynamic(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDynamicToDynamoJson(
        SimpleClassNullableOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDynamic _$SimpleClassOfDateTimeToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToDynamic(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDynamicToDynamoJson(
        SimpleClassOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDynamic
    _$SimpleClassNullableOfDateTimeToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToDynamic(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDynamicToDynamoJson(
        SimpleClassNullableOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDynamic _$SimpleClassOfDynamicToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToDynamic(
      json['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDynamicToDynamoJson(
        SimpleClassOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDynamic
    _$SimpleClassNullableOfDynamicToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToDynamic(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDynamicToDynamoJson(
        SimpleClassNullableOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDynamic _$SimpleClassOfEnumTypeToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToDynamic(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDynamicToDynamoJson(
        SimpleClassOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToDynamic
    _$SimpleClassNullableOfEnumTypeToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToDynamic(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDynamicToDynamoJson(
        SimpleClassNullableOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToDynamic _$SimpleClassOfIntToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToDynamic(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDynamicToDynamoJson(
        SimpleClassOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDynamic
    _$SimpleClassNullableOfIntToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToDynamic(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDynamicToDynamoJson(
        SimpleClassNullableOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDynamic _$SimpleClassOfObjectToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToDynamic(
      json['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfObjectToDynamicToDynamoJson(
        SimpleClassOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDynamic
    _$SimpleClassNullableOfObjectToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToDynamic(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDynamicToDynamoJson(
        SimpleClassNullableOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDynamic _$SimpleClassOfStringToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToDynamic(
      json['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfStringToDynamicToDynamoJson(
        SimpleClassOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDynamic
    _$SimpleClassNullableOfStringToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToDynamic(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDynamicToDynamoJson(
        SimpleClassNullableOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDynamic _$SimpleClassOfUriToDynamicFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToDynamic(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDynamicToDynamoJson(
        SimpleClassOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDynamic
    _$SimpleClassNullableOfUriToDynamicFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToDynamic(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDynamicToDynamoJson(
        SimpleClassNullableOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToEnumType _$SimpleClassOfBigIntToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeToDynamoJson(
        SimpleClassOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfBigIntToEnumType
    _$SimpleClassNullableOfBigIntToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(BigInt.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToEnumTypeToDynamoJson(
        SimpleClassNullableOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfDateTimeToEnumType _$SimpleClassOfDateTimeToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(DateTime.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeToDynamoJson(
        SimpleClassOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfDateTimeToEnumType
    _$SimpleClassNullableOfDateTimeToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(DateTime.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToEnumTypeToDynamoJson(
        SimpleClassNullableOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfDynamicToEnumType _$SimpleClassOfDynamicToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeToDynamoJson(
        SimpleClassOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfDynamicToEnumType
    _$SimpleClassNullableOfDynamicToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToEnumTypeToDynamoJson(
        SimpleClassNullableOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfEnumTypeToEnumType _$SimpleClassOfEnumTypeToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
            $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeToDynamoJson(
        SimpleClassOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map(
          (k, e) => MapEntry(_$EnumTypeEnumMap[k]!, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfEnumTypeToEnumType
    _$SimpleClassNullableOfEnumTypeToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToEnumTypeToDynamoJson(
        SimpleClassNullableOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map(
          (k, e) => MapEntry(_$EnumTypeEnumMap[k]!, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfIntToEnumType _$SimpleClassOfIntToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeToDynamoJson(
        SimpleClassOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfIntToEnumType
    _$SimpleClassNullableOfIntToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeToDynamoJson(
        SimpleClassNullableOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfObjectToEnumType _$SimpleClassOfObjectToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeToDynamoJson(
        SimpleClassOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfObjectToEnumType
    _$SimpleClassNullableOfObjectToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToEnumTypeToDynamoJson(
        SimpleClassNullableOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfStringToEnumType _$SimpleClassOfStringToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeToDynamoJson(
        SimpleClassOfStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfStringToEnumType
    _$SimpleClassNullableOfStringToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToEnumTypeToDynamoJson(
        SimpleClassNullableOfStringToEnumType instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfUriToEnumType _$SimpleClassOfUriToEnumTypeFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToEnumType(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeToDynamoJson(
        SimpleClassOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassNullableOfUriToEnumType
    _$SimpleClassNullableOfUriToEnumTypeFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToEnumType(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeToDynamoJson(
        SimpleClassNullableOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e]!)),
    };

SimpleClassOfBigIntToEnumTypeNullable
    _$SimpleClassOfBigIntToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                BigInt.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeNullableToDynamoJson(
        SimpleClassOfBigIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfBigIntToEnumTypeNullable
    _$SimpleClassNullableOfBigIntToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfBigIntToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfBigIntToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value': instance.value
              ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
        };

SimpleClassOfDateTimeToEnumTypeNullable
    _$SimpleClassOfDateTimeToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                DateTime.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeNullableToDynamoJson(
        SimpleClassOfDateTimeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDateTimeToEnumTypeNullable
    _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value': instance.value?.map(
              (k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
        };

SimpleClassOfDynamicToEnumTypeNullable
    _$SimpleClassOfDynamicToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeNullableToDynamoJson(
        SimpleClassOfDynamicToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDynamicToEnumTypeNullable
    _$SimpleClassNullableOfDynamicToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDynamicToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfDynamicToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
        };

SimpleClassOfEnumTypeToEnumTypeNullable
    _$SimpleClassOfEnumTypeToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeNullableToDynamoJson(
        SimpleClassOfEnumTypeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfEnumTypeToEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value': instance.value?.map(
              (k, e) => MapEntry(_$EnumTypeEnumMap[k]!, _$EnumTypeEnumMap[e])),
        };

SimpleClassOfIntToEnumTypeNullable
    _$SimpleClassOfIntToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                int.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeNullableToDynamoJson(
        SimpleClassOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfIntToEnumTypeNullable
    _$SimpleClassNullableOfIntToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeNullableToDynamoJson(
        SimpleClassNullableOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfObjectToEnumTypeNullable
    _$SimpleClassOfObjectToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeNullableToDynamoJson(
        SimpleClassOfObjectToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfObjectToEnumTypeNullable
    _$SimpleClassNullableOfObjectToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfObjectToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfObjectToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
        };

SimpleClassOfStringToEnumTypeNullable
    _$SimpleClassOfStringToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeNullableToDynamoJson(
        SimpleClassOfStringToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfStringToEnumTypeNullable
    _$SimpleClassNullableOfStringToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfStringToEnumTypeNullableToDynamoJson(
            SimpleClassNullableOfStringToEnumTypeNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
        };

SimpleClassOfUriToEnumTypeNullable
    _$SimpleClassOfUriToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                Uri.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeNullableToDynamoJson(
        SimpleClassOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfUriToEnumTypeNullable
    _$SimpleClassNullableOfUriToEnumTypeNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToEnumTypeNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeNullableToDynamoJson(
        SimpleClassNullableOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfBigIntToInt _$SimpleClassOfBigIntToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToIntToDynamoJson(
        SimpleClassOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToInt
    _$SimpleClassNullableOfBigIntToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntToDynamoJson(
        SimpleClassNullableOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToInt _$SimpleClassOfDateTimeToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToIntToDynamoJson(
        SimpleClassOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToInt
    _$SimpleClassNullableOfDateTimeToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntToDynamoJson(
        SimpleClassNullableOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToInt _$SimpleClassOfDynamicToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToInt(
      Map<String, int>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToIntToDynamoJson(
        SimpleClassOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToInt
    _$SimpleClassNullableOfDynamicToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntToDynamoJson(
        SimpleClassNullableOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToInt _$SimpleClassOfEnumTypeToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntToDynamoJson(
        SimpleClassOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToInt
    _$SimpleClassNullableOfEnumTypeToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntToDynamoJson(
        SimpleClassNullableOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToInt _$SimpleClassOfIntToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToIntToDynamoJson(
        SimpleClassOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToInt _$SimpleClassNullableOfIntToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfIntToInt(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToIntToDynamoJson(
        SimpleClassNullableOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToInt _$SimpleClassOfObjectToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToInt(
      Map<String, int>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToIntToDynamoJson(
        SimpleClassOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToInt
    _$SimpleClassNullableOfObjectToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntToDynamoJson(
        SimpleClassNullableOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToInt _$SimpleClassOfStringToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToInt(
      Map<String, int>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToIntToDynamoJson(
        SimpleClassOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToInt
    _$SimpleClassNullableOfStringToIntFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToInt(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToIntToDynamoJson(
        SimpleClassNullableOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToInt _$SimpleClassOfUriToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToInt(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToIntToDynamoJson(
        SimpleClassOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToInt _$SimpleClassNullableOfUriToIntFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfUriToInt(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToIntToDynamoJson(
        SimpleClassNullableOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToIntNullable
    _$SimpleClassOfBigIntToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToIntNullableToDynamoJson(
        SimpleClassOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToIntNullable
    _$SimpleClassNullableOfBigIntToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntNullableToDynamoJson(
        SimpleClassNullableOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToIntNullable
    _$SimpleClassOfDateTimeToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToIntNullableToDynamoJson(
        SimpleClassOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToIntNullable
    _$SimpleClassNullableOfDateTimeToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntNullableToDynamoJson(
        SimpleClassNullableOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToIntNullable
    _$SimpleClassOfDynamicToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToIntNullable(
          Map<String, int?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToIntNullableToDynamoJson(
        SimpleClassOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToIntNullable
    _$SimpleClassNullableOfDynamicToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntNullableToDynamoJson(
        SimpleClassNullableOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToIntNullable
    _$SimpleClassOfEnumTypeToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToIntNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntNullableToDynamoJson(
        SimpleClassOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToIntNullable
    _$SimpleClassNullableOfEnumTypeToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntNullableToDynamoJson(
        SimpleClassNullableOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToIntNullable _$SimpleClassOfIntToIntNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToIntNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToIntNullableToDynamoJson(
        SimpleClassOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToIntNullable
    _$SimpleClassNullableOfIntToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToIntNullableToDynamoJson(
        SimpleClassNullableOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToIntNullable
    _$SimpleClassOfObjectToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToIntNullable(
          Map<String, int?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfObjectToIntNullableToDynamoJson(
        SimpleClassOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToIntNullable
    _$SimpleClassNullableOfObjectToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntNullableToDynamoJson(
        SimpleClassNullableOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToIntNullable
    _$SimpleClassOfStringToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToIntNullable(
          Map<String, int?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfStringToIntNullableToDynamoJson(
        SimpleClassOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToIntNullable
    _$SimpleClassNullableOfStringToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToIntNullableToDynamoJson(
        SimpleClassNullableOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToIntNullable _$SimpleClassOfUriToIntNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToIntNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToIntNullableToDynamoJson(
        SimpleClassOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToIntNullable
    _$SimpleClassNullableOfUriToIntNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToIntNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToIntNullableToDynamoJson(
        SimpleClassNullableOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNum _$SimpleClassOfBigIntToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToNum(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToNumToDynamoJson(
        SimpleClassOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNum
    _$SimpleClassNullableOfBigIntToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumToDynamoJson(
        SimpleClassNullableOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNum _$SimpleClassOfDateTimeToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToNum(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToNumToDynamoJson(
        SimpleClassOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNum
    _$SimpleClassNullableOfDateTimeToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumToDynamoJson(
        SimpleClassNullableOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNum _$SimpleClassOfDynamicToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToNum(
      Map<String, num>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToNumToDynamoJson(
        SimpleClassOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNum
    _$SimpleClassNullableOfDynamicToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumToDynamoJson(
        SimpleClassNullableOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNum _$SimpleClassOfEnumTypeToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToNum(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumToDynamoJson(
        SimpleClassOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToNum
    _$SimpleClassNullableOfEnumTypeToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumToDynamoJson(
        SimpleClassNullableOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToNum _$SimpleClassOfIntToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToNum(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToNumToDynamoJson(
        SimpleClassOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNum _$SimpleClassNullableOfIntToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfIntToNum(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToNumToDynamoJson(
        SimpleClassNullableOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNum _$SimpleClassOfObjectToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToNum(
      Map<String, num>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToNumToDynamoJson(
        SimpleClassOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNum
    _$SimpleClassNullableOfObjectToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumToDynamoJson(
        SimpleClassNullableOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNum _$SimpleClassOfStringToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToNum(
      Map<String, num>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToNumToDynamoJson(
        SimpleClassOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNum
    _$SimpleClassNullableOfStringToNumFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToNum(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToNumToDynamoJson(
        SimpleClassNullableOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNum _$SimpleClassOfUriToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToNum(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToNumToDynamoJson(
        SimpleClassOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNum _$SimpleClassNullableOfUriToNumFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfUriToNum(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToNumToDynamoJson(
        SimpleClassNullableOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNumNullable
    _$SimpleClassOfBigIntToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToNumNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToNumNullableToDynamoJson(
        SimpleClassOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNumNullable
    _$SimpleClassNullableOfBigIntToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumNullableToDynamoJson(
        SimpleClassNullableOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNumNullable
    _$SimpleClassOfDateTimeToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToNumNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToNumNullableToDynamoJson(
        SimpleClassOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNumNullable
    _$SimpleClassNullableOfDateTimeToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumNullableToDynamoJson(
        SimpleClassNullableOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNumNullable
    _$SimpleClassOfDynamicToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToNumNullable(
          Map<String, num?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToNumNullableToDynamoJson(
        SimpleClassOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNumNullable
    _$SimpleClassNullableOfDynamicToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumNullableToDynamoJson(
        SimpleClassNullableOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNumNullable
    _$SimpleClassOfEnumTypeToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToNumNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumNullableToDynamoJson(
        SimpleClassOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToNumNullable
    _$SimpleClassNullableOfEnumTypeToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumNullableToDynamoJson(
        SimpleClassNullableOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToNumNullable _$SimpleClassOfIntToNumNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToNumNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as num?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToNumNullableToDynamoJson(
        SimpleClassOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNumNullable
    _$SimpleClassNullableOfIntToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToNumNullableToDynamoJson(
        SimpleClassNullableOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNumNullable
    _$SimpleClassOfObjectToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToNumNullable(
          Map<String, num?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfObjectToNumNullableToDynamoJson(
        SimpleClassOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNumNullable
    _$SimpleClassNullableOfObjectToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumNullableToDynamoJson(
        SimpleClassNullableOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNumNullable
    _$SimpleClassOfStringToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToNumNullable(
          Map<String, num?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfStringToNumNullableToDynamoJson(
        SimpleClassOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNumNullable
    _$SimpleClassNullableOfStringToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToNumNullableToDynamoJson(
        SimpleClassNullableOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNumNullable _$SimpleClassOfUriToNumNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToNumNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as num?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToNumNullableToDynamoJson(
        SimpleClassOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNumNullable
    _$SimpleClassNullableOfUriToNumNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToNumNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToNumNullableToDynamoJson(
        SimpleClassNullableOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObject _$SimpleClassOfBigIntToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToObjectToDynamoJson(
        SimpleClassOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObject
    _$SimpleClassNullableOfBigIntToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectToDynamoJson(
        SimpleClassNullableOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObject _$SimpleClassOfDateTimeToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectToDynamoJson(
        SimpleClassOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObject
    _$SimpleClassNullableOfDateTimeToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToObjectToDynamoJson(
        SimpleClassNullableOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToObject _$SimpleClassOfDynamicToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToObjectToDynamoJson(
        SimpleClassOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObject
    _$SimpleClassNullableOfDynamicToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectToDynamoJson(
        SimpleClassNullableOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObject _$SimpleClassOfEnumTypeToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectToDynamoJson(
        SimpleClassOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToObject
    _$SimpleClassNullableOfEnumTypeToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToObjectToDynamoJson(
        SimpleClassNullableOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToObject _$SimpleClassOfIntToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToObjectToDynamoJson(
        SimpleClassOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObject
    _$SimpleClassNullableOfIntToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectToDynamoJson(
        SimpleClassNullableOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObject _$SimpleClassOfObjectToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToObjectToDynamoJson(
        SimpleClassOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObject
    _$SimpleClassNullableOfObjectToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectToDynamoJson(
        SimpleClassNullableOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObject _$SimpleClassOfStringToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToObjectToDynamoJson(
        SimpleClassOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObject
    _$SimpleClassNullableOfStringToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectToDynamoJson(
        SimpleClassNullableOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObject _$SimpleClassOfUriToObjectFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToObject(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToObjectToDynamoJson(
        SimpleClassOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObject
    _$SimpleClassNullableOfUriToObjectFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToObject(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectToDynamoJson(
        SimpleClassNullableOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObjectNullable
    _$SimpleClassOfBigIntToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToObjectNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToObjectNullableToDynamoJson(
        SimpleClassOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObjectNullable
    _$SimpleClassNullableOfBigIntToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToObjectNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectNullableToDynamoJson(
        SimpleClassNullableOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObjectNullable
    _$SimpleClassOfDateTimeToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToObjectNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectNullableToDynamoJson(
        SimpleClassOfDateTimeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObjectNullable
    _$SimpleClassNullableOfDateTimeToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToObjectNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToObjectNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToObjectNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
        };

SimpleClassOfDynamicToObjectNullable
    _$SimpleClassOfDynamicToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToObjectNullable(
          json['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfDynamicToObjectNullableToDynamoJson(
        SimpleClassOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObjectNullable
    _$SimpleClassNullableOfDynamicToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToObjectNullable(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectNullableToDynamoJson(
        SimpleClassNullableOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObjectNullable
    _$SimpleClassOfEnumTypeToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToObjectNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectNullableToDynamoJson(
        SimpleClassOfEnumTypeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToObjectNullable
    _$SimpleClassNullableOfEnumTypeToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToObjectNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToObjectNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToObjectNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
        };

SimpleClassOfIntToObjectNullable
    _$SimpleClassOfIntToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToObjectNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(int.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToObjectNullableToDynamoJson(
        SimpleClassOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObjectNullable
    _$SimpleClassNullableOfIntToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToObjectNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectNullableToDynamoJson(
        SimpleClassNullableOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObjectNullable
    _$SimpleClassOfObjectToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToObjectNullable(
          json['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfObjectToObjectNullableToDynamoJson(
        SimpleClassOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObjectNullable
    _$SimpleClassNullableOfObjectToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToObjectNullable(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectNullableToDynamoJson(
        SimpleClassNullableOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObjectNullable
    _$SimpleClassOfStringToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToObjectNullable(
          json['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfStringToObjectNullableToDynamoJson(
        SimpleClassOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObjectNullable
    _$SimpleClassNullableOfStringToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToObjectNullable(
          json['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectNullableToDynamoJson(
        SimpleClassNullableOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObjectNullable
    _$SimpleClassOfUriToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToObjectNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(Uri.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToObjectNullableToDynamoJson(
        SimpleClassOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObjectNullable
    _$SimpleClassNullableOfUriToObjectNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToObjectNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectNullableToDynamoJson(
        SimpleClassNullableOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToString _$SimpleClassOfBigIntToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToString(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToStringToDynamoJson(
        SimpleClassOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToString
    _$SimpleClassNullableOfBigIntToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringToDynamoJson(
        SimpleClassNullableOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToString _$SimpleClassOfDateTimeToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToString(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToStringToDynamoJson(
        SimpleClassOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToString
    _$SimpleClassNullableOfDateTimeToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToStringToDynamoJson(
        SimpleClassNullableOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToString _$SimpleClassOfDynamicToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToString(
      Map<String, String>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToStringToDynamoJson(
        SimpleClassOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToString
    _$SimpleClassNullableOfDynamicToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringToDynamoJson(
        SimpleClassNullableOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToString _$SimpleClassOfEnumTypeToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToString(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringToDynamoJson(
        SimpleClassOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToString
    _$SimpleClassNullableOfEnumTypeToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToStringToDynamoJson(
        SimpleClassNullableOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassOfIntToString _$SimpleClassOfIntToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToString(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToStringToDynamoJson(
        SimpleClassOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToString
    _$SimpleClassNullableOfIntToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToStringToDynamoJson(
        SimpleClassNullableOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToString _$SimpleClassOfObjectToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToString(
      Map<String, String>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToStringToDynamoJson(
        SimpleClassOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToString
    _$SimpleClassNullableOfObjectToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringToDynamoJson(
        SimpleClassNullableOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToString _$SimpleClassOfStringToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToString(
      Map<String, String>.from(json['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToStringToDynamoJson(
        SimpleClassOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToString
    _$SimpleClassNullableOfStringToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToStringToDynamoJson(
        SimpleClassNullableOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToString _$SimpleClassOfUriToStringFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToString(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToStringToDynamoJson(
        SimpleClassOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToString
    _$SimpleClassNullableOfUriToStringFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToString(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToStringToDynamoJson(
        SimpleClassNullableOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToStringNullable
    _$SimpleClassOfBigIntToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToStringNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToStringNullableToDynamoJson(
        SimpleClassOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToStringNullable
    _$SimpleClassNullableOfBigIntToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringNullableToDynamoJson(
        SimpleClassNullableOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToStringNullable
    _$SimpleClassOfDateTimeToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToStringNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToStringNullableToDynamoJson(
        SimpleClassOfDateTimeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToStringNullable
    _$SimpleClassNullableOfDateTimeToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as String?),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfDateTimeToStringNullableToDynamoJson(
            SimpleClassNullableOfDateTimeToStringNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
        };

SimpleClassOfDynamicToStringNullable
    _$SimpleClassOfDynamicToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToStringNullable(
          Map<String, String?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToStringNullableToDynamoJson(
        SimpleClassOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToStringNullable
    _$SimpleClassNullableOfDynamicToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringNullableToDynamoJson(
        SimpleClassNullableOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToStringNullable
    _$SimpleClassOfEnumTypeToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToStringNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringNullableToDynamoJson(
        SimpleClassOfEnumTypeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
    };

SimpleClassNullableOfEnumTypeToStringNullable
    _$SimpleClassNullableOfEnumTypeToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String?),
          ),
        );

Map<String, dynamic>
    _$SimpleClassNullableOfEnumTypeToStringNullableToDynamoJson(
            SimpleClassNullableOfEnumTypeToStringNullable instance) =>
        <String, dynamic>{
          'value':
              instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e)),
        };

SimpleClassOfIntToStringNullable
    _$SimpleClassOfIntToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfIntToStringNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(int.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToStringNullableToDynamoJson(
        SimpleClassOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToStringNullable
    _$SimpleClassNullableOfIntToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToStringNullableToDynamoJson(
        SimpleClassNullableOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToStringNullable
    _$SimpleClassOfObjectToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToStringNullable(
          Map<String, String?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfObjectToStringNullableToDynamoJson(
        SimpleClassOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToStringNullable
    _$SimpleClassNullableOfObjectToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringNullableToDynamoJson(
        SimpleClassNullableOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToStringNullable
    _$SimpleClassOfStringToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToStringNullable(
          Map<String, String?>.from(json['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfStringToStringNullableToDynamoJson(
        SimpleClassOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToStringNullable
    _$SimpleClassNullableOfStringToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToStringNullableToDynamoJson(
        SimpleClassNullableOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToStringNullable
    _$SimpleClassOfUriToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfUriToStringNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(Uri.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToStringNullableToDynamoJson(
        SimpleClassOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToStringNullable
    _$SimpleClassNullableOfUriToStringNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToStringNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToStringNullableToDynamoJson(
        SimpleClassNullableOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToUri _$SimpleClassOfBigIntToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfBigIntToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToUriToDynamoJson(
        SimpleClassOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToUri
    _$SimpleClassNullableOfBigIntToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriToDynamoJson(
        SimpleClassNullableOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToUri _$SimpleClassOfDateTimeToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDateTimeToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToUriToDynamoJson(
        SimpleClassOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToUri
    _$SimpleClassNullableOfDateTimeToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriToDynamoJson(
        SimpleClassNullableOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToUri _$SimpleClassOfDynamicToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfDynamicToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToUriToDynamoJson(
        SimpleClassOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToUri
    _$SimpleClassNullableOfDynamicToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriToDynamoJson(
        SimpleClassNullableOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToUri _$SimpleClassOfEnumTypeToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfEnumTypeToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriToDynamoJson(
        SimpleClassOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toString())),
    };

SimpleClassNullableOfEnumTypeToUri
    _$SimpleClassNullableOfEnumTypeToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriToDynamoJson(
        SimpleClassNullableOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e.toString())),
    };

SimpleClassOfIntToUri _$SimpleClassOfIntToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToUriToDynamoJson(
        SimpleClassOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToUri _$SimpleClassNullableOfIntToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfIntToUri(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToUriToDynamoJson(
        SimpleClassNullableOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToUri _$SimpleClassOfObjectToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfObjectToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToUriToDynamoJson(
        SimpleClassOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToUri
    _$SimpleClassNullableOfObjectToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriToDynamoJson(
        SimpleClassNullableOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToUri _$SimpleClassOfStringToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfStringToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToUriToDynamoJson(
        SimpleClassOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToUri
    _$SimpleClassNullableOfStringToUriFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToUri(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToUriToDynamoJson(
        SimpleClassNullableOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToUri _$SimpleClassOfUriToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToUri(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToUriToDynamoJson(
        SimpleClassOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToUri _$SimpleClassNullableOfUriToUriFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassNullableOfUriToUri(
      (json['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToUriToDynamoJson(
        SimpleClassNullableOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToUriNullable
    _$SimpleClassOfBigIntToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfBigIntToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToUriNullableToDynamoJson(
        SimpleClassOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToUriNullable
    _$SimpleClassNullableOfBigIntToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfBigIntToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriNullableToDynamoJson(
        SimpleClassNullableOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToUriNullable
    _$SimpleClassOfDateTimeToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDateTimeToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToUriNullableToDynamoJson(
        SimpleClassOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToUriNullable
    _$SimpleClassNullableOfDateTimeToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDateTimeToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriNullableToDynamoJson(
        SimpleClassNullableOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassOfDynamicToUriNullable
    _$SimpleClassOfDynamicToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfDynamicToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToUriNullableToDynamoJson(
        SimpleClassOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToUriNullable
    _$SimpleClassNullableOfDynamicToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfDynamicToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriNullableToDynamoJson(
        SimpleClassNullableOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToUriNullable
    _$SimpleClassOfEnumTypeToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfEnumTypeToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriNullableToDynamoJson(
        SimpleClassOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toString())),
    };

SimpleClassNullableOfEnumTypeToUriNullable
    _$SimpleClassNullableOfEnumTypeToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfEnumTypeToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriNullableToDynamoJson(
        SimpleClassNullableOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k]!, e?.toString())),
    };

SimpleClassOfIntToUriNullable _$SimpleClassOfIntToUriNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfIntToUriNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(int.parse(k), e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToUriNullableToDynamoJson(
        SimpleClassOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToUriNullable
    _$SimpleClassNullableOfIntToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfIntToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToUriNullableToDynamoJson(
        SimpleClassNullableOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToUriNullable
    _$SimpleClassOfObjectToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfObjectToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToUriNullableToDynamoJson(
        SimpleClassOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToUriNullable
    _$SimpleClassNullableOfObjectToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfObjectToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriNullableToDynamoJson(
        SimpleClassNullableOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToUriNullable
    _$SimpleClassOfStringToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassOfStringToUriNullable(
          (json['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToUriNullableToDynamoJson(
        SimpleClassOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToUriNullable
    _$SimpleClassNullableOfStringToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfStringToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToUriNullableToDynamoJson(
        SimpleClassNullableOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToUriNullable _$SimpleClassOfUriToUriNullableFromDynamoJson(
        Map<String, dynamic> json) =>
    SimpleClassOfUriToUriNullable(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(Uri.parse(k), e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToUriNullableToDynamoJson(
        SimpleClassOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToUriNullable
    _$SimpleClassNullableOfUriToUriNullableFromDynamoJson(
            Map<String, dynamic> json) =>
        SimpleClassNullableOfUriToUriNullable(
          (json['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToUriNullableToDynamoJson(
        SimpleClassNullableOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };
