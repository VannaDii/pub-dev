import 'dart:convert';

import 'package:uuid/uuid.dart';
import 'package:test/test.dart';
import 'package:geography/earth.dart';
import 'package:json_annotation/json_annotation.dart';

import 'shared.dart';

part 'usage_test.g.dart';

@JsonSerializable()
class CustomModel {
  const CustomModel({required this.id, this.location});

  final String id;
  final GeoLocationNode? location;

  /// Creates a new [Region] from JSON.
  factory CustomModel.fromJson(Map<String, dynamic> json) =>
      _$CustomModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomModelToJson(this);
}

void main() {
  group('Usage Tests', () {
    test('GeoLocationNode Acts Appropriately As A City Member', () {
      var city = Earth().findClosestCity(TestCoords.austin);
      var cmBase = CustomModel(id: Uuid().v4(), location: city);
      var cmJson = jsonEncode(cmBase.toJson());
      var cmMake = CustomModel.fromJson(jsonDecode(cmJson));

      expect(cmMake.location, equals(cmBase.location));
    });

    test('GeoLocationNode Acts Appropriately As A Region Member', () {
      var region = Earth().findClosestRegion(TestCoords.austin);
      var cmBase = CustomModel(id: Uuid().v4(), location: region);
      var cmJson = jsonEncode(cmBase.toJson());
      var cmMake = CustomModel.fromJson(jsonDecode(cmJson));

      expect(cmMake.location, equals(cmBase.location));
    });

    test('GeoLocationNode Acts Appropriately As A Country Member', () {
      var country = Earth().findClosestCountry(TestCoords.austin);
      var cmBase = CustomModel(id: Uuid().v4(), location: country);
      var cmJson = jsonEncode(cmBase.toJson());
      var cmMake = CustomModel.fromJson(jsonDecode(cmJson));

      expect(cmMake.location, equals(cmBase.location));
    });
  });
}
