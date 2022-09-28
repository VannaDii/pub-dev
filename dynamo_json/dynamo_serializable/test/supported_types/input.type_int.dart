// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'input.type_int.g.dart';

@DynamoSerializable()
class SimpleClass {
  final int value;

  @DynamoKey(defaultValue: 42)
  int withDefault;

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
  final int? value;

  @DynamoKey(defaultValue: 42)
  int? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassNullableFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() =>
      _$SimpleClassNullableToDynamoJson(this);
}
