// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'enum_type.dart';

part 'input.type_list.g.dart';

@DynamoSerializable()
class SimpleClass {
  final List value;

  @DynamoKey(defaultValue: [42, true, false, null])
  List withDefault;

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
  final List? value;

  @DynamoKey(defaultValue: [42, true, false, null])
  List? withDefault;

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
  final List<BigInt> value;

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
  final List<BigInt>? value;

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
  final List<BigInt?> value;

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
  final List<BigInt?>? value;

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
  final List<bool> value;

  SimpleClassOfBool(
    this.value,
  );

  factory SimpleClassOfBool.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfBoolFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfBoolToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfBool {
  final List<bool>? value;

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
  final List<bool?> value;

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
  final List<bool?>? value;

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
  final List<DateTime> value;

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
  final List<DateTime>? value;

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
  final List<DateTime?> value;

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
  final List<DateTime?>? value;

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
  final List<double> value;

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
  final List<double>? value;

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
  final List<double?> value;

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
  final List<double?>? value;

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
  final List<Duration> value;

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
  final List<Duration>? value;

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
  final List<Duration?> value;

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
  final List<Duration?>? value;

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
  final List<dynamic> value;

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
  final List<dynamic>? value;

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
  final List<EnumType> value;

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
  final List<EnumType>? value;

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
  final List<EnumType?> value;

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
  final List<EnumType?>? value;

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
  final List<int> value;

  SimpleClassOfInt(
    this.value,
  );

  factory SimpleClassOfInt.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfIntFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfIntToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfInt {
  final List<int>? value;

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
  final List<int?> value;

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
  final List<int?>? value;

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
  final List<num> value;

  SimpleClassOfNum(
    this.value,
  );

  factory SimpleClassOfNum.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfNumFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfNumToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfNum {
  final List<num>? value;

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
  final List<num?> value;

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
  final List<num?>? value;

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
  final List<Object> value;

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
  final List<Object>? value;

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
  final List<Object?> value;

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
  final List<Object?>? value;

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
  final List<String> value;

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
  final List<String>? value;

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
  final List<String?> value;

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
  final List<String?>? value;

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
  final List<Uri> value;

  SimpleClassOfUri(
    this.value,
  );

  factory SimpleClassOfUri.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassOfUriFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassOfUriToDynamoJson(this);
}

@DynamoSerializable()
class SimpleClassNullableOfUri {
  final List<Uri>? value;

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
  final List<Uri?> value;

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
  final List<Uri?>? value;

  SimpleClassNullableOfUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriNullable.fromDynamoJson(
          Map<String, Object?> json) =>
      _$SimpleClassNullableOfUriNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableOfUriNullableToDynamoJson(this);
}
