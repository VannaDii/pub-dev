// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_json/json_annotation.dart';
import 'enum_type.dart';

part 'input.type_map.g.dart';

@DynamoJson()
class SimpleClass {
  final Map value;

  @DynamoKey(defaultValue: {'a': 1})
  Map withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromJson(Map<String, Object?> json) =>
      _$SimpleClassFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassToJson(this);
}

@DynamoJson()
class SimpleClassNullable {
  final Map? value;

  @DynamoKey(defaultValue: {'a': 1})
  Map? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToBigInt {
  final Map<BigInt, BigInt> value;

  SimpleClassOfBigIntToBigInt(
    this.value,
  );

  factory SimpleClassOfBigIntToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToBigInt {
  final Map<BigInt, BigInt>? value;

  SimpleClassNullableOfBigIntToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToBigInt {
  final Map<DateTime, BigInt> value;

  SimpleClassOfDateTimeToBigInt(
    this.value,
  );

  factory SimpleClassOfDateTimeToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToBigInt {
  final Map<DateTime, BigInt>? value;

  SimpleClassNullableOfDateTimeToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToBigInt {
  final Map<dynamic, BigInt> value;

  SimpleClassOfDynamicToBigInt(
    this.value,
  );

  factory SimpleClassOfDynamicToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToBigInt {
  final Map<dynamic, BigInt>? value;

  SimpleClassNullableOfDynamicToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToBigInt {
  final Map<EnumType, BigInt> value;

  SimpleClassOfEnumTypeToBigInt(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToBigInt {
  final Map<EnumType, BigInt>? value;

  SimpleClassNullableOfEnumTypeToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToBigInt {
  final Map<int, BigInt> value;

  SimpleClassOfIntToBigInt(
    this.value,
  );

  factory SimpleClassOfIntToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToBigInt {
  final Map<int, BigInt>? value;

  SimpleClassNullableOfIntToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfIntToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToBigInt {
  final Map<Object, BigInt> value;

  SimpleClassOfObjectToBigInt(
    this.value,
  );

  factory SimpleClassOfObjectToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToBigInt {
  final Map<Object, BigInt>? value;

  SimpleClassNullableOfObjectToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToBigInt {
  final Map<String, BigInt> value;

  SimpleClassOfStringToBigInt(
    this.value,
  );

  factory SimpleClassOfStringToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToBigInt {
  final Map<String, BigInt>? value;

  SimpleClassNullableOfStringToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfStringToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToBigInt {
  final Map<Uri, BigInt> value;

  SimpleClassOfUriToBigInt(
    this.value,
  );

  factory SimpleClassOfUriToBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToBigInt {
  final Map<Uri, BigInt>? value;

  SimpleClassNullableOfUriToBigInt(
    this.value,
  );

  factory SimpleClassNullableOfUriToBigInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBigIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToBigIntToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?> value;

  SimpleClassOfBigIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?>? value;

  SimpleClassNullableOfBigIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?> value;

  SimpleClassOfDateTimeToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?>? value;

  SimpleClassNullableOfDateTimeToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?> value;

  SimpleClassOfDynamicToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?>? value;

  SimpleClassNullableOfDynamicToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?> value;

  SimpleClassOfEnumTypeToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?>? value;

  SimpleClassNullableOfEnumTypeToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToBigIntNullable {
  final Map<int, BigInt?> value;

  SimpleClassOfIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfIntToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToBigIntNullable {
  final Map<int, BigInt?>? value;

  SimpleClassNullableOfIntToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToBigIntNullable {
  final Map<Object, BigInt?> value;

  SimpleClassOfObjectToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfObjectToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToBigIntNullable {
  final Map<Object, BigInt?>? value;

  SimpleClassNullableOfObjectToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToBigIntNullable {
  final Map<String, BigInt?> value;

  SimpleClassOfStringToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfStringToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToBigIntNullable {
  final Map<String, BigInt?>? value;

  SimpleClassNullableOfStringToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToBigIntNullable {
  final Map<Uri, BigInt?> value;

  SimpleClassOfUriToBigIntNullable(
    this.value,
  );

  factory SimpleClassOfUriToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToBigIntNullable {
  final Map<Uri, BigInt?>? value;

  SimpleClassNullableOfUriToBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToBigIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToBool {
  final Map<BigInt, bool> value;

  SimpleClassOfBigIntToBool(
    this.value,
  );

  factory SimpleClassOfBigIntToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToBool {
  final Map<BigInt, bool>? value;

  SimpleClassNullableOfBigIntToBool(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToBool {
  final Map<DateTime, bool> value;

  SimpleClassOfDateTimeToBool(
    this.value,
  );

  factory SimpleClassOfDateTimeToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToBool {
  final Map<DateTime, bool>? value;

  SimpleClassNullableOfDateTimeToBool(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToBool {
  final Map<dynamic, bool> value;

  SimpleClassOfDynamicToBool(
    this.value,
  );

  factory SimpleClassOfDynamicToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToBool {
  final Map<dynamic, bool>? value;

  SimpleClassNullableOfDynamicToBool(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToBool {
  final Map<EnumType, bool> value;

  SimpleClassOfEnumTypeToBool(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToBool {
  final Map<EnumType, bool>? value;

  SimpleClassNullableOfEnumTypeToBool(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToBool {
  final Map<int, bool> value;

  SimpleClassOfIntToBool(
    this.value,
  );

  factory SimpleClassOfIntToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToBool {
  final Map<int, bool>? value;

  SimpleClassNullableOfIntToBool(
    this.value,
  );

  factory SimpleClassNullableOfIntToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfIntToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToBool {
  final Map<Object, bool> value;

  SimpleClassOfObjectToBool(
    this.value,
  );

  factory SimpleClassOfObjectToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToBool {
  final Map<Object, bool>? value;

  SimpleClassNullableOfObjectToBool(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToBool {
  final Map<String, bool> value;

  SimpleClassOfStringToBool(
    this.value,
  );

  factory SimpleClassOfStringToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToBool {
  final Map<String, bool>? value;

  SimpleClassNullableOfStringToBool(
    this.value,
  );

  factory SimpleClassNullableOfStringToBool.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBoolFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToBool {
  final Map<Uri, bool> value;

  SimpleClassOfUriToBool(
    this.value,
  );

  factory SimpleClassOfUriToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToBoolToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToBool {
  final Map<Uri, bool>? value;

  SimpleClassNullableOfUriToBool(
    this.value,
  );

  factory SimpleClassNullableOfUriToBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfUriToBoolToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToBoolNullable {
  final Map<BigInt, bool?> value;

  SimpleClassOfBigIntToBoolNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToBoolNullable {
  final Map<BigInt, bool?>? value;

  SimpleClassNullableOfBigIntToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToBoolNullable {
  final Map<DateTime, bool?> value;

  SimpleClassOfDateTimeToBoolNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToBoolNullable {
  final Map<DateTime, bool?>? value;

  SimpleClassNullableOfDateTimeToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToBoolNullable {
  final Map<dynamic, bool?> value;

  SimpleClassOfDynamicToBoolNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToBoolNullable {
  final Map<dynamic, bool?>? value;

  SimpleClassNullableOfDynamicToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?> value;

  SimpleClassOfEnumTypeToBoolNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?>? value;

  SimpleClassNullableOfEnumTypeToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToBoolNullable {
  final Map<int, bool?> value;

  SimpleClassOfIntToBoolNullable(
    this.value,
  );

  factory SimpleClassOfIntToBoolNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToBoolNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToBoolNullable {
  final Map<int, bool?>? value;

  SimpleClassNullableOfIntToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToBoolNullable {
  final Map<Object, bool?> value;

  SimpleClassOfObjectToBoolNullable(
    this.value,
  );

  factory SimpleClassOfObjectToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToBoolNullable {
  final Map<Object, bool?>? value;

  SimpleClassNullableOfObjectToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToBoolNullable {
  final Map<String, bool?> value;

  SimpleClassOfStringToBoolNullable(
    this.value,
  );

  factory SimpleClassOfStringToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToBoolNullable {
  final Map<String, bool?>? value;

  SimpleClassNullableOfStringToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToBoolNullable {
  final Map<Uri, bool?> value;

  SimpleClassOfUriToBoolNullable(
    this.value,
  );

  factory SimpleClassOfUriToBoolNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToBoolNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToBoolNullable {
  final Map<Uri, bool?>? value;

  SimpleClassNullableOfUriToBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToBoolNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDateTime {
  final Map<BigInt, DateTime> value;

  SimpleClassOfBigIntToDateTime(
    this.value,
  );

  factory SimpleClassOfBigIntToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDateTime {
  final Map<BigInt, DateTime>? value;

  SimpleClassNullableOfBigIntToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDateTime {
  final Map<DateTime, DateTime> value;

  SimpleClassOfDateTimeToDateTime(
    this.value,
  );

  factory SimpleClassOfDateTimeToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDateTime {
  final Map<DateTime, DateTime>? value;

  SimpleClassNullableOfDateTimeToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDateTime {
  final Map<dynamic, DateTime> value;

  SimpleClassOfDynamicToDateTime(
    this.value,
  );

  factory SimpleClassOfDynamicToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDateTime {
  final Map<dynamic, DateTime>? value;

  SimpleClassNullableOfDynamicToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDateTime {
  final Map<EnumType, DateTime> value;

  SimpleClassOfEnumTypeToDateTime(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDateTime {
  final Map<EnumType, DateTime>? value;

  SimpleClassNullableOfEnumTypeToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDateTime {
  final Map<int, DateTime> value;

  SimpleClassOfIntToDateTime(
    this.value,
  );

  factory SimpleClassOfIntToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDateTime {
  final Map<int, DateTime>? value;

  SimpleClassNullableOfIntToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfIntToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDateTime {
  final Map<Object, DateTime> value;

  SimpleClassOfObjectToDateTime(
    this.value,
  );

  factory SimpleClassOfObjectToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDateTime {
  final Map<Object, DateTime>? value;

  SimpleClassNullableOfObjectToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDateTime {
  final Map<String, DateTime> value;

  SimpleClassOfStringToDateTime(
    this.value,
  );

  factory SimpleClassOfStringToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDateTime {
  final Map<String, DateTime>? value;

  SimpleClassNullableOfStringToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfStringToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDateTime {
  final Map<Uri, DateTime> value;

  SimpleClassOfUriToDateTime(
    this.value,
  );

  factory SimpleClassOfUriToDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDateTime {
  final Map<Uri, DateTime>? value;

  SimpleClassNullableOfUriToDateTime(
    this.value,
  );

  factory SimpleClassNullableOfUriToDateTime.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDateTimeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDateTimeToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?> value;

  SimpleClassOfBigIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?>? value;

  SimpleClassNullableOfBigIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?> value;

  SimpleClassOfDateTimeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?>? value;

  SimpleClassNullableOfDateTimeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?> value;

  SimpleClassOfDynamicToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?>? value;

  SimpleClassNullableOfDynamicToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?> value;

  SimpleClassOfEnumTypeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?>? value;

  SimpleClassNullableOfEnumTypeToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDateTimeNullable {
  final Map<int, DateTime?> value;

  SimpleClassOfIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfIntToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDateTimeNullable {
  final Map<int, DateTime?>? value;

  SimpleClassNullableOfIntToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDateTimeNullable {
  final Map<Object, DateTime?> value;

  SimpleClassOfObjectToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDateTimeNullable {
  final Map<Object, DateTime?>? value;

  SimpleClassNullableOfObjectToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDateTimeNullable {
  final Map<String, DateTime?> value;

  SimpleClassOfStringToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfStringToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDateTimeNullable {
  final Map<String, DateTime?>? value;

  SimpleClassNullableOfStringToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDateTimeNullable {
  final Map<Uri, DateTime?> value;

  SimpleClassOfUriToDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfUriToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDateTimeNullable {
  final Map<Uri, DateTime?>? value;

  SimpleClassNullableOfUriToDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDateTimeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDouble {
  final Map<BigInt, double> value;

  SimpleClassOfBigIntToDouble(
    this.value,
  );

  factory SimpleClassOfBigIntToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDouble {
  final Map<BigInt, double>? value;

  SimpleClassNullableOfBigIntToDouble(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDouble {
  final Map<DateTime, double> value;

  SimpleClassOfDateTimeToDouble(
    this.value,
  );

  factory SimpleClassOfDateTimeToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDouble {
  final Map<DateTime, double>? value;

  SimpleClassNullableOfDateTimeToDouble(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDouble {
  final Map<dynamic, double> value;

  SimpleClassOfDynamicToDouble(
    this.value,
  );

  factory SimpleClassOfDynamicToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDouble {
  final Map<dynamic, double>? value;

  SimpleClassNullableOfDynamicToDouble(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDouble {
  final Map<EnumType, double> value;

  SimpleClassOfEnumTypeToDouble(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDouble {
  final Map<EnumType, double>? value;

  SimpleClassNullableOfEnumTypeToDouble(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDouble {
  final Map<int, double> value;

  SimpleClassOfIntToDouble(
    this.value,
  );

  factory SimpleClassOfIntToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDouble {
  final Map<int, double>? value;

  SimpleClassNullableOfIntToDouble(
    this.value,
  );

  factory SimpleClassNullableOfIntToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDouble {
  final Map<Object, double> value;

  SimpleClassOfObjectToDouble(
    this.value,
  );

  factory SimpleClassOfObjectToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDouble {
  final Map<Object, double>? value;

  SimpleClassNullableOfObjectToDouble(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDouble {
  final Map<String, double> value;

  SimpleClassOfStringToDouble(
    this.value,
  );

  factory SimpleClassOfStringToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDouble {
  final Map<String, double>? value;

  SimpleClassNullableOfStringToDouble(
    this.value,
  );

  factory SimpleClassNullableOfStringToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDouble {
  final Map<Uri, double> value;

  SimpleClassOfUriToDouble(
    this.value,
  );

  factory SimpleClassOfUriToDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDouble {
  final Map<Uri, double>? value;

  SimpleClassNullableOfUriToDouble(
    this.value,
  );

  factory SimpleClassNullableOfUriToDouble.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDoubleFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDoubleToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDoubleNullable {
  final Map<BigInt, double?> value;

  SimpleClassOfBigIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDoubleNullable {
  final Map<BigInt, double?>? value;

  SimpleClassNullableOfBigIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDoubleNullable {
  final Map<DateTime, double?> value;

  SimpleClassOfDateTimeToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDoubleNullable {
  final Map<DateTime, double?>? value;

  SimpleClassNullableOfDateTimeToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDoubleNullable {
  final Map<dynamic, double?> value;

  SimpleClassOfDynamicToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDoubleNullable {
  final Map<dynamic, double?>? value;

  SimpleClassNullableOfDynamicToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?> value;

  SimpleClassOfEnumTypeToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?>? value;

  SimpleClassNullableOfEnumTypeToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDoubleNullable {
  final Map<int, double?> value;

  SimpleClassOfIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfIntToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDoubleNullable {
  final Map<int, double?>? value;

  SimpleClassNullableOfIntToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDoubleNullable {
  final Map<Object, double?> value;

  SimpleClassOfObjectToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDoubleNullable {
  final Map<Object, double?>? value;

  SimpleClassNullableOfObjectToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDoubleNullable {
  final Map<String, double?> value;

  SimpleClassOfStringToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfStringToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDoubleNullable {
  final Map<String, double?>? value;

  SimpleClassNullableOfStringToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDoubleNullable {
  final Map<Uri, double?> value;

  SimpleClassOfUriToDoubleNullable(
    this.value,
  );

  factory SimpleClassOfUriToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDoubleNullable {
  final Map<Uri, double?>? value;

  SimpleClassNullableOfUriToDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDoubleNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDuration {
  final Map<BigInt, Duration> value;

  SimpleClassOfBigIntToDuration(
    this.value,
  );

  factory SimpleClassOfBigIntToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDuration {
  final Map<BigInt, Duration>? value;

  SimpleClassNullableOfBigIntToDuration(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDuration {
  final Map<DateTime, Duration> value;

  SimpleClassOfDateTimeToDuration(
    this.value,
  );

  factory SimpleClassOfDateTimeToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDuration {
  final Map<DateTime, Duration>? value;

  SimpleClassNullableOfDateTimeToDuration(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDuration {
  final Map<dynamic, Duration> value;

  SimpleClassOfDynamicToDuration(
    this.value,
  );

  factory SimpleClassOfDynamicToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDuration {
  final Map<dynamic, Duration>? value;

  SimpleClassNullableOfDynamicToDuration(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDuration {
  final Map<EnumType, Duration> value;

  SimpleClassOfEnumTypeToDuration(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDuration {
  final Map<EnumType, Duration>? value;

  SimpleClassNullableOfEnumTypeToDuration(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDuration {
  final Map<int, Duration> value;

  SimpleClassOfIntToDuration(
    this.value,
  );

  factory SimpleClassOfIntToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDuration {
  final Map<int, Duration>? value;

  SimpleClassNullableOfIntToDuration(
    this.value,
  );

  factory SimpleClassNullableOfIntToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDuration {
  final Map<Object, Duration> value;

  SimpleClassOfObjectToDuration(
    this.value,
  );

  factory SimpleClassOfObjectToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDuration {
  final Map<Object, Duration>? value;

  SimpleClassNullableOfObjectToDuration(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDuration {
  final Map<String, Duration> value;

  SimpleClassOfStringToDuration(
    this.value,
  );

  factory SimpleClassOfStringToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDuration {
  final Map<String, Duration>? value;

  SimpleClassNullableOfStringToDuration(
    this.value,
  );

  factory SimpleClassNullableOfStringToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDuration {
  final Map<Uri, Duration> value;

  SimpleClassOfUriToDuration(
    this.value,
  );

  factory SimpleClassOfUriToDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToDurationToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDuration {
  final Map<Uri, Duration>? value;

  SimpleClassNullableOfUriToDuration(
    this.value,
  );

  factory SimpleClassNullableOfUriToDuration.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDurationFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDurationToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDurationNullable {
  final Map<BigInt, Duration?> value;

  SimpleClassOfBigIntToDurationNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDurationNullable {
  final Map<BigInt, Duration?>? value;

  SimpleClassNullableOfBigIntToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?> value;

  SimpleClassOfDateTimeToDurationNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?>? value;

  SimpleClassNullableOfDateTimeToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDurationNullable {
  final Map<dynamic, Duration?> value;

  SimpleClassOfDynamicToDurationNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDurationNullable {
  final Map<dynamic, Duration?>? value;

  SimpleClassNullableOfDynamicToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?> value;

  SimpleClassOfEnumTypeToDurationNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?>? value;

  SimpleClassNullableOfEnumTypeToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDurationNullable {
  final Map<int, Duration?> value;

  SimpleClassOfIntToDurationNullable(
    this.value,
  );

  factory SimpleClassOfIntToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDurationNullable {
  final Map<int, Duration?>? value;

  SimpleClassNullableOfIntToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDurationNullable {
  final Map<Object, Duration?> value;

  SimpleClassOfObjectToDurationNullable(
    this.value,
  );

  factory SimpleClassOfObjectToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDurationNullable {
  final Map<Object, Duration?>? value;

  SimpleClassNullableOfObjectToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDurationNullable {
  final Map<String, Duration?> value;

  SimpleClassOfStringToDurationNullable(
    this.value,
  );

  factory SimpleClassOfStringToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDurationNullable {
  final Map<String, Duration?>? value;

  SimpleClassNullableOfStringToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDurationNullable {
  final Map<Uri, Duration?> value;

  SimpleClassOfUriToDurationNullable(
    this.value,
  );

  factory SimpleClassOfUriToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDurationNullable {
  final Map<Uri, Duration?>? value;

  SimpleClassNullableOfUriToDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDurationNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToDynamic {
  final Map<BigInt, dynamic> value;

  SimpleClassOfBigIntToDynamic(
    this.value,
  );

  factory SimpleClassOfBigIntToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToDynamic {
  final Map<BigInt, dynamic>? value;

  SimpleClassNullableOfBigIntToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToDynamic {
  final Map<DateTime, dynamic> value;

  SimpleClassOfDateTimeToDynamic(
    this.value,
  );

  factory SimpleClassOfDateTimeToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToDynamic {
  final Map<DateTime, dynamic>? value;

  SimpleClassNullableOfDateTimeToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToDynamic {
  final Map<dynamic, dynamic> value;

  SimpleClassOfDynamicToDynamic(
    this.value,
  );

  factory SimpleClassOfDynamicToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToDynamic {
  final Map<dynamic, dynamic>? value;

  SimpleClassNullableOfDynamicToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToDynamic {
  final Map<EnumType, dynamic> value;

  SimpleClassOfEnumTypeToDynamic(
    this.value,
  );

  factory SimpleClassOfEnumTypeToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToDynamic {
  final Map<EnumType, dynamic>? value;

  SimpleClassNullableOfEnumTypeToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToDynamic {
  final Map<int, dynamic> value;

  SimpleClassOfIntToDynamic(
    this.value,
  );

  factory SimpleClassOfIntToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToDynamic {
  final Map<int, dynamic>? value;

  SimpleClassNullableOfIntToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfIntToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToDynamic {
  final Map<Object, dynamic> value;

  SimpleClassOfObjectToDynamic(
    this.value,
  );

  factory SimpleClassOfObjectToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToDynamic {
  final Map<Object, dynamic>? value;

  SimpleClassNullableOfObjectToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfObjectToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToDynamic {
  final Map<String, dynamic> value;

  SimpleClassOfStringToDynamic(
    this.value,
  );

  factory SimpleClassOfStringToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToDynamic {
  final Map<String, dynamic>? value;

  SimpleClassNullableOfStringToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfStringToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToDynamic {
  final Map<Uri, dynamic> value;

  SimpleClassOfUriToDynamic(
    this.value,
  );

  factory SimpleClassOfUriToDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToDynamic {
  final Map<Uri, dynamic>? value;

  SimpleClassNullableOfUriToDynamic(
    this.value,
  );

  factory SimpleClassNullableOfUriToDynamic.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToDynamicFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToDynamicToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToEnumType {
  final Map<BigInt, EnumType> value;

  SimpleClassOfBigIntToEnumType(
    this.value,
  );

  factory SimpleClassOfBigIntToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToEnumType {
  final Map<BigInt, EnumType>? value;

  SimpleClassNullableOfBigIntToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToEnumType {
  final Map<DateTime, EnumType> value;

  SimpleClassOfDateTimeToEnumType(
    this.value,
  );

  factory SimpleClassOfDateTimeToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToEnumType {
  final Map<DateTime, EnumType>? value;

  SimpleClassNullableOfDateTimeToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToEnumType {
  final Map<dynamic, EnumType> value;

  SimpleClassOfDynamicToEnumType(
    this.value,
  );

  factory SimpleClassOfDynamicToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToEnumType {
  final Map<dynamic, EnumType>? value;

  SimpleClassNullableOfDynamicToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToEnumType {
  final Map<EnumType, EnumType> value;

  SimpleClassOfEnumTypeToEnumType(
    this.value,
  );

  factory SimpleClassOfEnumTypeToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToEnumType {
  final Map<EnumType, EnumType>? value;

  SimpleClassNullableOfEnumTypeToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToEnumType {
  final Map<int, EnumType> value;

  SimpleClassOfIntToEnumType(
    this.value,
  );

  factory SimpleClassOfIntToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToEnumType {
  final Map<int, EnumType>? value;

  SimpleClassNullableOfIntToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfIntToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToEnumType {
  final Map<Object, EnumType> value;

  SimpleClassOfObjectToEnumType(
    this.value,
  );

  factory SimpleClassOfObjectToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToEnumType {
  final Map<Object, EnumType>? value;

  SimpleClassNullableOfObjectToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfObjectToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToEnumType {
  final Map<String, EnumType> value;

  SimpleClassOfStringToEnumType(
    this.value,
  );

  factory SimpleClassOfStringToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToEnumType {
  final Map<String, EnumType>? value;

  SimpleClassNullableOfStringToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfStringToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToEnumType {
  final Map<Uri, EnumType> value;

  SimpleClassOfUriToEnumType(
    this.value,
  );

  factory SimpleClassOfUriToEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToEnumType {
  final Map<Uri, EnumType>? value;

  SimpleClassNullableOfUriToEnumType(
    this.value,
  );

  factory SimpleClassNullableOfUriToEnumType.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToEnumTypeFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToEnumTypeToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?> value;

  SimpleClassOfBigIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?>? value;

  SimpleClassNullableOfBigIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?> value;

  SimpleClassOfDateTimeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?>? value;

  SimpleClassNullableOfDateTimeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?> value;

  SimpleClassOfDynamicToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?>? value;

  SimpleClassNullableOfDynamicToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?> value;

  SimpleClassOfEnumTypeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?>? value;

  SimpleClassNullableOfEnumTypeToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToEnumTypeNullable {
  final Map<int, EnumType?> value;

  SimpleClassOfIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfIntToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToEnumTypeNullable {
  final Map<int, EnumType?>? value;

  SimpleClassNullableOfIntToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?> value;

  SimpleClassOfObjectToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfObjectToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?>? value;

  SimpleClassNullableOfObjectToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToEnumTypeNullable {
  final Map<String, EnumType?> value;

  SimpleClassOfStringToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfStringToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToEnumTypeNullable {
  final Map<String, EnumType?>? value;

  SimpleClassNullableOfStringToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?> value;

  SimpleClassOfUriToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfUriToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?>? value;

  SimpleClassNullableOfUriToEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToEnumTypeNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToInt {
  final Map<BigInt, int> value;

  SimpleClassOfBigIntToInt(
    this.value,
  );

  factory SimpleClassOfBigIntToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToInt {
  final Map<BigInt, int>? value;

  SimpleClassNullableOfBigIntToInt(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToInt {
  final Map<DateTime, int> value;

  SimpleClassOfDateTimeToInt(
    this.value,
  );

  factory SimpleClassOfDateTimeToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToInt {
  final Map<DateTime, int>? value;

  SimpleClassNullableOfDateTimeToInt(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToInt {
  final Map<dynamic, int> value;

  SimpleClassOfDynamicToInt(
    this.value,
  );

  factory SimpleClassOfDynamicToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToInt {
  final Map<dynamic, int>? value;

  SimpleClassNullableOfDynamicToInt(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToInt {
  final Map<EnumType, int> value;

  SimpleClassOfEnumTypeToInt(
    this.value,
  );

  factory SimpleClassOfEnumTypeToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToInt {
  final Map<EnumType, int>? value;

  SimpleClassNullableOfEnumTypeToInt(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToInt {
  final Map<int, int> value;

  SimpleClassOfIntToInt(
    this.value,
  );

  factory SimpleClassOfIntToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToInt {
  final Map<int, int>? value;

  SimpleClassNullableOfIntToInt(
    this.value,
  );

  factory SimpleClassNullableOfIntToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfIntToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToInt {
  final Map<Object, int> value;

  SimpleClassOfObjectToInt(
    this.value,
  );

  factory SimpleClassOfObjectToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToInt {
  final Map<Object, int>? value;

  SimpleClassNullableOfObjectToInt(
    this.value,
  );

  factory SimpleClassNullableOfObjectToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToInt {
  final Map<String, int> value;

  SimpleClassOfStringToInt(
    this.value,
  );

  factory SimpleClassOfStringToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToInt {
  final Map<String, int>? value;

  SimpleClassNullableOfStringToInt(
    this.value,
  );

  factory SimpleClassNullableOfStringToInt.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToIntFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToInt {
  final Map<Uri, int> value;

  SimpleClassOfUriToInt(
    this.value,
  );

  factory SimpleClassOfUriToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToIntToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToInt {
  final Map<Uri, int>? value;

  SimpleClassNullableOfUriToInt(
    this.value,
  );

  factory SimpleClassNullableOfUriToInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfUriToIntToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToIntNullable {
  final Map<BigInt, int?> value;

  SimpleClassOfBigIntToIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToIntNullable {
  final Map<BigInt, int?>? value;

  SimpleClassNullableOfBigIntToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToIntNullable {
  final Map<DateTime, int?> value;

  SimpleClassOfDateTimeToIntNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToIntNullable {
  final Map<DateTime, int?>? value;

  SimpleClassNullableOfDateTimeToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToIntNullable {
  final Map<dynamic, int?> value;

  SimpleClassOfDynamicToIntNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToIntNullable {
  final Map<dynamic, int?>? value;

  SimpleClassNullableOfDynamicToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToIntNullable {
  final Map<EnumType, int?> value;

  SimpleClassOfEnumTypeToIntNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToIntNullable {
  final Map<EnumType, int?>? value;

  SimpleClassNullableOfEnumTypeToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToIntNullable {
  final Map<int, int?> value;

  SimpleClassOfIntToIntNullable(
    this.value,
  );

  factory SimpleClassOfIntToIntNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToIntNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToIntNullable {
  final Map<int, int?>? value;

  SimpleClassNullableOfIntToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToIntNullable {
  final Map<Object, int?> value;

  SimpleClassOfObjectToIntNullable(
    this.value,
  );

  factory SimpleClassOfObjectToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToIntNullable {
  final Map<Object, int?>? value;

  SimpleClassNullableOfObjectToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToIntNullable {
  final Map<String, int?> value;

  SimpleClassOfStringToIntNullable(
    this.value,
  );

  factory SimpleClassOfStringToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToIntNullable {
  final Map<String, int?>? value;

  SimpleClassNullableOfStringToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToIntNullable {
  final Map<Uri, int?> value;

  SimpleClassOfUriToIntNullable(
    this.value,
  );

  factory SimpleClassOfUriToIntNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToIntNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToIntNullable {
  final Map<Uri, int?>? value;

  SimpleClassNullableOfUriToIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToIntNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToNum {
  final Map<BigInt, num> value;

  SimpleClassOfBigIntToNum(
    this.value,
  );

  factory SimpleClassOfBigIntToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToNum {
  final Map<BigInt, num>? value;

  SimpleClassNullableOfBigIntToNum(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToNum {
  final Map<DateTime, num> value;

  SimpleClassOfDateTimeToNum(
    this.value,
  );

  factory SimpleClassOfDateTimeToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToNum {
  final Map<DateTime, num>? value;

  SimpleClassNullableOfDateTimeToNum(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToNum {
  final Map<dynamic, num> value;

  SimpleClassOfDynamicToNum(
    this.value,
  );

  factory SimpleClassOfDynamicToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToNum {
  final Map<dynamic, num>? value;

  SimpleClassNullableOfDynamicToNum(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToNum {
  final Map<EnumType, num> value;

  SimpleClassOfEnumTypeToNum(
    this.value,
  );

  factory SimpleClassOfEnumTypeToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToNum {
  final Map<EnumType, num>? value;

  SimpleClassNullableOfEnumTypeToNum(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToNum {
  final Map<int, num> value;

  SimpleClassOfIntToNum(
    this.value,
  );

  factory SimpleClassOfIntToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToNum {
  final Map<int, num>? value;

  SimpleClassNullableOfIntToNum(
    this.value,
  );

  factory SimpleClassNullableOfIntToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfIntToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToNum {
  final Map<Object, num> value;

  SimpleClassOfObjectToNum(
    this.value,
  );

  factory SimpleClassOfObjectToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToNum {
  final Map<Object, num>? value;

  SimpleClassNullableOfObjectToNum(
    this.value,
  );

  factory SimpleClassNullableOfObjectToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToNum {
  final Map<String, num> value;

  SimpleClassOfStringToNum(
    this.value,
  );

  factory SimpleClassOfStringToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToNum {
  final Map<String, num>? value;

  SimpleClassNullableOfStringToNum(
    this.value,
  );

  factory SimpleClassNullableOfStringToNum.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToNumFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToNum {
  final Map<Uri, num> value;

  SimpleClassOfUriToNum(
    this.value,
  );

  factory SimpleClassOfUriToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToNumToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToNum {
  final Map<Uri, num>? value;

  SimpleClassNullableOfUriToNum(
    this.value,
  );

  factory SimpleClassNullableOfUriToNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfUriToNumToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToNumNullable {
  final Map<BigInt, num?> value;

  SimpleClassOfBigIntToNumNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToNumNullable {
  final Map<BigInt, num?>? value;

  SimpleClassNullableOfBigIntToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToNumNullable {
  final Map<DateTime, num?> value;

  SimpleClassOfDateTimeToNumNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToNumNullable {
  final Map<DateTime, num?>? value;

  SimpleClassNullableOfDateTimeToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToNumNullable {
  final Map<dynamic, num?> value;

  SimpleClassOfDynamicToNumNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToNumNullable {
  final Map<dynamic, num?>? value;

  SimpleClassNullableOfDynamicToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToNumNullable {
  final Map<EnumType, num?> value;

  SimpleClassOfEnumTypeToNumNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToNumNullable {
  final Map<EnumType, num?>? value;

  SimpleClassNullableOfEnumTypeToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToNumNullable {
  final Map<int, num?> value;

  SimpleClassOfIntToNumNullable(
    this.value,
  );

  factory SimpleClassOfIntToNumNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToNumNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToNumNullable {
  final Map<int, num?>? value;

  SimpleClassNullableOfIntToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToNumNullable {
  final Map<Object, num?> value;

  SimpleClassOfObjectToNumNullable(
    this.value,
  );

  factory SimpleClassOfObjectToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToNumNullable {
  final Map<Object, num?>? value;

  SimpleClassNullableOfObjectToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToNumNullable {
  final Map<String, num?> value;

  SimpleClassOfStringToNumNullable(
    this.value,
  );

  factory SimpleClassOfStringToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToNumNullable {
  final Map<String, num?>? value;

  SimpleClassNullableOfStringToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToNumNullable {
  final Map<Uri, num?> value;

  SimpleClassOfUriToNumNullable(
    this.value,
  );

  factory SimpleClassOfUriToNumNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToNumNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToNumNullable {
  final Map<Uri, num?>? value;

  SimpleClassNullableOfUriToNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToNumNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToObject {
  final Map<BigInt, Object> value;

  SimpleClassOfBigIntToObject(
    this.value,
  );

  factory SimpleClassOfBigIntToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToObject {
  final Map<BigInt, Object>? value;

  SimpleClassNullableOfBigIntToObject(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToObject {
  final Map<DateTime, Object> value;

  SimpleClassOfDateTimeToObject(
    this.value,
  );

  factory SimpleClassOfDateTimeToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToObject {
  final Map<DateTime, Object>? value;

  SimpleClassNullableOfDateTimeToObject(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToObject {
  final Map<dynamic, Object> value;

  SimpleClassOfDynamicToObject(
    this.value,
  );

  factory SimpleClassOfDynamicToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToObject {
  final Map<dynamic, Object>? value;

  SimpleClassNullableOfDynamicToObject(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToObject {
  final Map<EnumType, Object> value;

  SimpleClassOfEnumTypeToObject(
    this.value,
  );

  factory SimpleClassOfEnumTypeToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToObject {
  final Map<EnumType, Object>? value;

  SimpleClassNullableOfEnumTypeToObject(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToObject {
  final Map<int, Object> value;

  SimpleClassOfIntToObject(
    this.value,
  );

  factory SimpleClassOfIntToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToObject {
  final Map<int, Object>? value;

  SimpleClassNullableOfIntToObject(
    this.value,
  );

  factory SimpleClassNullableOfIntToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToObject {
  final Map<Object, Object> value;

  SimpleClassOfObjectToObject(
    this.value,
  );

  factory SimpleClassOfObjectToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToObject {
  final Map<Object, Object>? value;

  SimpleClassNullableOfObjectToObject(
    this.value,
  );

  factory SimpleClassNullableOfObjectToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToObject {
  final Map<String, Object> value;

  SimpleClassOfStringToObject(
    this.value,
  );

  factory SimpleClassOfStringToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToObject {
  final Map<String, Object>? value;

  SimpleClassNullableOfStringToObject(
    this.value,
  );

  factory SimpleClassNullableOfStringToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToObject {
  final Map<Uri, Object> value;

  SimpleClassOfUriToObject(
    this.value,
  );

  factory SimpleClassOfUriToObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToObjectToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToObject {
  final Map<Uri, Object>? value;

  SimpleClassNullableOfUriToObject(
    this.value,
  );

  factory SimpleClassNullableOfUriToObject.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToObjectFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToObjectToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToObjectNullable {
  final Map<BigInt, Object?> value;

  SimpleClassOfBigIntToObjectNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToObjectNullable {
  final Map<BigInt, Object?>? value;

  SimpleClassNullableOfBigIntToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToObjectNullable {
  final Map<DateTime, Object?> value;

  SimpleClassOfDateTimeToObjectNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToObjectNullable {
  final Map<DateTime, Object?>? value;

  SimpleClassNullableOfDateTimeToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToObjectNullable {
  final Map<dynamic, Object?> value;

  SimpleClassOfDynamicToObjectNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToObjectNullable {
  final Map<dynamic, Object?>? value;

  SimpleClassNullableOfDynamicToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?> value;

  SimpleClassOfEnumTypeToObjectNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?>? value;

  SimpleClassNullableOfEnumTypeToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToObjectNullable {
  final Map<int, Object?> value;

  SimpleClassOfIntToObjectNullable(
    this.value,
  );

  factory SimpleClassOfIntToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToObjectNullable {
  final Map<int, Object?>? value;

  SimpleClassNullableOfIntToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToObjectNullable {
  final Map<Object, Object?> value;

  SimpleClassOfObjectToObjectNullable(
    this.value,
  );

  factory SimpleClassOfObjectToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToObjectNullable {
  final Map<Object, Object?>? value;

  SimpleClassNullableOfObjectToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToObjectNullable {
  final Map<String, Object?> value;

  SimpleClassOfStringToObjectNullable(
    this.value,
  );

  factory SimpleClassOfStringToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToObjectNullable {
  final Map<String, Object?>? value;

  SimpleClassNullableOfStringToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToObjectNullable {
  final Map<Uri, Object?> value;

  SimpleClassOfUriToObjectNullable(
    this.value,
  );

  factory SimpleClassOfUriToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToObjectNullable {
  final Map<Uri, Object?>? value;

  SimpleClassNullableOfUriToObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToObjectNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToString {
  final Map<BigInt, String> value;

  SimpleClassOfBigIntToString(
    this.value,
  );

  factory SimpleClassOfBigIntToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToString {
  final Map<BigInt, String>? value;

  SimpleClassNullableOfBigIntToString(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToString {
  final Map<DateTime, String> value;

  SimpleClassOfDateTimeToString(
    this.value,
  );

  factory SimpleClassOfDateTimeToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToString {
  final Map<DateTime, String>? value;

  SimpleClassNullableOfDateTimeToString(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToString {
  final Map<dynamic, String> value;

  SimpleClassOfDynamicToString(
    this.value,
  );

  factory SimpleClassOfDynamicToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToString {
  final Map<dynamic, String>? value;

  SimpleClassNullableOfDynamicToString(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToString {
  final Map<EnumType, String> value;

  SimpleClassOfEnumTypeToString(
    this.value,
  );

  factory SimpleClassOfEnumTypeToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToString {
  final Map<EnumType, String>? value;

  SimpleClassNullableOfEnumTypeToString(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToString {
  final Map<int, String> value;

  SimpleClassOfIntToString(
    this.value,
  );

  factory SimpleClassOfIntToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToString {
  final Map<int, String>? value;

  SimpleClassNullableOfIntToString(
    this.value,
  );

  factory SimpleClassNullableOfIntToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToString {
  final Map<Object, String> value;

  SimpleClassOfObjectToString(
    this.value,
  );

  factory SimpleClassOfObjectToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToString {
  final Map<Object, String>? value;

  SimpleClassNullableOfObjectToString(
    this.value,
  );

  factory SimpleClassNullableOfObjectToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToString {
  final Map<String, String> value;

  SimpleClassOfStringToString(
    this.value,
  );

  factory SimpleClassOfStringToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToString {
  final Map<String, String>? value;

  SimpleClassNullableOfStringToString(
    this.value,
  );

  factory SimpleClassNullableOfStringToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToString {
  final Map<Uri, String> value;

  SimpleClassOfUriToString(
    this.value,
  );

  factory SimpleClassOfUriToString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToStringToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToString {
  final Map<Uri, String>? value;

  SimpleClassNullableOfUriToString(
    this.value,
  );

  factory SimpleClassNullableOfUriToString.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToStringFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToStringToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToStringNullable {
  final Map<BigInt, String?> value;

  SimpleClassOfBigIntToStringNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToStringNullable {
  final Map<BigInt, String?>? value;

  SimpleClassNullableOfBigIntToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToStringNullable {
  final Map<DateTime, String?> value;

  SimpleClassOfDateTimeToStringNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToStringNullable {
  final Map<DateTime, String?>? value;

  SimpleClassNullableOfDateTimeToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToStringNullable {
  final Map<dynamic, String?> value;

  SimpleClassOfDynamicToStringNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToStringNullable {
  final Map<dynamic, String?>? value;

  SimpleClassNullableOfDynamicToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToStringNullable {
  final Map<EnumType, String?> value;

  SimpleClassOfEnumTypeToStringNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToStringNullable {
  final Map<EnumType, String?>? value;

  SimpleClassNullableOfEnumTypeToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToStringNullable {
  final Map<int, String?> value;

  SimpleClassOfIntToStringNullable(
    this.value,
  );

  factory SimpleClassOfIntToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfIntToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfIntToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToStringNullable {
  final Map<int, String?>? value;

  SimpleClassNullableOfIntToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToStringNullable {
  final Map<Object, String?> value;

  SimpleClassOfObjectToStringNullable(
    this.value,
  );

  factory SimpleClassOfObjectToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToStringNullable {
  final Map<Object, String?>? value;

  SimpleClassNullableOfObjectToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToStringNullable {
  final Map<String, String?> value;

  SimpleClassOfStringToStringNullable(
    this.value,
  );

  factory SimpleClassOfStringToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToStringNullable {
  final Map<String, String?>? value;

  SimpleClassNullableOfStringToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToStringNullable {
  final Map<Uri, String?> value;

  SimpleClassOfUriToStringNullable(
    this.value,
  );

  factory SimpleClassOfUriToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfUriToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfUriToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToStringNullable {
  final Map<Uri, String?>? value;

  SimpleClassNullableOfUriToStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToStringNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToUri {
  final Map<BigInt, Uri> value;

  SimpleClassOfBigIntToUri(
    this.value,
  );

  factory SimpleClassOfBigIntToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToUri {
  final Map<BigInt, Uri>? value;

  SimpleClassNullableOfBigIntToUri(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToUri {
  final Map<DateTime, Uri> value;

  SimpleClassOfDateTimeToUri(
    this.value,
  );

  factory SimpleClassOfDateTimeToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToUri {
  final Map<DateTime, Uri>? value;

  SimpleClassNullableOfDateTimeToUri(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToUri {
  final Map<dynamic, Uri> value;

  SimpleClassOfDynamicToUri(
    this.value,
  );

  factory SimpleClassOfDynamicToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToUri {
  final Map<dynamic, Uri>? value;

  SimpleClassNullableOfDynamicToUri(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToUri {
  final Map<EnumType, Uri> value;

  SimpleClassOfEnumTypeToUri(
    this.value,
  );

  factory SimpleClassOfEnumTypeToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToUri {
  final Map<EnumType, Uri>? value;

  SimpleClassNullableOfEnumTypeToUri(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToUri {
  final Map<int, Uri> value;

  SimpleClassOfIntToUri(
    this.value,
  );

  factory SimpleClassOfIntToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToUri {
  final Map<int, Uri>? value;

  SimpleClassNullableOfIntToUri(
    this.value,
  );

  factory SimpleClassNullableOfIntToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfIntToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToUri {
  final Map<Object, Uri> value;

  SimpleClassOfObjectToUri(
    this.value,
  );

  factory SimpleClassOfObjectToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToUri {
  final Map<Object, Uri>? value;

  SimpleClassNullableOfObjectToUri(
    this.value,
  );

  factory SimpleClassNullableOfObjectToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToUri {
  final Map<String, Uri> value;

  SimpleClassOfStringToUri(
    this.value,
  );

  factory SimpleClassOfStringToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToUri {
  final Map<String, Uri>? value;

  SimpleClassNullableOfStringToUri(
    this.value,
  );

  factory SimpleClassNullableOfStringToUri.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToUriFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToUri {
  final Map<Uri, Uri> value;

  SimpleClassOfUriToUri(
    this.value,
  );

  factory SimpleClassOfUriToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToUriToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToUri {
  final Map<Uri, Uri>? value;

  SimpleClassNullableOfUriToUri(
    this.value,
  );

  factory SimpleClassNullableOfUriToUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfUriToUriToJson(this);
}

@DynamoJson()
class SimpleClassOfBigIntToUriNullable {
  final Map<BigInt, Uri?> value;

  SimpleClassOfBigIntToUriNullable(
    this.value,
  );

  factory SimpleClassOfBigIntToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfBigIntToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfBigIntToUriNullable {
  final Map<BigInt, Uri?>? value;

  SimpleClassNullableOfBigIntToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDateTimeToUriNullable {
  final Map<DateTime, Uri?> value;

  SimpleClassOfDateTimeToUriNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDateTimeToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDateTimeToUriNullable {
  final Map<DateTime, Uri?>? value;

  SimpleClassNullableOfDateTimeToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfDynamicToUriNullable {
  final Map<dynamic, Uri?> value;

  SimpleClassOfDynamicToUriNullable(
    this.value,
  );

  factory SimpleClassOfDynamicToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDynamicToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfDynamicToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfDynamicToUriNullable {
  final Map<dynamic, Uri?>? value;

  SimpleClassNullableOfDynamicToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfDynamicToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDynamicToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?> value;

  SimpleClassOfEnumTypeToUriNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfEnumTypeToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?>? value;

  SimpleClassNullableOfEnumTypeToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfIntToUriNullable {
  final Map<int, Uri?> value;

  SimpleClassOfIntToUriNullable(
    this.value,
  );

  factory SimpleClassOfIntToUriNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntToUriNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfIntToUriNullable {
  final Map<int, Uri?>? value;

  SimpleClassNullableOfIntToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfObjectToUriNullable {
  final Map<Object, Uri?> value;

  SimpleClassOfObjectToUriNullable(
    this.value,
  );

  factory SimpleClassOfObjectToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfObjectToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfObjectToUriNullable {
  final Map<Object, Uri?>? value;

  SimpleClassNullableOfObjectToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfStringToUriNullable {
  final Map<String, Uri?> value;

  SimpleClassOfStringToUriNullable(
    this.value,
  );

  factory SimpleClassOfStringToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassOfStringToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfStringToUriNullable {
  final Map<String, Uri?>? value;

  SimpleClassNullableOfStringToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassOfUriToUriNullable {
  final Map<Uri, Uri?> value;

  SimpleClassOfUriToUriNullable(
    this.value,
  );

  factory SimpleClassOfUriToUriNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriToUriNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToUriNullableToJson(this);
}

@DynamoJson()
class SimpleClassNullableOfUriToUriNullable {
  final Map<Uri, Uri?>? value;

  SimpleClassNullableOfUriToUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriToUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriToUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriToUriNullableToJson(this);
}
