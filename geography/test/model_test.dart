import 'dart:convert';

import 'package:test/test.dart';
import 'package:geography/basic.dart';
import 'package:geography/earth.dart';

import 'shared.dart';

void main() {
  group('Model Tests', () {
    test('GeoLocationNode Finds Emoji As Expected', () {
      var emoji = Earth().findClosestCountry(TestCoords.austin)!.emoji;
      var atx = Earth().findClosestCity(TestCoords.austin)!;
      var tex = atx.state;
      var usa = tex.country;

      expect(atx.emoji, equals(emoji));
      expect(tex.emoji, equals(emoji));
      expect(usa.emoji, equals(emoji));
    });

    test('GeoLocationNode Produces Qualified Name As Expected', () {
      var atx = Earth().findClosestCity(TestCoords.austin)!;
      var tex = atx.state;
      var usa = tex.country;
      var parts = [usa.name, tex.name, atx.name];

      expect(atx.nameQualified, equals(parts.join(', ')));
      expect(tex.nameQualified, equals(parts.getRange(0, 2).join(', ')));
      expect(usa.nameQualified, equals(parts[0]));
    });

    test('Foreign GeoLocationNode Handles Name And Emoji As Expected', () {
      const fakeName = 'Fake Austin';
      var node = TestCoords.austin.asNode(name: fakeName);

      expect(node.emoji, isNull);
      expect(node.nameQualified, equals(fakeName));
    });

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

    test('GeoCodedIdentity Props And Stringify Works As Expected', () {
      final id1 = GeoCodedIdentity();
      expect(id1.isValid, isFalse);

      final id2 = GeoCodedIdentity(iso2: 'US');
      expect(id2.isValid, isTrue);

      final id3 = GeoCodedIdentity(iso2: 'XX');
      expect(id3.isValid, isTrue);

      expect(id1, isNot(equals(id2)));
      expect(id2, isNot(equals(id3)));
      expect(id3, isNot(equals(id1)));
      expect(id2.toString(), contains('US'));
      expect(id3.toString(), contains('XX'));
    });
  });
}
