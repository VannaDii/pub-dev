// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'tuple_example.g.dart';

@DynamoSerializable(genericArgumentFactories: true)
class Tuple<T, S> {
  final T value1;

  final S value2;

  Tuple(this.value1, this.value2);

  factory Tuple.fromDynamoJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    S Function(Object? json) fromJsonS,
  ) =>
      _$TupleFromDynamoJson(json, fromJsonT, fromJsonS);

  Map<String, dynamic> toDynamoJson(
    Object Function(T value) toJsonT,
    Object Function(S value) toJsonS,
  ) =>
      _$TupleToDynamoJson(this, toJsonT, toJsonS);
}

@DynamoSerializable()
class ConcreteClass {
  final Tuple<int, DateTime> tuple1;

  final Tuple<Duration, BigInt> tuple2;

  ConcreteClass(this.tuple1, this.tuple2);

  factory ConcreteClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$ConcreteClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$ConcreteClassToDynamoJson(this);
}
