// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'generic_argument_factories.g.dart';

@DynamoSerializable(genericArgumentFactories: true)
class GenericClassWithHelpers<T, S> {
  final T value;

  final List<T> list;

  final Set<S> someSet;

  GenericClassWithHelpers(
    this.value,
    this.list,
    this.someSet,
  );

  factory GenericClassWithHelpers.fromDynamoJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromDynamoJsonT,
    S Function(Object? json) fromJsonS,
  ) =>
      _$GenericClassWithHelpersFromDynamoJson(json, fromDynamoJsonT, fromJsonS);

  Map<String, dynamic> toDynamoJson(
    Object? Function(T value) toDynamoJsonT,
    Object? Function(S value) toDynamoJsonS,
  ) =>
      _$GenericClassWithHelpersToDynamoJson(this, toDynamoJsonT, toDynamoJsonS);
}

@DynamoSerializable()
class ConcreteClass {
  final GenericClassWithHelpers<int, String> value;

  final GenericClassWithHelpers<double, BigInt> value2;

  // Regression scenario for google/json_serializable.dart#803
  final GenericClassWithHelpers<double?, BigInt?> value3;

  ConcreteClass(this.value, this.value2, this.value3);

  factory ConcreteClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$ConcreteClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$ConcreteClassToDynamoJson(this);
}
