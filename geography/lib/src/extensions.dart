import 'dart:math' as math;

import 'package:collection/collection.dart';

import 'base.dart';
import 'countries/all_states.dart' as _all_states;
import 'countries/all_countries.dart' as _all_countries;

const double _kEquatorRadius = 6378137.0;

_deg2rad(double v) => v * math.pi / 180;

/// Extension methods for interacting with [List] of [GeoCoords] and derivative type instances.
extension ListGeoCoordsExtensions<T extends GeoCoords> on Iterable<T> {
  /// Find the element geographically closest to the [target]
  ///
  /// Returns: The geographically closest [T], or null if the list is empty
  T? findClosestTo(GeoCoords target) {
    return isEmpty
        ? null
        : fold(null, (p, c) {
            if (p == null) return c;
            var distP = target.distanceTo(p);
            var distC = target.distanceTo(c);
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
  /// advanced options, consider using [latlong2](https://pub.dev/packages/latlong2)
  /// or adopting the code from it's GitHub source [dart-latlong](https://github.com/MikeMitterer/dart-latlong)
  double metersTo(T location) {
    var l1LatRad = _deg2rad(latitude);
    var l1LonRad = _deg2rad(longitude);
    var l2LatRad = _deg2rad(location.latitude);
    var l2LonRad = _deg2rad(location.longitude);
    final sinDLat = math.sin((l2LatRad - l1LatRad) / 2);
    final sinDLng = math.sin((l2LonRad - l1LonRad) / 2);
    final a = sinDLat * sinDLat +
        sinDLng * sinDLng * math.cos(l1LatRad) * math.cos(l2LatRad);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return _kEquatorRadius * c;
  }

  double distanceTo(T location) {
    var a = location.longitude - longitude;
    var b = location.latitude - latitude;
    return math.sqrt(a * a + b * b);
  }
}

/// Extension methods for interacting with [GeoLocationNode] instances.
extension GeoLocationNodeExtensions on GeoLocationNode {
  /// The qualified name (including parent names), separated by ` ,`
  ///
  /// For example, If the underlying instance is a:
  ///
  /// [Country] => `United States`
  ///
  /// [Region] => `United States, Texas`
  ///
  /// [City] => `United States, Texas, Austin`
  String get nameQualified => this is City
      ? [(this as City).state.nameQualified, name].join(', ')
      : this is Region
          ? [(this as Region).country.nameQualified, name].join(', ')
          : this is Country
              ? (this as Country).name
              : name;

  /// The flag emoji for this node. This will walk the nodes to [Country] for
  /// the [Country.emoji] flag. If the node is a custom node that can't be
  /// walked, this returns `null`.
  ///
  /// For example, If the underlying instance is a:
  ///
  /// [City] => `this.state.country.emoji`
  ///
  /// [Region] => `this.country.emoji`
  ///
  /// [Country] => `this.emoji`
  String? get emoji => this is City
      ? (this as City).state.country.emoji
      : this is Region
          ? (this as Region).country.emoji
          : null;
}

/// Extension methods for interacting with [City] instances.
extension CityExtensions on City {
  /// The [Region] parenting this [City] instance.
  ///
  /// While this is an extension method, it acts against a dictionary by key.
  Region get state => _all_states.states[parentId]!;
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
  Iterable<GeoLocationNode> search(String value, {String? prefix}) {
    var loweredName = [prefix, name.toLowerCase()].whereNotNull().join(', ');
    var valueLowered = value.toLowerCase();
    return cities.where((s) => "$loweredName, ${s.name.toLowerCase()}"
        .toLowerCase()
        .contains(valueLowered));
  }

  /// The [Country] parenting this [Region] instance.
  ///
  /// While this is an extension method, it acts against a dictionary by key.
  Country get country => _all_countries.countries[parentId]!;
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

  /// Finds the [GeoLocationNode] ([City], [Region], or [Country]) instance closest to the provided [target]
  ///
  /// Returns: A [City] when possible, otherwise a [Region] or a [Country], whichever is more specific.
  GeoLocationNode? findClosest(GeoCoords target) {
    var region = states.findClosestTo(target);
    if (region == null) return this;
    return region.findClosestCity(target) ?? region;
  }

  /// Finds the [GeoLocationNode] ([City], or [Region]) with a name containing the [value]
  ///
  /// Returns: A combination pf [City], [Region], where the name matches [value], as [GeoLocationNode]
  Iterable<GeoLocationNode> search(String value) {
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

  /// Resolves a [Region.stateCode] to its [name]
  ///
  /// Returns: state [name], if found, otherwise the provided [code]
  String stateCodeToName({required String code}) {
    var codeLowered = code.toLowerCase();
    return states
            .firstWhereOrNull((s) => s.stateCode.toLowerCase() == codeLowered)
            ?.name ??
        code;
  }
}
