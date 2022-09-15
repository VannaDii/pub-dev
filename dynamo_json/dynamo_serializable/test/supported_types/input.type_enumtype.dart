// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'enum_type.dart';

part 'input.type_enumtype.g.dart';

@DynamoSerializable()
class SimpleClass {
  final EnumType value;

  @DynamoKey(defaultValue: EnumType.alpha)
  EnumType withDefault;

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
  final EnumType? value;

  @DynamoKey(defaultValue: EnumType.alpha)
  EnumType? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromJson(Map<String, Object?> json) =>
      _$SimpleClassNullableFromJson(json);

  Map<String, Object?> toJson() => _$SimpleClassNullableToJson(this);
}
