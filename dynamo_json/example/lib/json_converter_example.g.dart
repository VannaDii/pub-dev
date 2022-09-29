// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_converter_example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

DateTimeExample _$DateTimeExampleFromDynamoJson(Map<String, dynamic> json) =>
    DateTimeExample(
      const _DateTimeEpochConverter().fromDynamoJson(json['when'] as int),
    );

Map<String, dynamic> _$DateTimeExampleToDynamoJson(DateTimeExample instance) =>
    <String, dynamic>{
      'when': const _DateTimeEpochConverter().toDynamoJson(instance.when),
    };

GenericCollection<T> _$GenericCollectionFromDynamoJson<T>(
        Map<String, dynamic> json) =>
    GenericCollection<T>(
      page: json['page'] as int?,
      totalResults: json['total_results'] as int?,
      totalPages: json['total_pages'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map(_Converter<T>().fromDynamoJson)
          .toList(),
    );

Map<String, dynamic> _$GenericCollectionToDynamoJson<T>(
        GenericCollection<T> instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results?.map(_Converter<T>().toDynamoJson).toList(),
    };

CustomResult _$CustomResultFromDynamoJson(Map<String, dynamic> json) =>
    CustomResult(
      json['name'] as String,
      json['size'] as int,
    );

Map<String, dynamic> _$CustomResultToDynamoJson(CustomResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'size': instance.size,
    };
