// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'enum_type.dart';

part 'input.type_iterable.g.dart';

@DynamoSerializable()
class SimpleClass {
  final Iterable value;

  @DynamoKey(defaultValue: [42, true, false, null])
  Iterable withDefault;

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
  final Iterable? value;

  @DynamoKey(defaultValue: [42, true, false, null])
  Iterable? withDefault;

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
class SimpleClassOfBigInt {
  final Iterable<BigInt> value;

  SimpleClassOfBigInt(
    this.value,
  );

  factory SimpleClassOfBigInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigInt {
  final Iterable<BigInt>? value;

  SimpleClassNullableOfBigInt(
    this.value,
  );

  factory SimpleClassNullableOfBigInt.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBigIntNullable {
  final Iterable<BigInt?> value;

  SimpleClassOfBigIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBigIntNullable {
  final Iterable<BigInt?>? value;

  SimpleClassNullableOfBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBigIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBigIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBool {
  final Iterable<bool> value;

  SimpleClassOfBool(
    this.value,
  );

  factory SimpleClassOfBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBool {
  final Iterable<bool>? value;

  SimpleClassNullableOfBool(
    this.value,
  );

  factory SimpleClassNullableOfBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfBoolNullable {
  final Iterable<bool?> value;

  SimpleClassOfBoolNullable(
    this.value,
  );

  factory SimpleClassOfBoolNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBoolNullable {
  final Iterable<bool?>? value;

  SimpleClassNullableOfBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfBoolNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfBoolNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfBoolNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTime {
  final Iterable<DateTime> value;

  SimpleClassOfDateTime(
    this.value,
  );

  factory SimpleClassOfDateTime.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTime {
  final Iterable<DateTime>? value;

  SimpleClassNullableOfDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDateTime.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDateTimeNullable {
  final Iterable<DateTime?> value;

  SimpleClassOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDateTimeNullable {
  final Iterable<DateTime?>? value;

  SimpleClassNullableOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDateTimeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDateTimeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDouble {
  final Iterable<double> value;

  SimpleClassOfDouble(
    this.value,
  );

  factory SimpleClassOfDouble.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDouble {
  final Iterable<double>? value;

  SimpleClassNullableOfDouble(
    this.value,
  );

  factory SimpleClassNullableOfDouble.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDoubleFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDoubleToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDoubleNullable {
  final Iterable<double?> value;

  SimpleClassOfDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDoubleNullable {
  final Iterable<double?>? value;

  SimpleClassNullableOfDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDoubleNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDoubleNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDoubleNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDuration {
  final Iterable<Duration> value;

  SimpleClassOfDuration(
    this.value,
  );

  factory SimpleClassOfDuration.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDuration {
  final Iterable<Duration>? value;

  SimpleClassNullableOfDuration(
    this.value,
  );

  factory SimpleClassNullableOfDuration.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDurationFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDurationToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDurationNullable {
  final Iterable<Duration?> value;

  SimpleClassOfDurationNullable(
    this.value,
  );

  factory SimpleClassOfDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDurationNullable {
  final Iterable<Duration?>? value;

  SimpleClassNullableOfDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDurationNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDurationNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDurationNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfDynamic {
  final Iterable<dynamic> value;

  SimpleClassOfDynamic(
    this.value,
  );

  factory SimpleClassOfDynamic.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfDynamic {
  final Iterable<dynamic>? value;

  SimpleClassNullableOfDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDynamic.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfDynamicFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfDynamicToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumType {
  final Iterable<EnumType> value;

  SimpleClassOfEnumType(
    this.value,
  );

  factory SimpleClassOfEnumType.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumType {
  final Iterable<EnumType>? value;

  SimpleClassNullableOfEnumType(
    this.value,
  );

  factory SimpleClassNullableOfEnumType.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfEnumTypeNullable {
  final Iterable<EnumType?> value;

  SimpleClassOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfEnumTypeNullable {
  final Iterable<EnumType?>? value;

  SimpleClassNullableOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfEnumTypeNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfEnumTypeNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfInt {
  final Iterable<int> value;

  SimpleClassOfInt(
    this.value,
  );

  factory SimpleClassOfInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfInt {
  final Iterable<int>? value;

  SimpleClassNullableOfInt(
    this.value,
  );

  factory SimpleClassNullableOfInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfIntNullable {
  final Iterable<int?> value;

  SimpleClassOfIntNullable(
    this.value,
  );

  factory SimpleClassOfIntNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfIntNullable {
  final Iterable<int?>? value;

  SimpleClassNullableOfIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfIntNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfIntNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfNum {
  final Iterable<num> value;

  SimpleClassOfNum(
    this.value,
  );

  factory SimpleClassOfNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfNum {
  final Iterable<num>? value;

  SimpleClassNullableOfNum(
    this.value,
  );

  factory SimpleClassNullableOfNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfNumNullable {
  final Iterable<num?> value;

  SimpleClassOfNumNullable(
    this.value,
  );

  factory SimpleClassOfNumNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfNumNullable {
  final Iterable<num?>? value;

  SimpleClassNullableOfNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfNumNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfNumNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfNumNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObject {
  final Iterable<Object> value;

  SimpleClassOfObject(
    this.value,
  );

  factory SimpleClassOfObject.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObject {
  final Iterable<Object>? value;

  SimpleClassNullableOfObject(
    this.value,
  );

  factory SimpleClassNullableOfObject.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfObjectNullable {
  final Iterable<Object?> value;

  SimpleClassOfObjectNullable(
    this.value,
  );

  factory SimpleClassOfObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfObjectNullable {
  final Iterable<Object?>? value;

  SimpleClassNullableOfObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfObjectNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfObjectNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfString {
  final Iterable<String> value;

  SimpleClassOfString(
    this.value,
  );

  factory SimpleClassOfString.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfString {
  final Iterable<String>? value;

  SimpleClassNullableOfString(
    this.value,
  );

  factory SimpleClassNullableOfString.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfStringNullable {
  final Iterable<String?> value;

  SimpleClassOfStringNullable(
    this.value,
  );

  factory SimpleClassOfStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassOfStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfStringNullable {
  final Iterable<String?>? value;

  SimpleClassNullableOfStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfStringNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfStringNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUri {
  final Iterable<Uri> value;

  SimpleClassOfUri(
    this.value,
  );

  factory SimpleClassOfUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUri {
  final Iterable<Uri>? value;

  SimpleClassNullableOfUri(
    this.value,
  );

  factory SimpleClassNullableOfUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassOfUriNullable {
  final Iterable<Uri?> value;

  SimpleClassOfUriNullable(
    this.value,
  );

  factory SimpleClassOfUriNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassOfUriNullableToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUriNullable {
  final Iterable<Uri?>? value;

  SimpleClassNullableOfUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriNullableToDynamoJson(this);
}
