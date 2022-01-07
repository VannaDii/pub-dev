import 'package:test/test.dart';
import 'package:geography/earth.dart';

import 'shared.dart';

void main() {
  group('Earth Tests', () {
    test('Earth Singleton Works As Expected', () {
      expect(Earth(), isNotNull);
    });

    test('Earth Singleton Has Expected Country Count', () {
      expect(Earth().countries, hasLength(250));
    });

    test('Earth Locates City By Search As Expected', () {
      var atx = Earth().search("Texas, Austin").first;
      expect(atx, isNotNull);
      expect(atx, isA<City>());

      atx = (atx as City);
      expect(atx.state, isNotNull);
      expect(atx.state, isA<Region>());
      expect(atx.state.name, equals("Texas"));
      expect(atx.state.country, isNotNull);
      expect(atx.state.country, isA<Country>());
      expect(atx.state.country.name, equals("United States"));
    });

    test('Earth Locates City Hierarchy Out-of-Bounds', () {
      var atx = Earth().findClosestCity(TestCoords.outsideAustin);
      expect(atx, isNotNull);
      expect(atx, isA<City>());

      atx = (atx as City);
      expect(atx.state, isNotNull);
      expect(atx.state, isA<Region>());
      expect(atx.state.name, equals("Texas"));
      expect(atx.state.country, isNotNull);
      expect(atx.state.country, isA<Country>());
      expect(atx.state.country.name, equals("United States"));
    });

    test('Earth Locates City Hierarchy As Expected', () {
      var atx = Earth().findClosest(TestCoords.austin);
      expect(atx, isNotNull);
      expect(atx, isA<City>());

      atx = (atx as City);
      expect(atx.state, isNotNull);
      expect(atx.state, isA<Region>());
      expect(atx.state.name, equals("Texas"));
      expect(atx.state.country, isNotNull);
      expect(atx.state.country, isA<Country>());
      expect(atx.state.country.name, equals("United States"));
    });

    test('Earth Locates State Hierarchy As Expected', () {
      var tx = Earth().findClosestRegion(TestCoords.austin);
      expect(tx, isNotNull);
      expect(tx, isA<Region>());
      expect(tx?.name, equals("Texas"));
      expect(tx?.country, isNotNull);
      expect(tx?.country, isA<Country>());
      expect(tx?.country.name, equals("United States"));
    });

    test('Earth Locates Country As Expected', () {
      var usa = Earth().findClosestCountry(TestCoords.austin);
      expect(usa, isNotNull);
      expect(usa, isA<Country>());
      expect(usa?.name, isNotNull);
      expect(usa?.name, isA<String>());
      expect(usa?.name, equals("United States"));

      expect(usa?.nameQualified, isNotNull);
      expect(usa?.nameQualified, isA<String>());
      expect(usa?.nameQualified, equals(usa?.name));
      expect(usa?.nameQualified, equals("United States"));
    });
  });
}
