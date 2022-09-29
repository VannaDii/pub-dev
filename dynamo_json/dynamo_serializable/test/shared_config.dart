// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:dynamo_serializable/src/type_helpers/config_types.dart';

final jsonSerializableFields = generatorConfigDefaultJson.keys.toList();

final generatorConfigDefaultJson = Map<String, dynamic>.unmodifiable(
  ClassConfig.defaults.toDynamoSerializable().toJson(),
);

// #CHANGE WHEN UPDATING json_annotation
final generatorConfigNonDefaultJson =
    Map<String, dynamic>.unmodifiable(const DynamoSerializable(
  anyMap: true,
  checked: true,
  constructor: 'something',
  createFactory: false,
  createFieldMap: true,
  disallowUnrecognizedKeys: true,
  fieldRename: FieldRename.kebab,
  ignoreUnannotated: true,
  includeIfNull: false,
  genericArgumentFactories: true,
).toJson());
