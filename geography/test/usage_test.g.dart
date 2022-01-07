// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomModel _$CustomModelFromJson(Map<String, dynamic> json) => CustomModel(
      id: json['id'] as String,
      location: json['location'] == null
          ? null
          : GeoLocationNode.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomModelToJson(CustomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
    };
