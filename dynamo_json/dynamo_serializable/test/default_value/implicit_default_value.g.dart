// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'implicit_default_value.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

DefaultValueImplicit _$DefaultValueImplicitFromDynamoJson(
        Map<String, dynamic> json) =>
    DefaultValueImplicit(
      fieldBool: json['fieldBool'] as bool? ?? true,
      fieldString: json['fieldString'] as String? ?? 'string',
      fieldInt: json['fieldInt'] as int? ?? 42,
      fieldDouble: (json['fieldDouble'] as num?)?.toDouble() ?? 3.14,
      fieldListEmpty: json['fieldListEmpty'] as List<dynamic>? ?? const [],
      fieldSetEmpty:
          (json['fieldSetEmpty'] as List<dynamic>?)?.toSet() ?? const {},
      fieldMapEmpty: json['fieldMapEmpty'] as Map<String, dynamic>? ?? const {},
      fieldListSimple: (json['fieldListSimple'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [1, 2, 3],
      fieldSetSimple: (json['fieldSetSimple'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {'entry1', 'entry2'},
      fieldMapSimple: (json['fieldMapSimple'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {'answer': 42},
      fieldMapListString:
          (json['fieldMapListString'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, (e as List<dynamic>).map((e) => e as String).toList()),
              ) ??
              const {
                'root': ['child']
              },
      fieldEnum:
          $enumDecodeNullable(_$GreekEnumMap, json['fieldEnum']) ?? Greek.beta,
      durationField: json['durationField'] == null
          ? const Duration()
          : Duration(microseconds: json['durationField'] as int),
      constClass: json['constClass'] == null
          ? const ConstClass('value')
          : ConstClass.fromDynamoJson(
              json['constClass'] as Map<String, dynamic>),
      valueFromConverter: json['valueFromConverter'] == null
          ? const ConstClass('value')
          : const ConstClassConverter()
              .fromDynamoJson(json['valueFromConverter'] as String),
      valueFromFunction: json['valueFromFunction'] == null
          ? const ConstClass('value')
          : constClassFromDynamoJson(json['valueFromFunction'] as String),
    );

Map<String, dynamic> _$DefaultValueImplicitToDynamoJson(
        DefaultValueImplicit instance) =>
    <String, dynamic>{
      'fieldBool': instance.fieldBool,
      'fieldString': instance.fieldString,
      'fieldInt': instance.fieldInt,
      'fieldDouble': instance.fieldDouble,
      'fieldListEmpty': instance.fieldListEmpty,
      'fieldSetEmpty': instance.fieldSetEmpty.toList(),
      'fieldMapEmpty': instance.fieldMapEmpty,
      'fieldListSimple': instance.fieldListSimple,
      'fieldSetSimple': instance.fieldSetSimple.toList(),
      'fieldMapSimple': instance.fieldMapSimple,
      'fieldMapListString': instance.fieldMapListString,
      'durationField': instance.durationField.inMicroseconds,
      'fieldEnum': _$GreekEnumMap[instance.fieldEnum]!,
      'constClass': instance.constClass.toDynamoJson(),
      'valueFromConverter':
          const ConstClassConverter().toDynamoJson(instance.valueFromConverter),
      'valueFromFunction': constClassToDynamoJson(instance.valueFromFunction),
    };

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
