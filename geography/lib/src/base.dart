import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

abstract class GeoObject extends Equatable {
  const GeoObject();

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [];

  Map<String, dynamic> toJson();
}

@immutable
abstract class GeoCoords extends GeoObject {
  const GeoCoords({
    required this.id,
    required this.name,
    required this.longitude,
    required this.latitude,
  });

  final int id;
  final String name;
  final double longitude, latitude;

  @override
  List<Object?> get props => [id, name, longitude, latitude];
}

@immutable
@JsonSerializable()
class City extends GeoCoords {
  const City(
      {required int id,
      required String name,
      required double longitude,
      required double latitude})
      : super(id: id, name: name, latitude: latitude, longitude: longitude);

  @override
  List<Object?> get props => [...super.props];

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@immutable
@JsonSerializable()
class Region extends GeoCoords {
  const Region({
    required int id,
    required String name,
    required this.type,
    required this.stateCode,
    required this.cities,
    required double longitude,
    required double latitude,
  }) : super(id: id, name: name, latitude: latitude, longitude: longitude);

  final String? type;
  final List<City> cities;

  @JsonKey(name: 'state_code')
  final String stateCode;

  @override
  List<Object?> get props => [...super.props, type, stateCode, cities];

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegionToJson(this);
}

@immutable
@JsonSerializable()
class Country extends GeoCoords {
  const Country({
    required int id,
    required String name,
    required this.capital,
    required this.currency,
    required this.currencySymbol,
    required this.emoji,
    required this.emojiU,
    required this.iso2,
    required this.iso3,
    required this.native,
    required this.numericCode,
    required this.phoneCode,
    required this.region,
    required this.states,
    required this.subregion,
    required this.timezones,
    required this.tld,
    required this.translations,
    required double longitude,
    required double latitude,
  }) : super(id: id, name: name, latitude: latitude, longitude: longitude);

  final String? iso3,
      iso2,
      capital,
      currency,
      tld,
      native,
      region,
      subregion,
      emoji,
      emojiU;

  @JsonKey(name: 'numeric_code')
  final String numericCode;

  @JsonKey(name: 'phone_code')
  final String phoneCode;

  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;

  final List<Region> states;
  final List<Timezone> timezones;
  final Map<String, String> translations;

  @override
  List<Object?> get props => [
        ...super.props,
        iso3,
        iso2,
        capital,
        currency,
        tld,
        native,
        region,
        subregion,
        emoji,
        emojiU,
        numericCode,
        phoneCode,
        currencySymbol,
        states,
        timezones,
        translations
      ];

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@immutable
@JsonSerializable()
class Timezone extends GeoObject {
  const Timezone(
      {required this.abbreviation,
      required this.gmtOffset,
      required this.gmtOffsetName,
      required this.tzName,
      required this.zoneName});

  final int gmtOffset;
  final String zoneName, gmtOffsetName, abbreviation, tzName;

  @override
  List<Object?> get props =>
      [abbreviation, gmtOffset, gmtOffsetName, tzName, zoneName];

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
