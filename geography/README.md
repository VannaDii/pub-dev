# geography

This is a constant data-as-code library called `geography` facilitating operations like:

- Search places by name
- Find the named place nearest to coordinates
- Measure distance between places

## Data Scope

This scope of this data is best represented as:

```
Earth > [Country] > [Region] > [City]
```

If you're looking to use basic locations from the coordinates provided by a device, this library will get you pretty far. If you're looking for more granularity, like addresses or business names, this library won't be a great fit for your project.

## Features

### Search places by name

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

---

### Find the named place nearest to coordinates

```dart
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
```

---

### Measure distance between places

```dart
import 'package:geography/earth.dart';

main() {
  var a = Earth().search("Texas, Austin").first;
  var s = Earth().search("Texas, San Antonio").first;
  var d = a.distanceFrom(s);

  print("> From ${a.name} to ${s.name} is $d");

  /**
   * Prints:
   *
   * > From Austin to San Antonio is 118570.24358116832
   * Exited
   */
}
```

---

## Getting started

Start by installing this package via:

```sh
dart pub add geography
```

```yaml
dependencies:
  geography: ^1.0.0
```

## Usage

```dart
import 'package:geography/earth.dart';

main () {
  Earth().search("Texas, Austin").forEach((e) {
    print("> ${e.name} @ ${e.latitude}° ${e.longitude}°");
  });
}

/// Outputs:
/// > Austin @ 30.26715000° -97.74306000°

```
