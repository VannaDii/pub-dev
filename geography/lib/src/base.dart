import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

/// The base class for all `geography` data types
abstract class GeoObject extends Equatable {
  const GeoObject();
}

/// The base class for all `geography` data types addressable by the `longitude`
/// and `latitude` system
@immutable
abstract class GeoCoords extends GeoObject {
  const GeoCoords({
    required this.longitude,
    required this.latitude,
  });

  /// The longitude coordinate for this data, like `33.00000000`
  final double longitude;

  /// The longitude coordinate for this data, like `65.00000000`
  final double latitude;

  @override
  List<Object?> get props => [longitude, latitude];
}

/// The base class for all `geography` data types addressable by the `longitude`
/// and `latitude` system
@immutable
class GeoCodedIdentity extends GeoObject {
  const GeoCodedIdentity({this.iso2, this.iso3, this.id});

  /// The unique identifier for this data, like `1`
  final int? id;

  /// The three-digit ISO code for this country, like `AFG` for `Afghanistan`
  final String? iso3;

  /// The two-digit ISO code for this country, like `AF` for `Afghanistan`
  final String? iso2;

  /// Indicates if this instance is considered valid, having one or more attributes defined
  bool get isValid => (id != null ||
      (iso2 != null && iso2!.isNotEmpty) ||
      (iso3 != null && iso3!.isNotEmpty));

  /// Determines if the specified [country] matches this instance
  bool isMatch(Country country) {
    return country.id == id || country.iso2 == iso2 || country.iso3 == iso3;
  }

  @override
  List<Object?> get props => [iso2, iso3, id];

  @override
  bool? get stringify => true;
}

/// The base class for all `geography` data types having a name and id, and
/// addressable by the `longitude` and `latitude` system
@immutable
abstract class GeoLocation extends GeoCoords {
  const GeoLocation({
    required this.id,
    required this.name,
    required super.latitude,
    required super.longitude,
  });

  /// The unique identifier for this data, like `1`
  final int id;

  /// The human name of this data, like `Afghanistan`
  final String name;

  @override
  List<Object?> get props => [...super.props, id, name];
}

/// The base class for all hierarchical `geography` data types
@immutable
@JsonSerializable()
class GeoLocationNode extends GeoLocation {
  const GeoLocationNode({
    required super.id,
    required super.name,
    required super.latitude,
    required super.longitude,
    this.parentId = -1,
  });

  @JsonKey(defaultValue: -1)
  final int parentId;

  /// Creates a new [GeoLocationNode] from JSON.
  factory GeoLocationNode.fromJson(Map<String, dynamic> json) {
    String typeName = json['__type'] ?? 'none';
    switch (typeName) {
      case 'City':
        return City.fromJson(json);
      case 'Region':
        return Region.fromJson(json);
      case 'Country':
        return Country.fromJson(json);
    }
    return _$GeoLocationNodeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GeoLocationNodeToJson(this);
}

/// Represents a physical city, the most precise level for this library
///
/// In JSON format, the instance for `Ashkāsham` might look like:
/// ```
/// {
///   "id": 52,
///   "name": "Ashkāsham",
///   "latitude": 36.68333000,
///   "longitude": 71.53333000
/// }
/// ```
@immutable
@JsonSerializable()
class City extends GeoLocationNode {
  const City(
      {required super.id,
      required super.parentId,
      required super.name,
      required super.longitude,
      required super.latitude});

  @override
  List<Object?> get props => [...super.props];

  /// Creates a new [City] from JSON.
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '__type': runtimeType.toString(),
        ..._$CityToJson(this)
      };
}

/// Represents a physical region, the middle precision level for this library
///
/// In JSON format, the instance for `Badakhshan` might look like:
/// ```json
/// {
///   "id": 3901,
///   "name": "Badakhshan",
///   "state_code": "BDS",
///   "latitude": 36.73477250,
///   "longitude": 70.81199530,
///   "type": null,
///   "cities": [
///     // ...
///     {
///       "id": 68,
///       "name": "Fayzabad",
///       "latitude": 37.11664000,
///       "longitude": 70.58002000
///     },
///     // ...
///   ]
/// }
/// ```
@immutable
@JsonSerializable()
class Region extends GeoLocationNode {
  const Region({
    required super.id,
    required super.parentId,
    required super.name,
    required this.type,
    required this.stateCode,
    required this.cities,
    required super.longitude,
    required super.latitude,
  });

  /// If set, the type of region, otherwise `null`. When set, the value might
  /// look like: `province`, `municipality`, `autonomous region`, etc.
  final String? type;

  /// A list of [City] instances located in this [Region]
  final List<City> cities;

  /// The short code for this state, often used in mailing addresses,
  /// like `BDS` for `Badakhshan`
  @JsonKey(name: 'state_code')
  final String stateCode;

  @override
  List<Object?> get props => [...super.props, type, stateCode, cities];

  /// Creates a new [Region] from JSON.
  factory Region.fromJson(Map<String, dynamic> json) {
    json['cities'] = (json['cities'] as List<dynamic>).map((e) {
      e['parentId'] = json['id'] as int;
      return e;
    }).toList();
    return _$RegionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '__type': runtimeType.toString(),
        ..._$RegionToJson(this)
      };
}

