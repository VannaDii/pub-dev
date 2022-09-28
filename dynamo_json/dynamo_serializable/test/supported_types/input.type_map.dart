// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'enum_type.dart';

part 'input.type_map.g.dart';

@DynamoSerializable()
class SimpleClass {
  final Map value;

  @DynamoKey(defaultValue: {'a': 1})
  Map withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullable {
  final Map? value;

  @DynamoKey(defaultValue: {'a': 1})
  Map? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToBigInt {
  final Map<BigInt, BigInt> value;

  SimpleClassOfBigIntToBigInt(
    this.value,
  );

  factory SimpleClassOfBigIntToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToBigInt {
  final Map<BigInt, BigInt>? value;

  SimpleClassNullableOfBigIntToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToBigInt {
  final Map<DateTime, BigInt> value;

  SimpleClassOfDateTimeToBigInt(
    this.value,
  );

  factory SimpleClassOfDateTimeToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToBigInt {
  final Map<DateTime, BigInt>? value;

  SimpleClassNullableOfDateTimeToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToBigInt {
  final Map<dynamic, BigInt> value;

  SimpleClassOfDynamicToBigInt(
    this.value,
  );

  factory SimpleClassOfDynamicToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToBigInt {
  final Map<dynamic, BigInt>? value;

  SimpleClassNullableOfDynamicToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToBigInt {
  final Map<EnumType, BigInt> value;

  SimpleClassOfEnumTypeToBigInt(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToBigInt {
  final Map<EnumType, BigInt>? value;

  SimpleClassNullableOfEnumTypeToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToBigInt {
  final Map<int, BigInt> value;

  SimpleClassOfIntToBigInt(
    this.value,
  );

  factory SimpleClassOfIntToBigInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToBigInt {
  final Map<int, BigInt>? value;

  SimpleClassNullableOfIntToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfIntToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToBigInt {
  final Map<Object, BigInt> value;

  SimpleClassOfObjectToBigInt(
    this.value,
  );

  factory SimpleClassOfObjectToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToBigInt {
  final Map<Object, BigInt>? value;

  SimpleClassNullableOfObjectToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToBigInt {
  final Map<String, BigInt> value;

  SimpleClassOfStringToBigInt(
    this.value,
  );

  factory SimpleClassOfStringToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToBigInt {
  final Map<String, BigInt>? value;

  SimpleClassNullableOfStringToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfStringToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToBigInt {
  final Map<Uri, BigInt> value;

  SimpleClassOfUriToBigInt(
    this.value,
  );

  factory SimpleClassOfUriToBigInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToBigInt {
  final Map<Uri, BigInt>? value;

  SimpleClassNullableOfUriToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfUriToBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?> value;

  SimpleClassOfBigIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?>? value;

  SimpleClassNullableOfBigIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?> value;

  SimpleClassOfDateTimeToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?>? value;

  SimpleClassNullableOfDateTimeToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?> value;

  SimpleClassOfDynamicToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?>? value;

  SimpleClassNullableOfDynamicToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?> value;

  SimpleClassOfEnumTypeToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?>? value;

  SimpleClassNullableOfEnumTypeToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToBigIntNullable {
  final Map<int, BigInt?> value;

  SimpleClassOfIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfIntToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToBigIntNullable {
  final Map<int, BigInt?>? value;

  SimpleClassNullableOfIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToBigIntNullable {
  final Map<Object, BigInt?> value;

  SimpleClassOfObjectToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfObjectToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToBigIntNullable {
  final Map<Object, BigInt?>? value;

  SimpleClassNullableOfObjectToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToBigIntNullable {
  final Map<String, BigInt?> value;

  SimpleClassOfStringToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfStringToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToBigIntNullable {
  final Map<String, BigInt?>? value;

  SimpleClassNullableOfStringToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToBigIntNullable {
  final Map<Uri, BigInt?> value;

  SimpleClassOfUriToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfUriToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToBigIntNullable {
  final Map<Uri, BigInt?>? value;

  SimpleClassNullableOfUriToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToBool {
  final Map<BigInt, bool> value;

  SimpleClassOfBigIntToBool(
    this.value,
  );

  factory SimpleClassOfBigIntToBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToBool {
  final Map<BigInt, bool>? value;

  SimpleClassNullableOfBigIntToBool(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToBool {
  final Map<DateTime, bool> value;

  SimpleClassOfDateTimeToBool(
    this.value,
  );

  factory SimpleClassOfDateTimeToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToBool {
  final Map<DateTime, bool>? value;

  SimpleClassNullableOfDateTimeToBool(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToBool {
  final Map<dynamic, bool> value;

  SimpleClassOfDynamicToBool(
    this.value,
  );

  factory SimpleClassOfDynamicToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToBool {
  final Map<dynamic, bool>? value;

  SimpleClassNullableOfDynamicToBool(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToBool {
  final Map<EnumType, bool> value;

  SimpleClassOfEnumTypeToBool(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToBool {
  final Map<EnumType, bool>? value;

  SimpleClassNullableOfEnumTypeToBool(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToBool {
  final Map<int, bool> value;

  SimpleClassOfIntToBool(
    this.value,
  );

  factory SimpleClassOfIntToBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToBool {
  final Map<int, bool>? value;

  SimpleClassNullableOfIntToBool(
    this.value,
  );

  factory SimpleClassNullableOfIntToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToBool {
  final Map<Object, bool> value;

  SimpleClassOfObjectToBool(
    this.value,
  );

  factory SimpleClassOfObjectToBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToBool {
  final Map<Object, bool>? value;

  SimpleClassNullableOfObjectToBool(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToBool {
  final Map<String, bool> value;

  SimpleClassOfStringToBool(
    this.value,
  );

  factory SimpleClassOfStringToBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToBool {
  final Map<String, bool>? value;

  SimpleClassNullableOfStringToBool(
    this.value,
  );

  factory SimpleClassNullableOfStringToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToBool {
  final Map<Uri, bool> value;

  SimpleClassOfUriToBool(
    this.value,
  );

  factory SimpleClassOfUriToBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToBool {
  final Map<Uri, bool>? value;

  SimpleClassNullableOfUriToBool(
    this.value,
  );

  factory SimpleClassNullableOfUriToBool.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToBoolNullable {
  final Map<BigInt, bool?> value;

  SimpleClassOfBigIntToBoolNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToBoolNullable {
  final Map<BigInt, bool?>? value;

  SimpleClassNullableOfBigIntToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToBoolNullable {
  final Map<DateTime, bool?> value;

  SimpleClassOfDateTimeToBoolNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToBoolNullable {
  final Map<DateTime, bool?>? value;

  SimpleClassNullableOfDateTimeToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToBoolNullable {
  final Map<dynamic, bool?> value;

  SimpleClassOfDynamicToBoolNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToBoolNullable {
  final Map<dynamic, bool?>? value;

  SimpleClassNullableOfDynamicToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?> value;

  SimpleClassOfEnumTypeToBoolNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?>? value;

  SimpleClassNullableOfEnumTypeToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToBoolNullable {
  final Map<int, bool?> value;

  SimpleClassOfIntToBoolNullable(
    this.value,
  );

  factory SimpleClassOfIntToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToBoolNullable {
  final Map<int, bool?>? value;

  SimpleClassNullableOfIntToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToBoolNullable {
  final Map<Object, bool?> value;

  SimpleClassOfObjectToBoolNullable(
    this.value,
  );

  factory SimpleClassOfObjectToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToBoolNullable {
  final Map<Object, bool?>? value;

  SimpleClassNullableOfObjectToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToBoolNullable {
  final Map<String, bool?> value;

  SimpleClassOfStringToBoolNullable(
    this.value,
  );

  factory SimpleClassOfStringToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToBoolNullable {
  final Map<String, bool?>? value;

  SimpleClassNullableOfStringToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToBoolNullable {
  final Map<Uri, bool?> value;

  SimpleClassOfUriToBoolNullable(
    this.value,
  );

  factory SimpleClassOfUriToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToBoolNullable {
  final Map<Uri, bool?>? value;

  SimpleClassNullableOfUriToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDateTime {
  final Map<BigInt, DateTime> value;

  SimpleClassOfBigIntToDateTime(
    this.value,
  );

  factory SimpleClassOfBigIntToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDateTime {
  final Map<BigInt, DateTime>? value;

  SimpleClassNullableOfBigIntToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDateTime {
  final Map<DateTime, DateTime> value;

  SimpleClassOfDateTimeToDateTime(
    this.value,
  );

  factory SimpleClassOfDateTimeToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDateTime {
  final Map<DateTime, DateTime>? value;

  SimpleClassNullableOfDateTimeToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDateTime {
  final Map<dynamic, DateTime> value;

  SimpleClassOfDynamicToDateTime(
    this.value,
  );

  factory SimpleClassOfDynamicToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDateTime {
  final Map<dynamic, DateTime>? value;

  SimpleClassNullableOfDynamicToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDateTime {
  final Map<EnumType, DateTime> value;

  SimpleClassOfEnumTypeToDateTime(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDateTime {
  final Map<EnumType, DateTime>? value;

  SimpleClassNullableOfEnumTypeToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDateTime {
  final Map<int, DateTime> value;

  SimpleClassOfIntToDateTime(
    this.value,
  );

  factory SimpleClassOfIntToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDateTime {
  final Map<int, DateTime>? value;

  SimpleClassNullableOfIntToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfIntToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDateTime {
  final Map<Object, DateTime> value;

  SimpleClassOfObjectToDateTime(
    this.value,
  );

  factory SimpleClassOfObjectToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDateTime {
  final Map<Object, DateTime>? value;

  SimpleClassNullableOfObjectToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDateTime {
  final Map<String, DateTime> value;

  SimpleClassOfStringToDateTime(
    this.value,
  );

  factory SimpleClassOfStringToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDateTime {
  final Map<String, DateTime>? value;

  SimpleClassNullableOfStringToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfStringToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDateTime {
  final Map<Uri, DateTime> value;

  SimpleClassOfUriToDateTime(
    this.value,
  );

  factory SimpleClassOfUriToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDateTime {
  final Map<Uri, DateTime>? value;

  SimpleClassNullableOfUriToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfUriToDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?> value;

  SimpleClassOfBigIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?>? value;

  SimpleClassNullableOfBigIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?> value;

  SimpleClassOfDateTimeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?>? value;

  SimpleClassNullableOfDateTimeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?> value;

  SimpleClassOfDynamicToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?>? value;

  SimpleClassNullableOfDynamicToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?> value;

  SimpleClassOfEnumTypeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?>? value;

  SimpleClassNullableOfEnumTypeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDateTimeNullable {
  final Map<int, DateTime?> value;

  SimpleClassOfIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfIntToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDateTimeNullable {
  final Map<int, DateTime?>? value;

  SimpleClassNullableOfIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDateTimeNullable {
  final Map<Object, DateTime?> value;

  SimpleClassOfObjectToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDateTimeNullable {
  final Map<Object, DateTime?>? value;

  SimpleClassNullableOfObjectToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDateTimeNullable {
  final Map<String, DateTime?> value;

  SimpleClassOfStringToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfStringToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDateTimeNullable {
  final Map<String, DateTime?>? value;

  SimpleClassNullableOfStringToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDateTimeNullable {
  final Map<Uri, DateTime?> value;

  SimpleClassOfUriToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfUriToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDateTimeNullable {
  final Map<Uri, DateTime?>? value;

  SimpleClassNullableOfUriToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDouble {
  final Map<BigInt, double> value;

  SimpleClassOfBigIntToDouble(
    this.value,
  );

  factory SimpleClassOfBigIntToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDouble {
  final Map<BigInt, double>? value;

  SimpleClassNullableOfBigIntToDouble(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDouble {
  final Map<DateTime, double> value;

  SimpleClassOfDateTimeToDouble(
    this.value,
  );

  factory SimpleClassOfDateTimeToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDouble {
  final Map<DateTime, double>? value;

  SimpleClassNullableOfDateTimeToDouble(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDouble {
  final Map<dynamic, double> value;

  SimpleClassOfDynamicToDouble(
    this.value,
  );

  factory SimpleClassOfDynamicToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDouble {
  final Map<dynamic, double>? value;

  SimpleClassNullableOfDynamicToDouble(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDouble {
  final Map<EnumType, double> value;

  SimpleClassOfEnumTypeToDouble(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDouble {
  final Map<EnumType, double>? value;

  SimpleClassNullableOfEnumTypeToDouble(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDouble {
  final Map<int, double> value;

  SimpleClassOfIntToDouble(
    this.value,
  );

  factory SimpleClassOfIntToDouble.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDouble {
  final Map<int, double>? value;

  SimpleClassNullableOfIntToDouble(
    this.value,
  );

  factory SimpleClassNullableOfIntToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDouble {
  final Map<Object, double> value;

  SimpleClassOfObjectToDouble(
    this.value,
  );

  factory SimpleClassOfObjectToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDouble {
  final Map<Object, double>? value;

  SimpleClassNullableOfObjectToDouble(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDouble {
  final Map<String, double> value;

  SimpleClassOfStringToDouble(
    this.value,
  );

  factory SimpleClassOfStringToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDouble {
  final Map<String, double>? value;

  SimpleClassNullableOfStringToDouble(
    this.value,
  );

  factory SimpleClassNullableOfStringToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDouble {
  final Map<Uri, double> value;

  SimpleClassOfUriToDouble(
    this.value,
  );

  factory SimpleClassOfUriToDouble.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDouble {
  final Map<Uri, double>? value;

  SimpleClassNullableOfUriToDouble(
    this.value,
  );

  factory SimpleClassNullableOfUriToDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDoubleNullable {
  final Map<BigInt, double?> value;

  SimpleClassOfBigIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDoubleNullable {
  final Map<BigInt, double?>? value;

  SimpleClassNullableOfBigIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDoubleNullable {
  final Map<DateTime, double?> value;

  SimpleClassOfDateTimeToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDoubleNullable {
  final Map<DateTime, double?>? value;

  SimpleClassNullableOfDateTimeToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDoubleNullable {
  final Map<dynamic, double?> value;

  SimpleClassOfDynamicToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDoubleNullable {
  final Map<dynamic, double?>? value;

  SimpleClassNullableOfDynamicToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?> value;

  SimpleClassOfEnumTypeToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?>? value;

  SimpleClassNullableOfEnumTypeToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDoubleNullable {
  final Map<int, double?> value;

  SimpleClassOfIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfIntToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDoubleNullable {
  final Map<int, double?>? value;

  SimpleClassNullableOfIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDoubleNullable {
  final Map<Object, double?> value;

  SimpleClassOfObjectToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDoubleNullable {
  final Map<Object, double?>? value;

  SimpleClassNullableOfObjectToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDoubleNullable {
  final Map<String, double?> value;

  SimpleClassOfStringToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfStringToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDoubleNullable {
  final Map<String, double?>? value;

  SimpleClassNullableOfStringToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDoubleNullable {
  final Map<Uri, double?> value;

  SimpleClassOfUriToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfUriToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDoubleNullable {
  final Map<Uri, double?>? value;

  SimpleClassNullableOfUriToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDuration {
  final Map<BigInt, Duration> value;

  SimpleClassOfBigIntToDuration(
    this.value,
  );

  factory SimpleClassOfBigIntToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDuration {
  final Map<BigInt, Duration>? value;

  SimpleClassNullableOfBigIntToDuration(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDuration {
  final Map<DateTime, Duration> value;

  SimpleClassOfDateTimeToDuration(
    this.value,
  );

  factory SimpleClassOfDateTimeToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDuration {
  final Map<DateTime, Duration>? value;

  SimpleClassNullableOfDateTimeToDuration(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDuration {
  final Map<dynamic, Duration> value;

  SimpleClassOfDynamicToDuration(
    this.value,
  );

  factory SimpleClassOfDynamicToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDuration {
  final Map<dynamic, Duration>? value;

  SimpleClassNullableOfDynamicToDuration(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDuration {
  final Map<EnumType, Duration> value;

  SimpleClassOfEnumTypeToDuration(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDuration {
  final Map<EnumType, Duration>? value;

  SimpleClassNullableOfEnumTypeToDuration(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDuration {
  final Map<int, Duration> value;

  SimpleClassOfIntToDuration(
    this.value,
  );

  factory SimpleClassOfIntToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDuration {
  final Map<int, Duration>? value;

  SimpleClassNullableOfIntToDuration(
    this.value,
  );

  factory SimpleClassNullableOfIntToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDuration {
  final Map<Object, Duration> value;

  SimpleClassOfObjectToDuration(
    this.value,
  );

  factory SimpleClassOfObjectToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDuration {
  final Map<Object, Duration>? value;

  SimpleClassNullableOfObjectToDuration(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDuration {
  final Map<String, Duration> value;

  SimpleClassOfStringToDuration(
    this.value,
  );

  factory SimpleClassOfStringToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDuration {
  final Map<String, Duration>? value;

  SimpleClassNullableOfStringToDuration(
    this.value,
  );

  factory SimpleClassNullableOfStringToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDuration {
  final Map<Uri, Duration> value;

  SimpleClassOfUriToDuration(
    this.value,
  );

  factory SimpleClassOfUriToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDuration {
  final Map<Uri, Duration>? value;

  SimpleClassNullableOfUriToDuration(
    this.value,
  );

  factory SimpleClassNullableOfUriToDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDurationNullable {
  final Map<BigInt, Duration?> value;

  SimpleClassOfBigIntToDurationNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDurationNullable {
  final Map<BigInt, Duration?>? value;

  SimpleClassNullableOfBigIntToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?> value;

  SimpleClassOfDateTimeToDurationNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?>? value;

  SimpleClassNullableOfDateTimeToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDurationNullable {
  final Map<dynamic, Duration?> value;

  SimpleClassOfDynamicToDurationNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDurationNullable {
  final Map<dynamic, Duration?>? value;

  SimpleClassNullableOfDynamicToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?> value;

  SimpleClassOfEnumTypeToDurationNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?>? value;

  SimpleClassNullableOfEnumTypeToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDurationNullable {
  final Map<int, Duration?> value;

  SimpleClassOfIntToDurationNullable(
    this.value,
  );

  factory SimpleClassOfIntToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDurationNullable {
  final Map<int, Duration?>? value;

  SimpleClassNullableOfIntToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDurationNullable {
  final Map<Object, Duration?> value;

  SimpleClassOfObjectToDurationNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDurationNullable {
  final Map<Object, Duration?>? value;

  SimpleClassNullableOfObjectToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDurationNullable {
  final Map<String, Duration?> value;

  SimpleClassOfStringToDurationNullable(
    this.value,
  );

  factory SimpleClassOfStringToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDurationNullable {
  final Map<String, Duration?>? value;

  SimpleClassNullableOfStringToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDurationNullable {
  final Map<Uri, Duration?> value;

  SimpleClassOfUriToDurationNullable(
    this.value,
  );

  factory SimpleClassOfUriToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDurationNullable {
  final Map<Uri, Duration?>? value;

  SimpleClassNullableOfUriToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToDynamic {
  final Map<BigInt, dynamic> value;

  SimpleClassOfBigIntToDynamic(
    this.value,
  );

  factory SimpleClassOfBigIntToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToDynamic {
  final Map<BigInt, dynamic>? value;

  SimpleClassNullableOfBigIntToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToDynamic {
  final Map<DateTime, dynamic> value;

  SimpleClassOfDateTimeToDynamic(
    this.value,
  );

  factory SimpleClassOfDateTimeToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToDynamic {
  final Map<DateTime, dynamic>? value;

  SimpleClassNullableOfDateTimeToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToDynamic {
  final Map<dynamic, dynamic> value;

  SimpleClassOfDynamicToDynamic(
    this.value,
  );

  factory SimpleClassOfDynamicToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToDynamic {
  final Map<dynamic, dynamic>? value;

  SimpleClassNullableOfDynamicToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToDynamic {
  final Map<EnumType, dynamic> value;

  SimpleClassOfEnumTypeToDynamic(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToDynamic {
  final Map<EnumType, dynamic>? value;

  SimpleClassNullableOfEnumTypeToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToDynamic {
  final Map<int, dynamic> value;

  SimpleClassOfIntToDynamic(
    this.value,
  );

  factory SimpleClassOfIntToDynamic.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToDynamic {
  final Map<int, dynamic>? value;

  SimpleClassNullableOfIntToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfIntToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToDynamic {
  final Map<Object, dynamic> value;

  SimpleClassOfObjectToDynamic(
    this.value,
  );

  factory SimpleClassOfObjectToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToDynamic {
  final Map<Object, dynamic>? value;

  SimpleClassNullableOfObjectToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToDynamic {
  final Map<String, dynamic> value;

  SimpleClassOfStringToDynamic(
    this.value,
  );

  factory SimpleClassOfStringToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToDynamic {
  final Map<String, dynamic>? value;

  SimpleClassNullableOfStringToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfStringToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToDynamic {
  final Map<Uri, dynamic> value;

  SimpleClassOfUriToDynamic(
    this.value,
  );

  factory SimpleClassOfUriToDynamic.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToDynamic {
  final Map<Uri, dynamic>? value;

  SimpleClassNullableOfUriToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfUriToDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToEnumType {
  final Map<BigInt, EnumType> value;

  SimpleClassOfBigIntToEnumType(
    this.value,
  );

  factory SimpleClassOfBigIntToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToEnumType {
  final Map<BigInt, EnumType>? value;

  SimpleClassNullableOfBigIntToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToEnumType {
  final Map<DateTime, EnumType> value;

  SimpleClassOfDateTimeToEnumType(
    this.value,
  );

  factory SimpleClassOfDateTimeToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToEnumType {
  final Map<DateTime, EnumType>? value;

  SimpleClassNullableOfDateTimeToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToEnumType {
  final Map<dynamic, EnumType> value;

  SimpleClassOfDynamicToEnumType(
    this.value,
  );

  factory SimpleClassOfDynamicToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToEnumType {
  final Map<dynamic, EnumType>? value;

  SimpleClassNullableOfDynamicToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToEnumType {
  final Map<EnumType, EnumType> value;

  SimpleClassOfEnumTypeToEnumType(
    this.value,
  );

  factory SimpleClassOfEnumTypeToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToEnumType {
  final Map<EnumType, EnumType>? value;

  SimpleClassNullableOfEnumTypeToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToEnumType {
  final Map<int, EnumType> value;

  SimpleClassOfIntToEnumType(
    this.value,
  );

  factory SimpleClassOfIntToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToEnumType {
  final Map<int, EnumType>? value;

  SimpleClassNullableOfIntToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfIntToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToEnumType {
  final Map<Object, EnumType> value;

  SimpleClassOfObjectToEnumType(
    this.value,
  );

  factory SimpleClassOfObjectToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToEnumType {
  final Map<Object, EnumType>? value;

  SimpleClassNullableOfObjectToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfObjectToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToEnumType {
  final Map<String, EnumType> value;

  SimpleClassOfStringToEnumType(
    this.value,
  );

  factory SimpleClassOfStringToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToEnumType {
  final Map<String, EnumType>? value;

  SimpleClassNullableOfStringToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfStringToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToEnumType {
  final Map<Uri, EnumType> value;

  SimpleClassOfUriToEnumType(
    this.value,
  );

  factory SimpleClassOfUriToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToEnumType {
  final Map<Uri, EnumType>? value;

  SimpleClassNullableOfUriToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfUriToEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?> value;

  SimpleClassOfBigIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?>? value;

  SimpleClassNullableOfBigIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?> value;

  SimpleClassOfDateTimeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?>? value;

  SimpleClassNullableOfDateTimeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?> value;

  SimpleClassOfDynamicToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?>? value;

  SimpleClassNullableOfDynamicToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?> value;

  SimpleClassOfEnumTypeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?>? value;

  SimpleClassNullableOfEnumTypeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToEnumTypeNullable {
  final Map<int, EnumType?> value;

  SimpleClassOfIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfIntToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToEnumTypeNullable {
  final Map<int, EnumType?>? value;

  SimpleClassNullableOfIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?> value;

  SimpleClassOfObjectToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfObjectToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?>? value;

  SimpleClassNullableOfObjectToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToEnumTypeNullable {
  final Map<String, EnumType?> value;

  SimpleClassOfStringToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfStringToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToEnumTypeNullable {
  final Map<String, EnumType?>? value;

  SimpleClassNullableOfStringToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?> value;

  SimpleClassOfUriToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfUriToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?>? value;

  SimpleClassNullableOfUriToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToInt {
  final Map<BigInt, int> value;

  SimpleClassOfBigIntToInt(
    this.value,
  );

  factory SimpleClassOfBigIntToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToInt {
  final Map<BigInt, int>? value;

  SimpleClassNullableOfBigIntToInt(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToInt {
  final Map<DateTime, int> value;

  SimpleClassOfDateTimeToInt(
    this.value,
  );

  factory SimpleClassOfDateTimeToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToInt {
  final Map<DateTime, int>? value;

  SimpleClassNullableOfDateTimeToInt(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToInt {
  final Map<dynamic, int> value;

  SimpleClassOfDynamicToInt(
    this.value,
  );

  factory SimpleClassOfDynamicToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToInt {
  final Map<dynamic, int>? value;

  SimpleClassNullableOfDynamicToInt(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToInt {
  final Map<EnumType, int> value;

  SimpleClassOfEnumTypeToInt(
    this.value,
  );

  factory SimpleClassOfEnumTypeToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToInt {
  final Map<EnumType, int>? value;

  SimpleClassNullableOfEnumTypeToInt(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToInt {
  final Map<int, int> value;

  SimpleClassOfIntToInt(
    this.value,
  );

  factory SimpleClassOfIntToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToInt {
  final Map<int, int>? value;

  SimpleClassNullableOfIntToInt(
    this.value,
  );

  factory SimpleClassNullableOfIntToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToInt {
  final Map<Object, int> value;

  SimpleClassOfObjectToInt(
    this.value,
  );

  factory SimpleClassOfObjectToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToInt {
  final Map<Object, int>? value;

  SimpleClassNullableOfObjectToInt(
    this.value,
  );

  factory SimpleClassNullableOfObjectToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToInt {
  final Map<String, int> value;

  SimpleClassOfStringToInt(
    this.value,
  );

  factory SimpleClassOfStringToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToInt {
  final Map<String, int>? value;

  SimpleClassNullableOfStringToInt(
    this.value,
  );

  factory SimpleClassNullableOfStringToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToInt {
  final Map<Uri, int> value;

  SimpleClassOfUriToInt(
    this.value,
  );

  factory SimpleClassOfUriToInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToInt {
  final Map<Uri, int>? value;

  SimpleClassNullableOfUriToInt(
    this.value,
  );

  factory SimpleClassNullableOfUriToInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToIntNullable {
  final Map<BigInt, int?> value;

  SimpleClassOfBigIntToIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToIntNullable {
  final Map<BigInt, int?>? value;

  SimpleClassNullableOfBigIntToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToIntNullable {
  final Map<DateTime, int?> value;

  SimpleClassOfDateTimeToIntNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToIntNullable {
  final Map<DateTime, int?>? value;

  SimpleClassNullableOfDateTimeToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToIntNullable {
  final Map<dynamic, int?> value;

  SimpleClassOfDynamicToIntNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToIntNullable {
  final Map<dynamic, int?>? value;

  SimpleClassNullableOfDynamicToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToIntNullable {
  final Map<EnumType, int?> value;

  SimpleClassOfEnumTypeToIntNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToIntNullable {
  final Map<EnumType, int?>? value;

  SimpleClassNullableOfEnumTypeToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToIntNullable {
  final Map<int, int?> value;

  SimpleClassOfIntToIntNullable(
    this.value,
  );

  factory SimpleClassOfIntToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToIntNullable {
  final Map<int, int?>? value;

  SimpleClassNullableOfIntToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToIntNullable {
  final Map<Object, int?> value;

  SimpleClassOfObjectToIntNullable(
    this.value,
  );

  factory SimpleClassOfObjectToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToIntNullable {
  final Map<Object, int?>? value;

  SimpleClassNullableOfObjectToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToIntNullable {
  final Map<String, int?> value;

  SimpleClassOfStringToIntNullable(
    this.value,
  );

  factory SimpleClassOfStringToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToIntNullable {
  final Map<String, int?>? value;

  SimpleClassNullableOfStringToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToIntNullable {
  final Map<Uri, int?> value;

  SimpleClassOfUriToIntNullable(
    this.value,
  );

  factory SimpleClassOfUriToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToIntNullable {
  final Map<Uri, int?>? value;

  SimpleClassNullableOfUriToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToNum {
  final Map<BigInt, num> value;

  SimpleClassOfBigIntToNum(
    this.value,
  );

  factory SimpleClassOfBigIntToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToNum {
  final Map<BigInt, num>? value;

  SimpleClassNullableOfBigIntToNum(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToNum {
  final Map<DateTime, num> value;

  SimpleClassOfDateTimeToNum(
    this.value,
  );

  factory SimpleClassOfDateTimeToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToNum {
  final Map<DateTime, num>? value;

  SimpleClassNullableOfDateTimeToNum(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToNum {
  final Map<dynamic, num> value;

  SimpleClassOfDynamicToNum(
    this.value,
  );

  factory SimpleClassOfDynamicToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToNum {
  final Map<dynamic, num>? value;

  SimpleClassNullableOfDynamicToNum(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToNum {
  final Map<EnumType, num> value;

  SimpleClassOfEnumTypeToNum(
    this.value,
  );

  factory SimpleClassOfEnumTypeToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToNum {
  final Map<EnumType, num>? value;

  SimpleClassNullableOfEnumTypeToNum(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToNum {
  final Map<int, num> value;

  SimpleClassOfIntToNum(
    this.value,
  );

  factory SimpleClassOfIntToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToNum {
  final Map<int, num>? value;

  SimpleClassNullableOfIntToNum(
    this.value,
  );

  factory SimpleClassNullableOfIntToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToNum {
  final Map<Object, num> value;

  SimpleClassOfObjectToNum(
    this.value,
  );

  factory SimpleClassOfObjectToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToNum {
  final Map<Object, num>? value;

  SimpleClassNullableOfObjectToNum(
    this.value,
  );

  factory SimpleClassNullableOfObjectToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToNum {
  final Map<String, num> value;

  SimpleClassOfStringToNum(
    this.value,
  );

  factory SimpleClassOfStringToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToNum {
  final Map<String, num>? value;

  SimpleClassNullableOfStringToNum(
    this.value,
  );

  factory SimpleClassNullableOfStringToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToNum {
  final Map<Uri, num> value;

  SimpleClassOfUriToNum(
    this.value,
  );

  factory SimpleClassOfUriToNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToNum {
  final Map<Uri, num>? value;

  SimpleClassNullableOfUriToNum(
    this.value,
  );

  factory SimpleClassNullableOfUriToNum.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToNumNullable {
  final Map<BigInt, num?> value;

  SimpleClassOfBigIntToNumNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToNumNullable {
  final Map<BigInt, num?>? value;

  SimpleClassNullableOfBigIntToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToNumNullable {
  final Map<DateTime, num?> value;

  SimpleClassOfDateTimeToNumNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToNumNullable {
  final Map<DateTime, num?>? value;

  SimpleClassNullableOfDateTimeToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToNumNullable {
  final Map<dynamic, num?> value;

  SimpleClassOfDynamicToNumNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToNumNullable {
  final Map<dynamic, num?>? value;

  SimpleClassNullableOfDynamicToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToNumNullable {
  final Map<EnumType, num?> value;

  SimpleClassOfEnumTypeToNumNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToNumNullable {
  final Map<EnumType, num?>? value;

  SimpleClassNullableOfEnumTypeToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToNumNullable {
  final Map<int, num?> value;

  SimpleClassOfIntToNumNullable(
    this.value,
  );

  factory SimpleClassOfIntToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToNumNullable {
  final Map<int, num?>? value;

  SimpleClassNullableOfIntToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToNumNullable {
  final Map<Object, num?> value;

  SimpleClassOfObjectToNumNullable(
    this.value,
  );

  factory SimpleClassOfObjectToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToNumNullable {
  final Map<Object, num?>? value;

  SimpleClassNullableOfObjectToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToNumNullable {
  final Map<String, num?> value;

  SimpleClassOfStringToNumNullable(
    this.value,
  );

  factory SimpleClassOfStringToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToNumNullable {
  final Map<String, num?>? value;

  SimpleClassNullableOfStringToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToNumNullable {
  final Map<Uri, num?> value;

  SimpleClassOfUriToNumNullable(
    this.value,
  );

  factory SimpleClassOfUriToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToNumNullable {
  final Map<Uri, num?>? value;

  SimpleClassNullableOfUriToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToObject {
  final Map<BigInt, Object> value;

  SimpleClassOfBigIntToObject(
    this.value,
  );

  factory SimpleClassOfBigIntToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToObject {
  final Map<BigInt, Object>? value;

  SimpleClassNullableOfBigIntToObject(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToObject {
  final Map<DateTime, Object> value;

  SimpleClassOfDateTimeToObject(
    this.value,
  );

  factory SimpleClassOfDateTimeToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToObject {
  final Map<DateTime, Object>? value;

  SimpleClassNullableOfDateTimeToObject(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToObject {
  final Map<dynamic, Object> value;

  SimpleClassOfDynamicToObject(
    this.value,
  );

  factory SimpleClassOfDynamicToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToObject {
  final Map<dynamic, Object>? value;

  SimpleClassNullableOfDynamicToObject(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToObject {
  final Map<EnumType, Object> value;

  SimpleClassOfEnumTypeToObject(
    this.value,
  );

  factory SimpleClassOfEnumTypeToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToObject {
  final Map<EnumType, Object>? value;

  SimpleClassNullableOfEnumTypeToObject(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToObject {
  final Map<int, Object> value;

  SimpleClassOfIntToObject(
    this.value,
  );

  factory SimpleClassOfIntToObject.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToObject {
  final Map<int, Object>? value;

  SimpleClassNullableOfIntToObject(
    this.value,
  );

  factory SimpleClassNullableOfIntToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToObject {
  final Map<Object, Object> value;

  SimpleClassOfObjectToObject(
    this.value,
  );

  factory SimpleClassOfObjectToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToObject {
  final Map<Object, Object>? value;

  SimpleClassNullableOfObjectToObject(
    this.value,
  );

  factory SimpleClassNullableOfObjectToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToObject {
  final Map<String, Object> value;

  SimpleClassOfStringToObject(
    this.value,
  );

  factory SimpleClassOfStringToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToObject {
  final Map<String, Object>? value;

  SimpleClassNullableOfStringToObject(
    this.value,
  );

  factory SimpleClassNullableOfStringToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToObject {
  final Map<Uri, Object> value;

  SimpleClassOfUriToObject(
    this.value,
  );

  factory SimpleClassOfUriToObject.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToObject {
  final Map<Uri, Object>? value;

  SimpleClassNullableOfUriToObject(
    this.value,
  );

  factory SimpleClassNullableOfUriToObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToObjectNullable {
  final Map<BigInt, Object?> value;

  SimpleClassOfBigIntToObjectNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToObjectNullable {
  final Map<BigInt, Object?>? value;

  SimpleClassNullableOfBigIntToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToObjectNullable {
  final Map<DateTime, Object?> value;

  SimpleClassOfDateTimeToObjectNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToObjectNullable {
  final Map<DateTime, Object?>? value;

  SimpleClassNullableOfDateTimeToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToObjectNullable {
  final Map<dynamic, Object?> value;

  SimpleClassOfDynamicToObjectNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToObjectNullable {
  final Map<dynamic, Object?>? value;

  SimpleClassNullableOfDynamicToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?> value;

  SimpleClassOfEnumTypeToObjectNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?>? value;

  SimpleClassNullableOfEnumTypeToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToObjectNullable {
  final Map<int, Object?> value;

  SimpleClassOfIntToObjectNullable(
    this.value,
  );

  factory SimpleClassOfIntToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToObjectNullable {
  final Map<int, Object?>? value;

  SimpleClassNullableOfIntToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToObjectNullable {
  final Map<Object, Object?> value;

  SimpleClassOfObjectToObjectNullable(
    this.value,
  );

  factory SimpleClassOfObjectToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToObjectNullable {
  final Map<Object, Object?>? value;

  SimpleClassNullableOfObjectToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToObjectNullable {
  final Map<String, Object?> value;

  SimpleClassOfStringToObjectNullable(
    this.value,
  );

  factory SimpleClassOfStringToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToObjectNullable {
  final Map<String, Object?>? value;

  SimpleClassNullableOfStringToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToObjectNullable {
  final Map<Uri, Object?> value;

  SimpleClassOfUriToObjectNullable(
    this.value,
  );

  factory SimpleClassOfUriToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToObjectNullable {
  final Map<Uri, Object?>? value;

  SimpleClassNullableOfUriToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToString {
  final Map<BigInt, String> value;

  SimpleClassOfBigIntToString(
    this.value,
  );

  factory SimpleClassOfBigIntToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToString {
  final Map<BigInt, String>? value;

  SimpleClassNullableOfBigIntToString(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToString {
  final Map<DateTime, String> value;

  SimpleClassOfDateTimeToString(
    this.value,
  );

  factory SimpleClassOfDateTimeToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToString {
  final Map<DateTime, String>? value;

  SimpleClassNullableOfDateTimeToString(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToString {
  final Map<dynamic, String> value;

  SimpleClassOfDynamicToString(
    this.value,
  );

  factory SimpleClassOfDynamicToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToString {
  final Map<dynamic, String>? value;

  SimpleClassNullableOfDynamicToString(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToString {
  final Map<EnumType, String> value;

  SimpleClassOfEnumTypeToString(
    this.value,
  );

  factory SimpleClassOfEnumTypeToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToString {
  final Map<EnumType, String>? value;

  SimpleClassNullableOfEnumTypeToString(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToString {
  final Map<int, String> value;

  SimpleClassOfIntToString(
    this.value,
  );

  factory SimpleClassOfIntToString.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToString {
  final Map<int, String>? value;

  SimpleClassNullableOfIntToString(
    this.value,
  );

  factory SimpleClassNullableOfIntToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToString {
  final Map<Object, String> value;

  SimpleClassOfObjectToString(
    this.value,
  );

  factory SimpleClassOfObjectToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToString {
  final Map<Object, String>? value;

  SimpleClassNullableOfObjectToString(
    this.value,
  );

  factory SimpleClassNullableOfObjectToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToString {
  final Map<String, String> value;

  SimpleClassOfStringToString(
    this.value,
  );

  factory SimpleClassOfStringToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToString {
  final Map<String, String>? value;

  SimpleClassNullableOfStringToString(
    this.value,
  );

  factory SimpleClassNullableOfStringToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToString {
  final Map<Uri, String> value;

  SimpleClassOfUriToString(
    this.value,
  );

  factory SimpleClassOfUriToString.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToString {
  final Map<Uri, String>? value;

  SimpleClassNullableOfUriToString(
    this.value,
  );

  factory SimpleClassNullableOfUriToString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToStringNullable {
  final Map<BigInt, String?> value;

  SimpleClassOfBigIntToStringNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToStringNullable {
  final Map<BigInt, String?>? value;

  SimpleClassNullableOfBigIntToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToStringNullable {
  final Map<DateTime, String?> value;

  SimpleClassOfDateTimeToStringNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToStringNullable {
  final Map<DateTime, String?>? value;

  SimpleClassNullableOfDateTimeToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToStringNullable {
  final Map<dynamic, String?> value;

  SimpleClassOfDynamicToStringNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToStringNullable {
  final Map<dynamic, String?>? value;

  SimpleClassNullableOfDynamicToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToStringNullable {
  final Map<EnumType, String?> value;

  SimpleClassOfEnumTypeToStringNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToStringNullable {
  final Map<EnumType, String?>? value;

  SimpleClassNullableOfEnumTypeToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToStringNullable {
  final Map<int, String?> value;

  SimpleClassOfIntToStringNullable(
    this.value,
  );

  factory SimpleClassOfIntToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToStringNullable {
  final Map<int, String?>? value;

  SimpleClassNullableOfIntToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToStringNullable {
  final Map<Object, String?> value;

  SimpleClassOfObjectToStringNullable(
    this.value,
  );

  factory SimpleClassOfObjectToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToStringNullable {
  final Map<Object, String?>? value;

  SimpleClassNullableOfObjectToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToStringNullable {
  final Map<String, String?> value;

  SimpleClassOfStringToStringNullable(
    this.value,
  );

  factory SimpleClassOfStringToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToStringNullable {
  final Map<String, String?>? value;

  SimpleClassNullableOfStringToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToStringNullable {
  final Map<Uri, String?> value;

  SimpleClassOfUriToStringNullable(
    this.value,
  );

  factory SimpleClassOfUriToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToStringNullable {
  final Map<Uri, String?>? value;

  SimpleClassNullableOfUriToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToUri {
  final Map<BigInt, Uri> value;

  SimpleClassOfBigIntToUri(
    this.value,
  );

  factory SimpleClassOfBigIntToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToUri {
  final Map<BigInt, Uri>? value;

  SimpleClassNullableOfBigIntToUri(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToUri {
  final Map<DateTime, Uri> value;

  SimpleClassOfDateTimeToUri(
    this.value,
  );

  factory SimpleClassOfDateTimeToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToUri {
  final Map<DateTime, Uri>? value;

  SimpleClassNullableOfDateTimeToUri(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToUri {
  final Map<dynamic, Uri> value;

  SimpleClassOfDynamicToUri(
    this.value,
  );

  factory SimpleClassOfDynamicToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToUri {
  final Map<dynamic, Uri>? value;

  SimpleClassNullableOfDynamicToUri(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToUri {
  final Map<EnumType, Uri> value;

  SimpleClassOfEnumTypeToUri(
    this.value,
  );

  factory SimpleClassOfEnumTypeToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToUri {
  final Map<EnumType, Uri>? value;

  SimpleClassNullableOfEnumTypeToUri(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToUri {
  final Map<int, Uri> value;

  SimpleClassOfIntToUri(
    this.value,
  );

  factory SimpleClassOfIntToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToUri {
  final Map<int, Uri>? value;

  SimpleClassNullableOfIntToUri(
    this.value,
  );

  factory SimpleClassNullableOfIntToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToUri {
  final Map<Object, Uri> value;

  SimpleClassOfObjectToUri(
    this.value,
  );

  factory SimpleClassOfObjectToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToUri {
  final Map<Object, Uri>? value;

  SimpleClassNullableOfObjectToUri(
    this.value,
  );

  factory SimpleClassNullableOfObjectToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToUri {
  final Map<String, Uri> value;

  SimpleClassOfStringToUri(
    this.value,
  );

  factory SimpleClassOfStringToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToUri {
  final Map<String, Uri>? value;

  SimpleClassNullableOfStringToUri(
    this.value,
  );

  factory SimpleClassNullableOfStringToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToUri {
  final Map<Uri, Uri> value;

  SimpleClassOfUriToUri(
    this.value,
  );

  factory SimpleClassOfUriToUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToUri {
  final Map<Uri, Uri>? value;

  SimpleClassNullableOfUriToUri(
    this.value,
  );

  factory SimpleClassNullableOfUriToUri.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntToUriNullable {
  final Map<BigInt, Uri?> value;

  SimpleClassOfBigIntToUriNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntToUriNullable {
  final Map<BigInt, Uri?>? value;

  SimpleClassNullableOfBigIntToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeToUriNullable {
  final Map<DateTime, Uri?> value;

  SimpleClassOfDateTimeToUriNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeToUriNullable {
  final Map<DateTime, Uri?>? value;

  SimpleClassNullableOfDateTimeToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamicToUriNullable {
  final Map<dynamic, Uri?> value;

  SimpleClassOfDynamicToUriNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamicToUriNullable {
  final Map<dynamic, Uri?>? value;

  SimpleClassNullableOfDynamicToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?> value;

  SimpleClassOfEnumTypeToUriNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?>? value;

  SimpleClassNullableOfEnumTypeToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntToUriNullable {
  final Map<int, Uri?> value;

  SimpleClassOfIntToUriNullable(
    this.value,
  );

  factory SimpleClassOfIntToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntToUriNullable {
  final Map<int, Uri?>? value;

  SimpleClassNullableOfIntToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectToUriNullable {
  final Map<Object, Uri?> value;

  SimpleClassOfObjectToUriNullable(
    this.value,
  );

  factory SimpleClassOfObjectToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectToUriNullable {
  final Map<Object, Uri?>? value;

  SimpleClassNullableOfObjectToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringToUriNullable {
  final Map<String, Uri?> value;

  SimpleClassOfStringToUriNullable(
    this.value,
  );

  factory SimpleClassOfStringToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringToUriNullable {
  final Map<String, Uri?>? value;

  SimpleClassNullableOfStringToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriToUriNullable {
  final Map<Uri, Uri?> value;

  SimpleClassOfUriToUriNullable(
    this.value,
  );

  factory SimpleClassOfUriToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriToUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriToUriNullable {
  final Map<Uri, Uri?>? value;

  SimpleClassNullableOfUriToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToUriNullableToDynamoJson(this);
}
