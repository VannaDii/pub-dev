// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_json/json_annotation.dart';

class GenericConverter<T> implements DynamoConverter<T, Map<String, dynamic>> {
  const GenericConverter();

  @override
  T fromDynamoJson(Map<String, dynamic> json) => null as T;

  @override
  Map<String, dynamic> toDynamoJson(T object) => {};
}

class TrivialNumber {
  final int? value;

  TrivialNumber(this.value);
}

class TrivialNumberConverter implements DynamoConverter<TrivialNumber, int?> {
  static const instance = TrivialNumberConverter();

  const TrivialNumberConverter();

  @override
  TrivialNumber fromDynamoJson(int? json) => TrivialNumber(json);

  @override
  int? toDynamoJson(TrivialNumber? object) => object?.value;
}

class BigIntStringConverter implements DynamoConverter<BigInt, String> {
  const BigIntStringConverter();

  @override
  BigInt fromDynamoJson(String json) => BigInt.parse(json);

  @override
  String toDynamoJson(BigInt object) => object.toString();
}

const durationConverter = DurationMillisecondConverter();

class DurationMillisecondConverter implements DynamoConverter<Duration?, int?> {
  const DurationMillisecondConverter();

  @override
  Duration? fromDynamoJson(int? json) =>
      json == null ? null : Duration(milliseconds: json);

  @override
  int? toDynamoJson(Duration? object) => object?.inMilliseconds;
}

class TrivialString {
  TrivialString(this.value);

  final String? value;
}

const trivialStringConverter = TrivialStringConverter();

class TrivialStringConverter
    implements DynamoConverter<TrivialString?, String?> {
  const TrivialStringConverter();

  @override
  TrivialString? fromDynamoJson(String? json) =>
      json == null ? null : TrivialString(json);

  @override
  String? toDynamoJson(TrivialString? object) => object?.value;
}

class EpochDateTimeConverter implements DynamoConverter<DateTime?, int?> {
  const EpochDateTimeConverter();

  @override
  DateTime? fromDynamoJson(int? json) =>
      json == null ? null : DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int? toDynamoJson(DateTime? object) => object?.millisecondsSinceEpoch;
}
