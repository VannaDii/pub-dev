// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
import 'dart:async';

import 'package:analyzer/dart/element/type.dart';
import 'package:build/experiments.dart';
import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:dynamo_serializable/dynamo_serializable.dart';
import 'package:dynamo_serializable/src/constants.dart';
import 'package:dynamo_serializable/src/type_helper.dart';
import 'package:dynamo_serializable/src/type_helpers/config_types.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen/source_gen.dart';
import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

import 'shared_config.dart';

late LibraryReader _libraryReader;

Future<void> main() async {
  initializeBuildLogTracking();
  _libraryReader = await withEnabledExperiments(
    () => initializeLibraryReaderForDirectory(
      p.join('test', 'test_sources'),
      'test_sources.dart',
    ),
    ['non-nullable'],
  );

  group('without wrappers', () {
    _registerTests(ClassConfig.defaults.toDynamoSerializable());
  });

  group('configuration', () {
    Future<void> runWithConfigAndLogger(
        DynamoSerializable? config, String className) async {
      await generateForElement(
          DynamoSerializableGenerator(
              config: config, typeHelpers: const [_ConfigLogger()]),
          _libraryReader,
          className);
    }

    setUp(_ConfigLogger.configurations.clear);

    group('defaults', () {
      for (var className in [
        'ConfigurationImplicitDefaults',
        'ConfigurationExplicitDefaults',
      ]) {
        for (var nullConfig in [true, false]) {
          final testDescription =
              '$className with ${nullConfig ? 'null' : 'default'} config';

          test(testDescription, () async {
            await runWithConfigAndLogger(
                nullConfig ? null : const DynamoSerializable(), className);

            expect(_ConfigLogger.configurations, hasLength(2));
            expect(
              _ConfigLogger.configurations.first.toJson(),
              _ConfigLogger.configurations.last.toJson(),
            );
            expect(_ConfigLogger.configurations.first.toJson(),
                generatorConfigDefaultJson);
          });
        }
      }
    });

    test(
        'values in config override un-configured (default) values in annotation',
        () async {
      await runWithConfigAndLogger(
          DynamoSerializable.fromJson(generatorConfigNonDefaultJson),
          'ConfigurationImplicitDefaults');

      expect(_ConfigLogger.configurations, isEmpty,
          reason: 'all generation is disabled');

      // Create a configuration with just `create_to_dynamo_json` set to true
      // so we can validate the configuration that is run with
      final configMap =
          Map<String, dynamic>.from(generatorConfigNonDefaultJson);
      configMap['create_to_dynamo_json'] = true;

      await runWithConfigAndLogger(DynamoSerializable.fromJson(configMap),
          'ConfigurationImplicitDefaults');
    });

    test(
      'explicit values in annotation override corresponding settings in config',
      () async {
        await runWithConfigAndLogger(
            DynamoSerializable.fromJson(generatorConfigNonDefaultJson),
            'ConfigurationExplicitDefaults');

        expect(_ConfigLogger.configurations, hasLength(2));
        expect(
          _ConfigLogger.configurations.first.toJson(),
          _ConfigLogger.configurations.last.toJson(),
        );

        // The effective configuration should be non-Default configuration, but
        // with all fields set from JsonSerializable as the defaults

        final expected =
            Map<String, dynamic>.from(generatorConfigNonDefaultJson);
        for (var jsonSerialKey in jsonSerializableFields) {
          expected[jsonSerialKey] = generatorConfigDefaultJson[jsonSerialKey];
        }

        expect(
          _ConfigLogger.configurations.first.toJson(),
          expected,
          reason: 'Did you forget to change README.md?',
        );
      },
    );
  });
}

Future<String> _runForElementNamed(
    DynamoSerializable config, String name) async {
  final generator = DynamoSerializableGenerator(config: config);
  return generateForElement(generator, _libraryReader, name);
}

void _registerTests(DynamoSerializable generator) {
  Future<String> runForElementNamed(String name) =>
      _runForElementNamed(generator, name);

  group('explicit toDynamoJson', () {
    test('nullable', () async {
      final output = await _runForElementNamed(
          const DynamoSerializable(), 'TrivialNestedNullable');

      const expected = r'''
Map<String, dynamic> _$TrivialNestedNullableToDynamoJson(
        TrivialNestedNullable instance) =>
    <String, dynamic>{
      'child': instance.child?.toDynamoJson(),
      'otherField': instance.otherField,
    };
''';

      expect(output, expected);
    });
    test('non-nullable', () async {
      final output = await _runForElementNamed(
          const DynamoSerializable(), 'TrivialNestedNonNullable');

      const expected = r'''
Map<String, dynamic> _$TrivialNestedNonNullableToDynamoJson(
        TrivialNestedNonNullable instance) =>
    <String, dynamic>{
      'child': instance.child.toDynamoJson(),
      'otherField': instance.otherField,
    };
''';

      expect(output, expected);
    });
  });

  group('valid inputs', () {
    test('class with fromJson() constructor with optional parameters',
        () async {
      final output = await runForElementNamed('FromJsonOptionalParameters');

      expect(output, contains('ChildWithFromJson.fromDynamoJson'));
    });

    test('class with child json-able object', () async {
      final output = await runForElementNamed('ParentObject');

      expect(
          output,
          contains("ChildObject.fromDynamoJson(json['child'] "
              'as Map<String, dynamic>)'));
    });

    test('class with child json-able object - anyMap', () async {
      final output = await _runForElementNamed(
          const DynamoSerializable(anyMap: true), 'ParentObject');

      expect(
          output, contains("ChildObject.fromDynamoJson(json['child'] as Map)"));
    });

    test('class with child list of json-able objects', () async {
      final output = await runForElementNamed('ParentObjectWithChildren');

      expect(output, contains('.toList()'));
      expect(output, contains('ChildObject.fromDynamoJson'));
    });

    test('class with child list of dynamic objects is left alone', () async {
      final output =
          await runForElementNamed('ParentObjectWithDynamicChildren');

      expect(
        output,
        contains('children = json[\'children\'] as List<dynamic>;'),
      );
    });
  });

  group('includeIfNull', () {
    test('some', () async {
      final output = await runForElementNamed('IncludeIfNullAll');
      expect(output, isNot(contains(generatedLocalVarName)));
      expect(output, isNot(contains(toDynamoJsonMapHelperName)));
    });
  });
}

class _ConfigLogger implements TypeHelper<TypeHelperContextWithConfig> {
  static final configurations = <DynamoSerializable>[];

  const _ConfigLogger();

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    configurations.add(context.config.toDynamoSerializable());
    return null;
  }

  @override
  Object? serialize(DartType targetType, String expression,
      TypeHelperContextWithConfig context) {
    configurations.add(context.config.toDynamoSerializable());
    return null;
  }
}
