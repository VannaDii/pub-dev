## Using the `basic` library

```dart
import 'package:geography/basic.dart';

/// Our own derived class to mark coordinates
class GeoLocation extends GeoCoords {
  GeoLocation(double lat, double long) : super(latitude: lat, longitude: long);

  static GeoLocation get austin => GeoLocation(30.26715, -97.74306);
}

void main() {
  var a = unitedStatesTexas.cities.findClosestTo(GeoLocation.austin)!;
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
```

## Using the `earth` library

```dart
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

```

## Using distance measuring from `earth`

```dart
import 'package:geography/earth.dart';

main() {
  var a = Earth().search("Texas, Austin").first;
  var s = Earth().search("Texas, San Antonio").first;
  var d = a.metersTo(s);

  print("> From ${a.name} to ${s.name} is ${d.toStringAsFixed(2)} meters");

  /**
   * Prints:
   *
   * > From Austin to San Antonio is 118570.24 meters
   * Exited
   */
}

```
