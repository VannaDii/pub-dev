import 'package:geography/earth.dart';

void main() {
  var a = Earth().search("Texas, Austin").first;
  var t = Earth().findClosestRegion(a);
  var u = Earth().findClosestCountry(t!)!;
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
