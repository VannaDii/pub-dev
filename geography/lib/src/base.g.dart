// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoLocationNode _$GeoLocationNodeFromJson(Map<String, dynamic> json) =>
    GeoLocationNode(
      id: json['id'] as int,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      parentId: json['parentId'] as int? ?? -1,
    );

Map<String, dynamic> _$GeoLocationNodeToJson(GeoLocationNode instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int,
      parentId: json['parentId'] as int? ?? -1,
      name: json['name'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
    };

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      id: json['id'] as int,
      parentId: json['parentId'] as int? ?? -1,
      name: json['name'] as String,
      type: json['type'] as String?,
      stateCode: json['state_code'] as String,
      cities: (json['cities'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'type': instance.type,
      'cities': instance.cities,
      'state_code': instance.stateCode,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as int,
      name: json['name'] as String,
      capital: json['capital'] as String?,
      currency: json['currency'] as String?,
      currencySymbol: json['currency_symbol'] as String,
      emoji: json['emoji'] as String?,
      emojiU: json['emojiU'] as String?,
      iso2: json['iso2'] as String?,
      iso3: json['iso3'] as String?,
      native: json['native'] as String?,
      numericCode: json['numeric_code'] as String,
      phoneCode: json['phone_code'] as String,
      region: json['region'] as String?,
      states: (json['states'] as List<dynamic>)
          .map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
      subregion: json['subregion'] as String?,
      timezones: (json['timezones'] as List<dynamic>)
          .map((e) => Timezone.fromJson(e as Map<String, dynamic>))
          .toList(),
      tld: json['tld'] as String?,
      translations: Map<String, String>.from(json['translations'] as Map),
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'id': instance.id,
      'name': instance.name,
      'iso3': instance.iso3,
      'iso2': instance.iso2,
      'capital': instance.capital,
      'currency': instance.currency,
      'tld': instance.tld,
      'native': instance.native,
      'region': instance.region,
      'subregion': instance.subregion,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
      'numeric_code': instance.numericCode,
      'phone_code': instance.phoneCode,
      'currency_symbol': instance.currencySymbol,
      'states': instance.states,
      'timezones': instance.timezones,
      'translations': instance.translations,
    };

Timezone _$TimezoneFromJson(Map<String, dynamic> json) => Timezone(
      abbreviation: json['abbreviation'] as String,
      gmtOffset: json['gmtOffset'] as int,
      gmtOffsetName: json['gmtOffsetName'] as String,
      tzName: json['tzName'] as String,
      zoneName: json['zoneName'] as String,
    );

Map<String, dynamic> _$TimezoneToJson(Timezone instance) => <String, dynamic>{
      'gmtOffset': instance.gmtOffset,
      'zoneName': instance.zoneName,
      'gmtOffsetName': instance.gmtOffsetName,
      'abbreviation': instance.abbreviation,
      'tzName': instance.tzName,
    };
