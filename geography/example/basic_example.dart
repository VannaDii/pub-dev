import 'package:geography/basic.dart';

/// Our own derived class to mark coordinates
class GeoLocation extends GeoCoords {
  GeoLocation(double lat, double long) : super(latitude: lat, longitude: long);

  static GeoLocation get austin => GeoLocation(30.26715, -97.74306);
}

void main() {
  var a = unitedStatesTexasState.cities.findClosestTo(GeoLocation.austin)!;
  var t = a.state; // Expected to be `Texas`
  var u = t.country; // Expected to be `United States`
  print("> ${u.name} @ ${u.latitude}° ${u.longitude}°");
  print("> ${t.nameQualified} @ ${t.latitude}° ${t.longitude}°");
  print("> ${a.nameQualified} @ ${a.latitude}° ${a.longitude}°");

  /**
   * Prints:
   *
   * > United States @ 38.0° -97.0°
   * > United States, Texas @ 31.9685988° -99.9018131°
   * > United States, Texas, Austin @ 30.26715° -97.74306°
   * Exited
   */
}
