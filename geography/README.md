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

I should provide some example code?

---

### Find the named place nearest to coordinates

I should provide some example code?

---

### Measure distance between places

I should provide some example code?

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
