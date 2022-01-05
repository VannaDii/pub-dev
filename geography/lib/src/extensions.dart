import 'dart:math' as math;

import 'package:collection/collection.dart';

import 'base.dart';
import 'countries/all_states.dart' as allStates;
import 'countries/all_countries.dart' as allCountries;

const double EQUATOR_RADIUS = 6378137.0;
_deg2rad(double v) => v * math.pi / 180;

/// Extension methods for interacting with [List] of [GeoCoords] and derivative type instances.
extension ListGeoCoordsExtensions<T extends GeoCoords> on Iterable<T> {
  /// Find the element geographically closest to the [target]
  ///
  /// Returns: The geographically closest [T], or null if the list is empty
  T? findClosestTo(GeoCoords target) {
    return isEmpty
        ? null
        : reduce((p, c) {
            var distP = target.distanceFrom(p);
            var distC = target.distanceFrom(c);
            return distP > distC ? c : p;
          });
  }
}

/// Extension methods for interacting with [GeoCoords] instances.
extension GeoCoordsExtensions<T extends GeoCoords> on T {
  /// Measures the distance between `this` instance and the provided [location]
  ///
  /// Returns: The distance between the two coordinates in meters as a [double]
  ///
  /// Note: This is a primitive Haversine implementation. For more accuracy or
  /// advanced options, consider using [pub.dev/latlng](https://pub.dev/packages/latlng)
  /// or adopting the code from it's GitHub source [dart-latlong](https://github.com/MikeMitterer/dart-latlong)
  double distanceFrom(T location) {
    var l1LatRad = _deg2rad(latitude);
    var l1LonRad = _deg2rad(longitude);
    var l2LatRad = _deg2rad(location.latitude);
    var l2LonRad = _deg2rad(location.longitude);
    final sinDLat = math.sin((l2LatRad - l1LatRad) / 2);
    final sinDLng = math.sin((l2LonRad - l1LonRad) / 2);

    // Sides
    final a = sinDLat * sinDLat +
        sinDLng * sinDLng * math.cos(l1LatRad) * math.cos(l2LatRad);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return EQUATOR_RADIUS * c;
  }
}

extension CityExtensions on City {
  /// The [Region] parenting this [City] instance.
  ///
  /// While this is an extension method, it acts against a dictionary by key.
  Region get state => allStates.states[parentId]!;

  /// The qualified name (including parent names), separated by ` ,`
  ///
  /// For example: `United States, Texas, Austin`
  String get nameQualified => [state.nameQualified, name].join(', ');
}

/// Extension methods for interacting with [Region] instances.
extension RegionExtensions on Region {
  /// Finds the [City] in this [Region] nearest to the [target].
  ///
  /// Returns: The [City], if found, otherwise `null`
  City? findClosestCity(GeoCoords target) => cities.findClosestTo(target);

  /// Finds the [City] instances with a name containing the [value]
  ///
  /// Returns: A iterable [City] of matches.
  Iterable<GeoLocation> search(String value, {String? prefix}) {
    var loweredName = [prefix, name.toLowerCase()].whereNotNull().join(', ');
    var valueLowered = value.toLowerCase();
    return cities.where((s) => "$loweredName, ${s.name.toLowerCase()}"
        .toLowerCase()
        .contains(valueLowered));
  }

  /// The [Country] parenting this [Region] instance.
  ///
  /// While this is an extension method, it acts against a dictionary by key.
  Country get country => allCountries.countries[parentId]!;

  /// The qualified name (including parent names), separated by ` ,`
  ///
  /// For example: `United States, Texas`
  String get nameQualified => [country.name, name].join(', ');
}

/// Extension methods for interacting with [Country] instances.
extension CountryExtensions on Country {
  /// Finds the [Region] in this [Country] nearest to the [target].
  ///
  /// Returns: The [Region], if found, otherwise `null`
  Region? findClosestRegion(GeoCoords target) => states.findClosestTo(target);

  /// Finds the [City] in this [Country] nearest to the [target].
  ///
  /// Returns: The [City], if found, otherwise `null`
  City? findClosestCity(GeoCoords target) =>
      states.findClosestTo(target)?.findClosestCity(target);

  /// Finds the [GeoCoords] ([City], [Region], or [Country]) instance closest to the provided [target]
  ///
  /// Returns: A [City] when possible, otherwise a [Region] or a [Country], whichever is more specific.
  GeoCoords? findClosest(GeoCoords target) {
    var region = states.findClosestTo(target);
    if (region == null) return this;
    return region.findClosestCity(target) ?? region;
  }

  /// Finds the [GeoCoords] ([City], or [Region]) with a name containing the [value]
  ///
  /// Returns: A combination pf [City], [Region], where the name matches [value], as [GeoCoords]
  Iterable<GeoLocation> search(String value) {
    var loweredName = name.toLowerCase();
    var valueLowered = value.toLowerCase();
    return [
      ...states.where((s) => "$loweredName, ${s.name.toLowerCase()}"
          .toLowerCase()
          .contains(valueLowered)),
      ...states
          .map((s) => s.search(valueLowered, prefix: loweredName))
          .expand((v) => v)
    ];
  }

  /// Resolves a state code to its name
  ///
  /// Returns: state name, if found, otherwise the provided code
  String stateCodeToName({required String code}) {
    var codeLowered = code.toLowerCase();
    return states
            .firstWhereOrNull((s) => s.stateCode.toLowerCase() == codeLowered)
            ?.name ??
        code;
  }
}
