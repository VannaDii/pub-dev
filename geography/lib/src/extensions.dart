import 'dart:math' as math;

import 'package:collection/collection.dart';

import 'base.dart';

/// Extension methods for interacting with [List] of [GeoCoords] and derivative type instances.
extension ListGeoCoordsExtensions<T extends GeoCoords> on List<T> {
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
  /// Returns: The distance between the two coordinates as a [double]
  double distanceFrom(T location) {
    var a = longitude - location.longitude;
    var b = latitude - location.latitude;
    return math.sqrt(a * a + b * b);
  }
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
  Iterable<GeoCoords> search(String value, {String? prefix}) {
    var loweredName = [prefix, name.toLowerCase()].whereNotNull().join(', ');
    var valueLowered = value.toLowerCase();
    return cities.where((s) => "$loweredName, ${s.name.toLowerCase()}"
        .toLowerCase()
        .contains(valueLowered));
  }
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
  Iterable<GeoCoords> search(String value) {
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
