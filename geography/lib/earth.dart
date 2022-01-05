/// Access to known countries on earth and their meta data.
///
/// This import offers an [Earth] implementation supporting search and basic
/// geo-coding implementations for distance, and proximal matching.
library earth;

import 'src/base.dart';
import 'src/extensions.dart';
import 'src/countries/all_countries.dart' as data;

export 'src/base.dart';
export 'src/extensions.dart';

/// A singleton providing search and proximity functions for geographical data about earth.
class Earth {
  Earth._privateConstructor();

  static final Earth _instance = Earth._privateConstructor();

  factory Earth() => _instance;

  /// Gets all known countries on earth
  Iterable<Country> get countries => data.countries.values;

  /// Finds the [GeoCoords] ([City], or [Region]) with a name containing the [value]
  ///
  /// Returns: A combination pf [City], [Region], and [Country], where the name matches [value], as [GeoCoords]
  Iterable<GeoLocation> search(String value) {
    var valueLowered = value.toLowerCase();
    return [
      ...countries.where((c) => c.name.toLowerCase().contains(valueLowered)),
      ...countries.map((c) => c.search(valueLowered)).expand((v) => v)
    ];
  }

  /// Finds the [Region] in this [Country] nearest to the [target].
  ///
  /// Returns: The [Region], if found, otherwise `null`
  Region? findClosestRegion(GeoCoords target) =>
      findClosestCountry(target)?.states.findClosestTo(target);

  /// Finds the [City] in this [Country] nearest to the [target].
  ///
  /// Returns: The [City], if found, otherwise `null`
  City? findClosestCity(GeoCoords target) =>
      findClosestRegion(target)?.findClosestCity(target);

  /// Finds the [GeoCoords] ([City], [Region], or [Country]) instance closest to the provided [target]
  ///
  /// Returns: A [City] when possible, otherwise a [Region] or a [Country], whichever is more specific.
  Country? findClosestCountry(GeoCoords target) =>
      countries.findClosestTo(target);

  /// Finds the [GeoCoords] ([City], [Region], or [Country]) instance closest to the provided [target]
  ///
  /// Returns: A [City] when possible, otherwise a [Region] or a [Country], whichever is more specific.
  GeoCoords? findClosest(GeoCoords target) {
    var country = countries.findClosestTo(target);
    if (country == null) return null;

    return country.findClosest(target);
  }
}
