// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'simple_object.g.dart';

@DynamoSerializable(anyMap: true)
class SimpleObject {
  final int value;

  SimpleObject(this.value);

  factory SimpleObject.fromDynamoJson(Map json) =>
      _$SimpleObjectFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$SimpleObjectToDynamoJson(this);
}
