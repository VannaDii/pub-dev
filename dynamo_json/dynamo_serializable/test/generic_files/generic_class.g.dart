// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'generic_class.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

GenericClass<T, S> _$GenericClassFromDynamoJson<T extends num, S>(
        Map<String, dynamic> json) =>
    GenericClass<T, S>()
      ..fieldObject = GenericClass._dataFromDynamoJson(
          json['fieldObject'] as Map<String, dynamic>)
      ..fieldDynamic = GenericClass._dataFromDynamoJson(
          json['fieldDynamic'] as Map<String, dynamic>)
      ..fieldInt = GenericClass._dataFromDynamoJson(
          json['fieldInt'] as Map<String, dynamic>)
      ..fieldT = GenericClass._dataFromDynamoJson(
          json['fieldT'] as Map<String, dynamic>)
      ..fieldS = GenericClass._dataFromDynamoJson(
          json['fieldS'] as Map<String, dynamic>);

Map<String, dynamic> _$GenericClassToDynamoJson<T extends num, S>(
        GenericClass<T, S> instance) =>
    <String, dynamic>{
      'fieldObject': GenericClass._dataToDynamoJson(instance.fieldObject),
      'fieldDynamic': GenericClass._dataToDynamoJson(instance.fieldDynamic),
      'fieldInt': GenericClass._dataToDynamoJson(instance.fieldInt),
      'fieldT': GenericClass._dataToDynamoJson(instance.fieldT),
      'fieldS': GenericClass._dataToDynamoJson(instance.fieldS),
    };

GenericClassWithConverter<T, S>
    _$GenericClassWithConverterFromDynamoJson<T extends num, S>(
            Map<String, dynamic> json) =>
        GenericClassWithConverter<T, S>()
          ..fieldObject = json['fieldObject']
          ..fieldDynamic = json['fieldDynamic']
          ..fieldInt = json['fieldInt'] as int?
          ..fieldT = _$DynamoConverterFromDynamoJson<Map<String, dynamic>, T>(
              json['fieldT'], _SimpleConverter<T?>().fromDynamoJson)
          ..fieldS = _$DynamoConverterFromDynamoJson<Map<String, dynamic>, S>(
              json['fieldS'], _SimpleConverter<S?>().fromDynamoJson)
          ..duration = const _DurationMillisecondConverter.named()
              .fromDynamoJson(json['duration'] as int?)
          ..listDuration = const _DurationListMillisecondConverter()
              .fromDynamoJson(json['listDuration'] as int?);

Map<String, dynamic> _$GenericClassWithConverterToDynamoJson<T extends num, S>(
        GenericClassWithConverter<T, S> instance) =>
    <String, dynamic>{
      'fieldObject': instance.fieldObject,
      'fieldDynamic': instance.fieldDynamic,
      'fieldInt': instance.fieldInt,
      'fieldT': _$DynamoConverterToDynamoJson<Map<String, dynamic>, T>(
          instance.fieldT, _SimpleConverter<T?>().toDynamoJson),
      'fieldS': _$DynamoConverterToDynamoJson<Map<String, dynamic>, S>(
          instance.fieldS, _SimpleConverter<S?>().toDynamoJson),
      'duration': const _DurationMillisecondConverter.named()
          .toDynamoJson(instance.duration),
      'listDuration': const _DurationListMillisecondConverter()
          .toDynamoJson(instance.listDuration),
    };

Value? _$DynamoConverterFromDynamoJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromDynamoJson,
) =>
    json == null ? null : fromDynamoJson(json as Json);

Json? _$DynamoConverterToDynamoJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toDynamoJson,
) =>
    value == null ? null : toDynamoJson(value);

Issue980ParentClass _$Issue980ParentClassFromDynamoJson(
        Map<String, dynamic> json) =>
    Issue980ParentClass(
      (json['list'] as List<dynamic>)
          .map((e) => Issue980GenericClass<int>.fromDynamoJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Issue980ParentClassToDynamoJson(
        Issue980ParentClass instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toDynamoJson()).toList(),
    };

Issue1047ParentClass<T> _$Issue1047ParentClassFromDynamoJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromDynamoJsonT,
) =>
    Issue1047ParentClass<T>(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Issue1047Class<T>.fromDynamoJson(
              e as Map<String, dynamic>, (value) => fromDynamoJsonT(value)))
          .toList(),
    );

Map<String, dynamic> _$Issue1047ParentClassToDynamoJson<T>(
  Issue1047ParentClass<T> instance,
  Object? Function(T value) toDynamoJsonT,
) =>
    <String, dynamic>{
      'edges': instance.edges
          .map((e) => e.toDynamoJson(
                (value) => toDynamoJsonT(value),
              ))
          .toList(),
    };

Issue1047Class<T> _$Issue1047ClassFromDynamoJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromDynamoJsonT,
) =>
    Issue1047Class<T>(
      node: fromDynamoJsonT(json['node']),
    );

Map<String, dynamic> _$Issue1047ClassToDynamoJson<T>(
  Issue1047Class<T> instance,
  Object? Function(T value) toDynamoJsonT,
) =>
    <String, dynamic>{
      'node': toDynamoJsonT(instance.node),
    };
