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

### Search places by name and proximity

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

---

### Measure distance between places

```dart
import 'package:geography/earth.dart';

main() {
  var a = Earth().search("Texas, Austin").first;
  var s = Earth().search("Texas, San Antonio").first;
  var d = a.distanceFrom(s);

  print("> From ${a.name} to ${s.name} is ${d.toStringAsFixed(2)} meters");

  /**
   * Prints:
   *
   * > From Austin to San Antonio is 118570.24 meters
   * Exited
   */
}
```

---

### Get timezones for a particular country

```dart
import 'package:geography/earth.dart';

main() {
  var geoId = GeoCodedIdentity(iso2: 'US');
  var timezones = Earth().timezonesFor(geoId);

  for (var zone in timezones) {
    print('> ${zone.gmtOffsetName} => ${zone.zoneName}');
  }

  /**
   * Prints:
   *
   * > UTC-10:00 => America/Adak
   * > UTC-10:00 => Pacific/Honolulu
   * > UTC-09:00 => America/Anchorage
   * > UTC-09:00 => America/Juneau
   * > UTC-09:00 => America/Metlakatla
   * > UTC-09:00 => America/Nome
   * > UTC-09:00 => America/Sitka
   * > UTC-09:00 => America/Yakutat
   * > UTC-08:00 => America/Los_Angeles
   * > UTC-07:00 => America/Boise
   * > UTC-07:00 => America/Denver
   * > UTC-07:00 => America/Phoenix
   * > UTC-06:00 => America/Chicago
   * > UTC-06:00 => America/Indiana/Knox
   * > UTC-06:00 => America/Indiana/Tell_City
   * > UTC-06:00 => America/Menominee
   * > UTC-06:00 => America/North_Dakota/Beulah
   * > UTC-06:00 => America/North_Dakota/Center
   * > UTC-06:00 => America/North_Dakota/New_Salem
   * > UTC-05:00 => America/Detroit
   * > UTC-05:00 => America/Indiana/Indianapolis
   * > UTC-05:00 => America/Indiana/Marengo
   * > UTC-05:00 => America/Indiana/Petersburg
   * > UTC-05:00 => America/Indiana/Vevay
   * > UTC-05:00 => America/Indiana/Vincennes
   * > UTC-05:00 => America/Indiana/Winamac
   * > UTC-05:00 => America/Kentucky/Louisville
   * > UTC-05:00 => America/Kentucky/Monticello
   * > UTC-05:00 => America/New_York
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
