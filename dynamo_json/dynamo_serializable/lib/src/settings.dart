// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

import 'type_helper.dart';
import 'type_helpers/big_int_helper.dart';
import 'type_helpers/config_types.dart';
import 'type_helpers/convert_helper.dart';
import 'type_helpers/date_time_helper.dart';
import 'type_helpers/duration_helper.dart';
import 'type_helpers/enum_helper.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'type_helpers/iterable_helper.dart';
import 'type_helpers/dynamo_converter_helper.dart';
import 'type_helpers/dynamo_json_helper.dart';
import 'type_helpers/map_helper.dart';
import 'type_helpers/uri_helper.dart';
import 'type_helpers/value_helper.dart';

class Settings {
  static const _coreHelpers = <TypeHelper>[
    IterableHelper(),
    MapHelper(),
    EnumHelper(),
    ValueHelper(),
  ];

  static const defaultHelpers = <TypeHelper>[
    BigIntHelper(),
    DateTimeHelper(),
    DurationHelper(),
    DynamoJsonHelper(),
    UriHelper(),
  ];

  final List<TypeHelper> _typeHelpers;

  Iterable<TypeHelper> get allHelpers => const <TypeHelper>[
        ConvertHelper(),
        DynamoConverterHelper(),
        GenericFactoryHelper(),
      ].followedBy(_typeHelpers).followedBy(_coreHelpers);

  final ClassConfig config;

  /// Creates an instance of [Settings].
  ///
  /// If [typeHelpers] is not provided, the built-in helpers are used:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [DynamoJsonHelper], and
  /// [UriHelper].
  Settings({
    DynamoSerializable? config,
    List<TypeHelper>? typeHelpers,
  })  : config = config != null
            ? ClassConfig.fromDynamoSerializable(config)
            : ClassConfig.defaults,
        _typeHelpers = typeHelpers ?? defaultHelpers;

  /// Creates an instance of [Settings].
  ///
  /// [typeHelpers] provides a set of [TypeHelper] that will be used along with
  /// the built-in helpers:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [DynamoJsonHelper], and
  /// [UriHelper].
  factory Settings.withDefaultHelpers(
    Iterable<TypeHelper> typeHelpers, {
    DynamoSerializable? config,
  }) =>
      Settings(
        config: config,
        typeHelpers: List.unmodifiable(typeHelpers.followedBy(defaultHelpers)),
      );
}
