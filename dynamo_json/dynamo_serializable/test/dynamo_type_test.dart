// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
import 'package:dynamo_serializable/dynamo_serializable.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

Future<void> main() async {
  initializeBuildLogTracking();
  final jsonSerializableTestReader = await initializeLibraryReaderForDirectory(
    p.join('test', 'src'),
    '_dynamo_type_map_test_input.dart',
  );

  testAnnotatedElements(
    jsonSerializableTestReader,
    DynamoSerializableGenerator(),
    expectedAnnotatedTests: _expectedAnnotatedTests,
  );
}

const _expectedAnnotatedTests = {
  'TypeMapTest',
};
