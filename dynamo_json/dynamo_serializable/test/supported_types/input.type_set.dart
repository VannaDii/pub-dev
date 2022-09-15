// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'enum_type.dart';

part 'input.type_set.g.dart';

@DynamoSerializable()
class SimpleClass {
  final Set value;

  @DynamoKey(defaultValue: {42, true, false, null})
  Set withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromJson(Map<String, Object?> json) =>
      _$SimpleClassFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassToJson(this);
}

@DynamoSerializable()
class SimpleClassNullable {
  final Set? value;

  @DynamoKey(defaultValue: {42, true, false, null})
  Set? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigInt {
  final Set<BigInt> value;

  SimpleClassOfBigInt(
    this.value,
  );

  factory SimpleClassOfBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigInt {
  final Set<BigInt>? value;

  SimpleClassNullableOfBigInt(
    this.value,
  );

  factory SimpleClassNullableOfBigInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfBigIntToJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntNullable {
  final Set<BigInt?> value;

  SimpleClassOfBigIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBigIntNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntNullable {
  final Set<BigInt?>? value;

  SimpleClassNullableOfBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBigIntNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfBool {
  final Set<bool> value;

  SimpleClassOfBool(
    this.value,
  );

  factory SimpleClassOfBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBoolToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBool {
  final Set<bool>? value;

  SimpleClassNullableOfBool(
    this.value,
  );

  factory SimpleClassNullableOfBool.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfBoolFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfBoolToJson(this);
}

@DynamoSerializable()
class SimpleClassOfBoolNullable {
  final Set<bool?> value;

  SimpleClassOfBoolNullable(
    this.value,
  );

  factory SimpleClassOfBoolNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfBoolNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfBoolNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBoolNullable {
  final Set<bool?>? value;

  SimpleClassNullableOfBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfBoolNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBoolNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfBoolNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTime {
  final Set<DateTime> value;

  SimpleClassOfDateTime(
    this.value,
  );

  factory SimpleClassOfDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTime {
  final Set<DateTime>? value;

  SimpleClassNullableOfDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDateTime.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfDateTimeToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeNullable {
  final Set<DateTime?> value;

  SimpleClassOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDateTimeNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeNullable {
  final Set<DateTime?>? value;

  SimpleClassNullableOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDateTimeNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDouble {
  final Set<double> value;

  SimpleClassOfDouble(
    this.value,
  );

  factory SimpleClassOfDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDoubleToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDouble {
  final Set<double>? value;

  SimpleClassNullableOfDouble(
    this.value,
  );

  factory SimpleClassNullableOfDouble.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfDoubleFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfDoubleToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDoubleNullable {
  final Set<double?> value;

  SimpleClassOfDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDoubleNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDoubleNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDoubleNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDoubleNullable {
  final Set<double?>? value;

  SimpleClassNullableOfDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDoubleNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDoubleNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDoubleNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDuration {
  final Set<Duration> value;

  SimpleClassOfDuration(
    this.value,
  );

  factory SimpleClassOfDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDurationToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDuration {
  final Set<Duration>? value;

  SimpleClassNullableOfDuration(
    this.value,
  );

  factory SimpleClassNullableOfDuration.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfDurationFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfDurationToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDurationNullable {
  final Set<Duration?> value;

  SimpleClassOfDurationNullable(
    this.value,
  );

  factory SimpleClassOfDurationNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDurationNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDurationNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDurationNullable {
  final Set<Duration?>? value;

  SimpleClassNullableOfDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDurationNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDurationNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfDurationNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamic {
  final Set<dynamic> value;

  SimpleClassOfDynamic(
    this.value,
  );

  factory SimpleClassOfDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfDynamicToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamic {
  final Set<dynamic>? value;

  SimpleClassNullableOfDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDynamic.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfDynamicToJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumType {
  final Set<EnumType> value;

  SimpleClassOfEnumType(
    this.value,
  );

  factory SimpleClassOfEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumType {
  final Set<EnumType>? value;

  SimpleClassNullableOfEnumType(
    this.value,
  );

  factory SimpleClassNullableOfEnumType.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfEnumTypeToJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeNullable {
  final Set<EnumType?> value;

  SimpleClassOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfEnumTypeNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeNullable {
  final Set<EnumType?>? value;

  SimpleClassNullableOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfEnumTypeNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfInt {
  final Set<int> value;

  SimpleClassOfInt(
    this.value,
  );

  factory SimpleClassOfInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfInt {
  final Set<int>? value;

  SimpleClassNullableOfInt(
    this.value,
  );

  factory SimpleClassNullableOfInt.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfIntToJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntNullable {
  final Set<int?> value;

  SimpleClassOfIntNullable(
    this.value,
  );

  factory SimpleClassOfIntNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfIntNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntNullable {
  final Set<int?>? value;

  SimpleClassNullableOfIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfIntNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfNum {
  final Set<num> value;

  SimpleClassOfNum(
    this.value,
  );

  factory SimpleClassOfNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfNumToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfNum {
  final Set<num>? value;

  SimpleClassNullableOfNum(
    this.value,
  );

  factory SimpleClassNullableOfNum.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfNumFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfNumToJson(this);
}

@DynamoSerializable()
class SimpleClassOfNumNullable {
  final Set<num?> value;

  SimpleClassOfNumNullable(
    this.value,
  );

  factory SimpleClassOfNumNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfNumNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfNumNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfNumNullable {
  final Set<num?>? value;

  SimpleClassNullableOfNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfNumNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfNumNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfNumNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfObject {
  final Set<Object> value;

  SimpleClassOfObject(
    this.value,
  );

  factory SimpleClassOfObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObject {
  final Set<Object>? value;

  SimpleClassNullableOfObject(
    this.value,
  );

  factory SimpleClassNullableOfObject.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfObjectToJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectNullable {
  final Set<Object?> value;

  SimpleClassOfObjectNullable(
    this.value,
  );

  factory SimpleClassOfObjectNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfObjectNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectNullable {
  final Set<Object?>? value;

  SimpleClassNullableOfObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfObjectNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfString {
  final Set<String> value;

  SimpleClassOfString(
    this.value,
  );

  factory SimpleClassOfString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfString {
  final Set<String>? value;

  SimpleClassNullableOfString(
    this.value,
  );

  factory SimpleClassNullableOfString.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfStringToJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringNullable {
  final Set<String?> value;

  SimpleClassOfStringNullable(
    this.value,
  );

  factory SimpleClassOfStringNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfStringNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringNullable {
  final Set<String?>? value;

  SimpleClassNullableOfStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfStringNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassOfUri {
  final Set<Uri> value;

  SimpleClassOfUri(
    this.value,
  );

  factory SimpleClassOfUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUri {
  final Set<Uri>? value;

  SimpleClassNullableOfUri(
    this.value,
  );

  factory SimpleClassNullableOfUri.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableOfUriToJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriNullable {
  final Set<Uri?> value;

  SimpleClassOfUriNullable(
    this.value,
  );

  factory SimpleClassOfUriNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassOfUriNullableToJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriNullable {
  final Set<Uri?>? value;

  SimpleClassNullableOfUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriNullable.fromJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriNullableFromJson(json);

  Map<String, Object?> toJson() =>
      _$SimpleClassNullableOfUriNullableToJson(this);
}
