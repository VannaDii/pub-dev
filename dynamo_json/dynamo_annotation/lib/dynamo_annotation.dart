// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Provides annotation classes to use with
/// [dynamo_serializable](https://pub.dev/packages/dynamo_serializable).
///
/// Also contains helper functions and classes – prefixed with `$` used by
/// `dynamo_serializable` when the `use_wrappers` or `checked` options are
/// enabled.
library dynamo_annotation;

export 'src/allowed_keys_helpers.dart';
export 'src/checked_helpers.dart';
export 'src/dynamo_attribute.dart';
export 'src/dynamo_converter.dart';
export 'src/dynamo_enum.dart';
export 'src/dynamo_key.dart';
export 'src/dynamo_literal.dart';
export 'src/dynamo_serializable.dart';
export 'src/dynamo_value.dart';
export 'src/enum_helpers.dart';
