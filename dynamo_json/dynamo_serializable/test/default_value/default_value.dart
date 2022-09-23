// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: annotate_overrides

import 'package:dynamo_annotation/dynamo_annotation.dart';

import 'default_value_interface.dart' as dvi hide Greek;
import 'default_value_interface.dart'
    show
        Greek,
        ConstClass,
        ConstClassConverter,
        constClassFromJson,
        constClassToJson;

part 'default_value.g.dart';

const _intValue = 42;

dvi.DefaultValue fromJson(Map<String, dynamic> json) =>
    _$DefaultValueFromJson(json);

@DynamoSerializable()
class DefaultValue implements dvi.DefaultValue {
  @DynamoKey(defaultValue: true)
  bool fieldBool;

  @DynamoKey(defaultValue: 'string', includeIfNull: false)
  String fieldString;

  @DynamoKey(defaultValue: _intValue)
  int fieldInt;

  @DynamoKey(defaultValue: 3.14)
  double fieldDouble;

  @DynamoKey(defaultValue: [])
  List fieldListEmpty;

  @DynamoKey(defaultValue: <int>{})
  Set fieldSetEmpty;

  @DynamoKey(defaultValue: {})
  Map fieldMapEmpty;

  @DynamoKey(defaultValue: [1, 2, 3])
  List<int> fieldListSimple;

  @DynamoKey(defaultValue: {'entry1', 'entry2'})
  Set<String> fieldSetSimple;

  @DynamoKey(defaultValue: {'answer': 42})
  Map<String, int> fieldMapSimple;

  @DynamoKey(defaultValue: {
    'root': ['child']
  })
  Map<String, List<String>> fieldMapListString;

  Duration durationField;

  @DynamoKey(defaultValue: Greek.beta)
  Greek fieldEnum;

  ConstClass constClass;

  @ConstClassConverter()
  ConstClass valueFromConverter;

  @DynamoKey(fromDynamoJson: constClassFromJson, toDynamoJson: constClassToJson)
  ConstClass valueFromFunction;

  DefaultValue(
    this.fieldBool,
    this.fieldString,
    this.fieldInt,
    this.fieldDouble,
    this.fieldListEmpty,
    this.fieldSetEmpty,
    this.fieldMapEmpty,
    this.fieldListSimple,
    this.fieldSetSimple,
    this.fieldMapSimple,
    this.fieldMapListString,
    this.fieldEnum, {
    this.durationField = Duration.zero,
    this.constClass = const ConstClass('value'),
    this.valueFromConverter = const ConstClass('value'),
    this.valueFromFunction = const ConstClass('value'),
  });

  factory DefaultValue.fromDynamoJson(Map<String, dynamic> json) =>
      _$DefaultValueFromJson(json);

  Map<String, dynamic> toDynamoJson() => _$DefaultValueToJson(this);
}
