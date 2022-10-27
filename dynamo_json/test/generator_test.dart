import 'dart:async';

import 'package:dynamo_json/src/dynamo_json_annotation.dart';
import 'package:dynamo_json/src/dynamo_json_generator.dart';
import 'package:source_gen_test/src/build_log_tracking.dart';
import 'package:source_gen_test/src/init_library_reader.dart';
import 'package:source_gen_test/src/test_annotated_classes.dart';

Future<void> main() async {
  final reader = await initializeLibraryReaderForDirectory(
    'test/sources',
    'basic.dart',
  );

  initializeBuildLogTracking();
  testAnnotatedElements<DynamoJson>(
    reader,
    const DynamoJsonGenerator(),
    expectedAnnotatedTests: expectedTests,
  );
}

const expectedTests = <String>['SupportedTypesClass'];
