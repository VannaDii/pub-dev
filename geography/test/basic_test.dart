import 'package:test/test.dart';
import 'package:geography/basic.dart';

import 'shared.dart';

void main() {
  group('Basic Tests', () {
    test('Calculates Distance Between Points As Expected', () {
      var atx = unitedStatesTexas.cities.findClosestTo(TestCoords.austin)!;
      expect(atx, isNotNull);
      expect(atx, isA<City>());
      expect(atx.name, equals("Austin"));

      var sat = unitedStatesTexas.cities.findClosestTo(TestCoords.sanAntonio)!;
      expect(sat, isNotNull);
      expect(sat, isA<City>());
      expect(sat.name, equals("San Antonio"));

      var meters = atx.metersTo(sat);
      expect(meters, greaterThan(118000));
      expect(meters, lessThan(128000));
    });

    test('Provide Qualified Names ("Co, St, Ct") As Expected', () {
      var atx = unitedStatesTexas.cities.findClosestTo(TestCoords.austin)!;
      expect(atx, isNotNull);
      expect(atx, isA<City>());
      expect(atx.name, equals("Austin"));
      expect(atx.nameQualified, equals("United States, Texas, Austin"));
      expect(atx.state.nameQualified, equals("United States, Texas"));
      expect(atx.state.country.name, equals("United States"));
    });

    test('Converts State Codes To Names As Expected', () {
      var atx = unitedStatesTexas.cities.findClosestTo(TestCoords.austin)!;
      expect(atx, isNotNull);
      expect(atx, isA<City>());
      expect(atx.name, equals("Austin"));
      expect(atx.state, isNotNull);
      expect(atx.state, isA<Region>());

      var stateName =
          atx.state.country.stateCodeToName(code: atx.state.stateCode);
      expect(stateName, isNotNull);
      expect(stateName, isA<String>());
      expect(stateName, equals(atx.state.name));
    });

    test('Country Finds Closest City As Expected', () {
      var atx = unitedStates.findClosestCity(TestCoords.outsideAustin)!;
      expect(atx, isNotNull);
      expect(atx, isA<City>());
      expect(atx.name, equals("Austin"));
    });

    test('Country Finds Closest Region As Expected', () {
      var tx = unitedStates.findClosestRegion(TestCoords.sanAntonio)!;
      expect(tx, isNotNull);
      expect(tx, isA<Region>());
      expect(tx.name, equals("Texas"));
    });
  });
}
