// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'input.g.dart';

@DynamoSerializable()
class SimpleClass {
  final dynamic value;

  @DynamoKey(defaultValue: 42)
  dynamic withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromDynamoJson(Map<String, Object?> json) =>
      _$SimpleClassFromDynamoJson(json);

  Map<String, Object?> toDynamoJson() => _$SimpleClassToDynamoJson(this);
}
