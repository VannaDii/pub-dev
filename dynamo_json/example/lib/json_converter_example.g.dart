// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_converter_example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

DateTimeExample _$DateTimeExampleFromDynamoJson(Map<String, dynamic> json) =>
    DateTimeExample(
      const _DateTimeEpochConverter()
          .fromDynamoJson((json['when'] as Map<String, dynamic>)['S'] as int),
    );

Map<String, dynamic> _$DateTimeExampleToDynamoJson(DateTimeExample instance) =>
    <String, dynamic>{
      'when': {
        'S': const _DateTimeEpochConverter().toDynamoJson(instance.when)
      },
    };

GenericCollection<T> _$GenericCollectionFromDynamoJson<T>(
        Map<String, dynamic> json) =>
    GenericCollection<T>(
      page: (json['page'] as Map<String, dynamic>)['N'] as int?,
      totalResults:
          (json['total_results'] as Map<String, dynamic>)['N'] as int?,
      totalPages: (json['total_pages'] as Map<String, dynamic>)['N'] as int?,
      results:
          ((json['results'] as Map<String, dynamic>)['L'] as List<dynamic>?)
              ?.map(_Converter<T>().fromDynamoJson)
              .toList(),
    );

Map<String, dynamic> _$GenericCollectionToDynamoJson<T>(
        GenericCollection<T> instance) =>
    <String, dynamic>{
      'page': {'N': instance.page},
      'total_results': {'N': instance.totalResults},
      'total_pages': {'N': instance.totalPages},
      'results': {
        'L': instance.results?.map(_Converter<T>().toDynamoJson).toList()
      },
    };

CustomResult _$CustomResultFromDynamoJson(Map<String, dynamic> json) =>
    CustomResult(
      (json['name'] as Map<String, dynamic>)['S'] as String,
      (json['size'] as Map<String, dynamic>)['N'] as int,
    );

Map<String, dynamic> _$CustomResultToDynamoJson(CustomResult instance) =>
    <String, dynamic>{
      'name': {'S': instance.name},
      'size': {'N': instance.size},
    };
