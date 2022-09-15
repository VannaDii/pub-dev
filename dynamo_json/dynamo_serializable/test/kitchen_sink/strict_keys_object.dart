// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'strict_keys_object.g.dart';

@DynamoSerializable(disallowUnrecognizedKeys: true, anyMap: true)
class StrictKeysObject {
  @DynamoKey(required: true)
  final int value;

  @DynamoKey(name: 'custom_field', required: true)
  final String customField;

  StrictKeysObject(this.value, this.customField);

  factory StrictKeysObject.fromJson(Map json) =>
      _$StrictKeysObjectFromJson(json);

  Map<String, dynamic> toJson() => _$StrictKeysObjectToJson(this);
}
