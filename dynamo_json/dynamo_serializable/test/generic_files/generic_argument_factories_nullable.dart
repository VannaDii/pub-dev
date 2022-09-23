// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'generic_argument_factories_nullable.g.dart';

@DynamoSerializable(genericArgumentFactories: true)
class GenericClassWithHelpersNullable<T, S> {
  final T? value;

  final List<T?>? list;

  final Set<S?>? someSet;

  GenericClassWithHelpersNullable({
    this.value,
    this.list,
    this.someSet,
  });

  factory GenericClassWithHelpersNullable.fromDynamoJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromDynamoJsonT,
    S Function(Object? json) fromJsonS,
  ) =>
      _$GenericClassWithHelpersNullableFromJson(
          json, fromDynamoJsonT, fromJsonS);

  Map<String, dynamic> toDynamoJson(
    Object? Function(T value) toDynamoJsonT,
    Object? Function(S value) toDynamoJsonS,
  ) =>
      _$GenericClassWithHelpersNullableToJson(
          this, toDynamoJsonT, toDynamoJsonS);
}

@DynamoSerializable()
class ConcreteClassNullable {
  final GenericClassWithHelpersNullable<int, String> value;

  final GenericClassWithHelpersNullable<double, BigInt> value2;

  // Regression scenario for google/json_serializable.dart#803
  final GenericClassWithHelpersNullable<double?, BigInt?> value3;

  ConcreteClassNullable(this.value, this.value2, this.value3);

  factory ConcreteClassNullable.fromDynamoJson(Map<String, dynamic> json) =>
      _$ConcreteClassNullableFromJson(json);

  Map<String, dynamic> toDynamoJson() => _$ConcreteClassNullableToJson(this);
}
