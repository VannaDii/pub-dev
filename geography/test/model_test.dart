import 'dart:convert';

import 'package:test/test.dart';
import 'package:geography/basic.dart';
import 'package:geography/earth.dart';

import 'shared.dart';

void main() {
  group('Model Tests', () {
    test('(De)serializes GeoLocationNode As Expected', () {
      var austin = Earth().findClosestCity(TestCoords.austin)!;
      var city = GeoLocationNode(
          id: austin.id,
          name: austin.name,
          latitude: austin.latitude,
          longitude: austin.longitude);
      var json = jsonEncode(city.toJson());
      var node = GeoLocationNode.fromJson(jsonDecode(json));

      expect(node, isNotNull);
    });

    test('(De)serializes Countries As Expected', () {
      for (var country in countries.values) {
        var json = <String, dynamic>{};
        expect(() => json = country.toJson(), returnsNormally);
        expect(json, isNotNull);
        expect(json, isA<Map<String, dynamic>>());

        var jsonString = jsonEncode(json);
        expect(jsonString, isNotNull);
        expect(jsonString, isA<String>());
        expect(jsonString.length, greaterThan(0));

        var instMap = jsonDecode(jsonString);
        expect(instMap, isNotNull);
        expect(instMap, isA<Map<String, dynamic>>());

        var inst = Country.fromJson(instMap);
        expect(inst, isNotNull);
        expect(inst, isA<Country>());
        expect(inst, equals(country));
      }
    });
  });
}
