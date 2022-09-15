// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldThrow('`@JsonEnum` can only be used on enum elements.')
@DynamoEnum() // ignore: invalid_annotation_target
class UnsupportedClass {}
