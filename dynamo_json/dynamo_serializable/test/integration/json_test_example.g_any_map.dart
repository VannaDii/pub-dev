// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: hash_and_equals
import 'dart:collection';

import 'package:dynamo_annotation/dynamo_annotation.dart';

import '../test_utils.dart';
import 'json_test_common.dart';

part 'json_test_example.g_any_map.g.dart';

@DynamoSerializable(anyMap: true)
class Person {
  final String firstName, lastName;
  final String? middleName;
  final DateTime? dateOfBirth;
  @DynamoKey(name: '\$house')
  final Category house;

  Order? order;

  MyList<Order>? customOrders;

  Map<String, Category>? houseMap;
  Map<Category, int>? categoryCounts;

  Person(this.firstName, this.lastName, this.house,
      {this.middleName, this.dateOfBirth});

  factory Person.fromDynamoJson(Map<String, dynamic> json) =>
      _$PersonFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is Person &&
      firstName == other.firstName &&
      middleName == other.middleName &&
      lastName == other.lastName &&
      dateOfBirth == other.dateOfBirth &&
      house == other.house &&
      deepEquals(houseMap, other.houseMap);
}

@DynamoSerializable(anyMap: true, constructor: 'custom')
class Order {
  /// Used to test that `disallowNullValues: true` forces `includeIfNull: false`
  @DynamoKey(disallowNullValue: true)
  int? count;
  bool? isRushed;

  Duration? duration;

  final Category? category;
  final UnmodifiableListView<Item>? items;
  Platform? platform;
  Map<String, Platform>? altPlatforms;

  Uri? homepage;

  @DynamoKey(
    name: 'status_code',
    defaultValue: StatusCode.success,
    unknownEnumValue: StatusCode.unknown,
  )
  StatusCode? statusCode;

  @DynamoKey(ignore: true)
  String get platformValue => platform!.description;

  set platformValue(String value) {
    throw UnimplementedError('not impld');
  }

  // Ignored getter without value set in ctor
  int get price => items!.fold(0, (total, item) => item.price! + total);

  @DynamoKey(ignore: true)
  bool? shouldBeCached;

  Order.custom(this.category, [Iterable<Item>? items])
      : items = UnmodifiableListView<Item>(
            List<Item>.unmodifiable(items ?? const <Item>[]));

  factory Order.fromDynamoJson(Map<String, dynamic> json) =>
      _$OrderFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$OrderToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is Order &&
      count == other.count &&
      isRushed == other.isRushed &&
      deepEquals(items, other.items) &&
      deepEquals(altPlatforms, other.altPlatforms);
}

@DynamoSerializable(
  anyMap: true,
)
class Item extends ItemCore {
  @DynamoKey(includeIfNull: false, name: 'item-number')
  int? itemNumber;
  List<DateTime>? saleDates;
  List<int>? rates;

  // Regression test for https://github.com/google/json_serializable.dart/issues/896
  @DynamoKey(
      fromDynamoJson: _fromDynamoJsonGeoPoint,
      toDynamoJson: _toDynamoJsonGeoPoint)
  GeoPoint? geoPoint;

  Item([super.price]);

  factory Item.fromDynamoJson(Map<String, dynamic> json) =>
      _$ItemFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$ItemToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is Item &&
      price == other.price &&
      itemNumber == other.itemNumber &&
      deepEquals(saleDates, other.saleDates);
}

GeoPoint? _fromDynamoJsonGeoPoint(Map<String, dynamic>? json) {
  if (json != null) {
    return GeoPoint(json['latitude'], json['longitude']);
  } else {
    return null;
  }
}

Map<String, dynamic>? _toDynamoJsonGeoPoint(GeoPoint? geoPoint) {
  if (geoPoint == null) {
    return null;
  }
  return {'latitude': geoPoint.latitude, 'longitude': geoPoint.longitude};
}

class GeoPoint {
  final Object? latitude, longitude;

  GeoPoint(this.latitude, this.longitude);
}

@DynamoSerializable(
  anyMap: true,
)
class Numbers {
  List<int>? ints;
  List<num>? nums;
  List<double>? doubles;

  List<double>? nnDoubles;

  @DynamoKey(fromDynamoJson: durationFromInt, toDynamoJson: durationToInt)
  Duration? duration;

  @DynamoKey(
      fromDynamoJson: dateTimeFromEpochUs, toDynamoJson: dateTimeToEpochUs)
  DateTime? date;

  Numbers();

  factory Numbers.fromDynamoJson(Map<String, dynamic> json) =>
      _$NumbersFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$NumbersToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is Numbers &&
      deepEquals(ints, other.ints) &&
      deepEquals(nums, other.nums) &&
      deepEquals(doubles, other.doubles) &&
      deepEquals(nnDoubles, other.nnDoubles) &&
      deepEquals(duration, other.duration) &&
      deepEquals(date, other.date);
}

@DynamoSerializable(
  anyMap: true,
)
class MapKeyVariety {
  Map<int, int>? intIntMap;
  Map<Uri, int>? uriIntMap;
  Map<DateTime, int>? dateTimeIntMap;
  Map<BigInt, int>? bigIntMap;

  MapKeyVariety();

  factory MapKeyVariety.fromDynamoJson(Map<String, dynamic> json) =>
      _$MapKeyVarietyFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$MapKeyVarietyToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is MapKeyVariety &&
      deepEquals(other.intIntMap, intIntMap) &&
      deepEquals(other.uriIntMap, uriIntMap) &&
      deepEquals(other.dateTimeIntMap, dateTimeIntMap) &&
      deepEquals(other.bigIntMap, bigIntMap);
}

@DynamoSerializable(
  anyMap: true,
)
class UnknownEnumValue {
  @DynamoKey(unknownEnumValue: Category.notDiscoveredYet)
  late Category enumValue;

  @DynamoKey(unknownEnumValue: Category.notDiscoveredYet)
  late Iterable<Category> enumIterable;

  @DynamoKey(unknownEnumValue: Category.notDiscoveredYet)
  late List<Category> enumList;

  @DynamoKey(unknownEnumValue: Category.notDiscoveredYet)
  late Set<Category> enumSet;

  UnknownEnumValue();

  factory UnknownEnumValue.fromDynamoJson(Map<String, dynamic> json) =>
      _$UnknownEnumValueFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$UnknownEnumValueToDynamoJson(this);
}

@DynamoSerializable(anyMap: true, constructor: '_')
class PrivateConstructor {
  static int _id = 0;

  final int id;
  final String value;

  PrivateConstructor._(this.id, this.value);

  PrivateConstructor(this.value) : id = _id++;

  factory PrivateConstructor.fromDynamoJson(Map<String, dynamic> json) =>
      _$PrivateConstructorFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$PrivateConstructorToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is PrivateConstructor && id == other.id && value == other.value;
}