/// Represents a physical country, the least precision level for this library
///
/// In JSON format, the instance for `Afghanistan` might look like:
/// ```json
/// {
///   "id": 1,
///   "name": "Afghanistan",
///   "iso3": "AFG",
///   "iso2": "AF",
///   "numeric_code": "004",
///   "phone_code": "93",
///   "capital": "Kabul",
///   "currency": "AFN",
///   "currency_symbol": "؋",
///   "tld": ".af",
///   "native": "افغانستان",
///   "region": "Asia",
///   "subregion": "Southern Asia",
///   "timezones": [
///     // ... all known timezones for this country
///   ],
///   "translations": {
///     "kr": "아프가니스탄"
///     // ... country name in additional languages
///   },
///   "latitude": 33.00000000,
///   "longitude": 65.00000000,
///   "emoji": "🇦🇫",
///   "emojiU": "U+1F1E6 U+1F1EB",
///   "states": [
///     // ... all known states in this country
///   ]
/// }
/// ```
@immutable
@JsonSerializable()
class Country extends GeoLocationNode {
  const Country({
    required super.id,
    required super.name,
    required this.capital,
    required this.currency,
    required this.currencyName,
    required this.currencySymbol,
    required this.emoji,
    required this.emojiU,
    required this.iso2,
    required this.iso3,
    required this.native,
    required this.nationality,
    required this.numericCode,
    required this.phoneCode,
    required this.region,
    required this.states,
    required this.subregion,
    required this.timezones,
    required this.tld,
    required this.translations,
    required super.longitude,
    required super.latitude,
  });

  /// The three-digit ISO code for this country, like `AFG` for `Afghanistan`
  final String? iso3;

  /// The two-digit ISO code for this country, like `AF` for `Afghanistan`
  final String? iso2;

  /// The capital of this country, like `Kabul` for `Afghanistan`
  /// You can find this as a [City] by like:
  ///
  /// ```dart
  /// var matches = Earth().afghanistan.search(Earth().afghanistan.capital);
  /// print(matches.first.toJson());
  /// ```
  final String? capital;

  /// The currency abbreviation for this country, like `AFN` for `Afghanistan`
  final String? currency;

  /// The top-level-domain for this country, like `.af` for `Afghanistan`
  final String? tld;

  /// This country's name in its native language, like `افغانستان` for `Afghanistan`
  final String? native;

  /// This country's region, often continent, like `Asia` for `Afghanistan`
  final String? region;

  /// This country's subregion, like `Southern Asia` for `Afghanistan`
  final String? subregion;

  /// This countries nationality, like `Czech` for `Czech Republic`
  final String? nationality;

  /// This country's flag as an emoji, like `🇦🇫` for `Afghanistan`
  final String? emoji;

  /// This country's flag as emoji unicode characters, like `U+1F1E6 U+1F1EB` for `Afghanistan`
  final String? emojiU;

  /// This country's three-digit numeric code as defined in ISO 3166-1, like `004` for `Afghanistan`
  @JsonKey(name: 'numeric_code')
  final String numericCode;

  /// The phone number prefix for this country, like `93` for `Afghanistan`
  @JsonKey(name: 'phone_code')
  final String phoneCode;

  /// The currency name for this country, like `Czech koruna for `Czech Republic`
  @JsonKey(name: 'currency_name')
  final String currencyName;

  /// The currency symbol for this country, like `؋` for `Afghanistan`
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;

  /// A [List] of [Region] instances, representing states for this country
  final List<Region> states;

  /// A [List] of [Timezone] instances, representing the timezones used in this country
  final List<Timezone>? timezones;

  /// A map of two-digit ISO language codes, and translated names of this country
  ///
  /// In JSON format, for `Afghanistan`, this might look like:
  /// ```json
  /// {
  ///   "kr": "아프가니스탄",
  ///   "br": "Afeganistão",
  ///   "pt": "Afeganistão",
  ///   "nl": "Afghanistan",
  ///   "hr": "Afganistan",
  ///   "fa": "افغانستان",
  ///   "de": "Afghanistan",
  ///   "es": "Afganistán",
  ///   "fr": "Afghanistan",
  ///   "ja": "アフガニスタン",
  ///   "it": "Afghanistan",
  ///   "cn": "阿富汗"
  /// }
  /// ```
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

  /// Creates a new [Country] from JSON.
  factory Country.fromJson(Map<String, dynamic> json) {
    json['states'] = (json['states'] as List<dynamic>).map((e) {
      e['parentId'] = json['id'] as int;
      return e;
    }).toList();
    return _$CountryFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '__type': runtimeType.toString(),
        ..._$CountryToJson(this)
      };
}

/// A named timezone with numeric offset and descriptive metadata
///
/// In JSON format, the instance for `Afghanistan` might look like:
/// ```json
/// {
///    "zoneName": "Asia\/Kabul",
///    "gmtOffset": 16200,
///    "gmtOffsetName": "UTC+04:30",
///    "abbreviation": "AFT",
///    "tzName": "Afghanistan Time"
/// }
/// ```
@immutable
@JsonSerializable()
class Timezone extends GeoObject {
  const Timezone(
      {required this.abbreviation,
      required this.gmtOffset,
      required this.gmtOffsetName,
      required this.tzName,
      required this.zoneName});

  /// The numeric offset in seconds from GMT
  ///
  /// ```dart
  /// // For `Asia/Kabul`, this is the same as (16200 / 60) / 60 = 4.5
  /// double offsetHours = (timezone.gmtOffset / 60) / 60;
  /// ```
  final int gmtOffset;

  /// The name of the timezone, like `Asia/Kabul`
  final String zoneName;

  /// The name of the offset value, like `UTC+04:30`
  final String gmtOffsetName;

  /// The timezone common abbreviation, like `AFT` for `Asia/Kabul`
  final String abbreviation;

  /// The timezone common full name, like `Afghanistan Time`
  final String tzName;

  @override
  List<Object?> get props =>
      [abbreviation, gmtOffset, gmtOffsetName, tzName, zoneName];

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
