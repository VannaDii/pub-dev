// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'example.g.dart';

@DynamoSerializable()
class Person {
  final String firstName;
  @DynamoKey(includeIfNull: false)
  final String? middleName;
  final String lastName;

  @DynamoKey(name: 'date-of-birth')
  final DateTime dateOfBirth;

  @DynamoKey(name: 'last-order')
  final DateTime? lastOrder;

  List<Order> orders;

  Person(
    this.firstName,
    this.lastName,
    this.dateOfBirth, {
    this.middleName,
    this.lastOrder,
    List<Order>? orders,
  }) : orders = orders ?? <Order>[];

  factory Person.fromDynamoJson(Map<String, dynamic> json) =>
      _$PersonFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);
}

@DynamoSerializable(includeIfNull: false)
class Order {
  int? count;
  int? itemNumber;
  bool? isRushed;
  Item? item;

  @DynamoKey(
      name: 'prep-time',
      fromDynamoJson: _durationFromMilliseconds,
      toDynamoJson: _durationToMilliseconds)
  Duration? prepTime;

  @DynamoKey(
      fromDynamoJson: _dateTimeFromEpochUs, toDynamoJson: _dateTimeToEpochUs)
  final DateTime date;

  Order(this.date);

  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromDynamoJson(json);

  Map<String, dynamic> toJson() => _$OrderToDynamoJson(this);

  static Duration? _durationFromMilliseconds(int? milliseconds) =>
      milliseconds == null ? null : Duration(milliseconds: milliseconds);

  static int? _durationToMilliseconds(Duration? duration) =>
      duration?.inMilliseconds;

  static DateTime _dateTimeFromEpochUs(int us) =>
      DateTime.fromMicrosecondsSinceEpoch(us);

  static int? _dateTimeToEpochUs(DateTime? dateTime) =>
      dateTime?.microsecondsSinceEpoch;
}

@DynamoSerializable()
class Item {
  int? count;
  int? itemNumber;
  bool? isRushed;

  Item();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@DynamoLiteral('data.json')
Map get glossaryData => _$glossaryDataJsonLiteral;
