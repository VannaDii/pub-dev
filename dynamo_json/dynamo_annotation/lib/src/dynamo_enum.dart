// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';

import 'dynamo_serializable.dart';
import 'dynamo_value.dart';

/// Allows configuration of how `enum` elements are treated as JSON.
@Target({TargetKind.enumType})
class DynamoEnum {
  const DynamoEnum({
    this.alwaysCreate = false,
    this.fieldRename = FieldRename.none,
  });

  /// If `true`, `_$[enum name]EnumMap` is generated for in library containing
  /// the `enum`, even if the `enum` is not used as a field in a class annotated
  /// with [DynamoSerializable].
  ///
  /// The default, `false`, means no extra helpers are generated for this `enum`
  /// unless it is used by a class annotated with [DynamoSerializable].
  final bool alwaysCreate;

  /// Defines the naming strategy when converting enum entry names to JSON
  /// values.
  ///
  /// With a value [FieldRename.none] (the default), the name of the enum entry
  /// is used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [DynamoValue.value] takes precedence over this option
  /// for entries annotated with [DynamoValue].
  final FieldRename fieldRename;
}
