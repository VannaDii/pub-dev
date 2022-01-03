import 'package:geography/geography.dart';

/// Our own derived class to mark coordinates
class GeoLocation extends GeoCoords {
  GeoLocation(double lat, double long) : super(latitude: lat, longitude: long);

  static GeoLocation get texas => GeoLocation(31.9685988, -99.9018131);

  static GeoLocation get austin => GeoLocation(30.26715, -97.74306);
}

void main() {
  const u = unitedStates;
  var t = u.states.findClosestTo(GeoLocation.texas)!;
  var a = t.cities.findClosestTo(GeoLocation.austin)!;
  print("> ${u.name} @ ${u.latitude}° ${u.longitude}°");
  print("> ${u.name}, ${t.name} @ ${t.latitude}° ${t.longitude}°");
  print("> ${u.name}, ${t.name}, ${a.name} @ ${a.latitude}° ${a.longitude}°");

  /**
   * Prints:
   *
   * > United States @ 38.0° -97.0°
   * > United States, Texas @ 31.9685988° -99.9018131°
   * > United States, Texas, Austin @ 30.26715° -97.74306°
   * Exited
   */
}
