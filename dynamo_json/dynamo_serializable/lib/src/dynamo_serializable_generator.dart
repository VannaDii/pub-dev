// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'generator_helper.dart';
import 'settings.dart';
import 'type_helper.dart';
import 'type_helpers/big_int_helper.dart';
import 'type_helpers/date_time_helper.dart';
import 'type_helpers/duration_helper.dart';
import 'type_helpers/dynamo_json_helper.dart';
import 'type_helpers/uri_helper.dart';

class DynamoSerializableGenerator
    extends GeneratorForAnnotation<DynamoSerializable> {
  final Settings _settings;

  DynamoSerializable get config => _settings.config.toDynamoSerializable();

  DynamoSerializableGenerator.fromSettings(this._settings);

  /// Creates an instance of [DynamoSerializableGenerator].
  ///
  /// If [typeHelpers] is not provided, the built-in helpers are used:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [DynamoJsonHelper],
  /// and [UriHelper].
  factory DynamoSerializableGenerator({
    DynamoSerializable? config,
    List<TypeHelper>? typeHelpers,
  }) =>
      DynamoSerializableGenerator.fromSettings(Settings(
        config: config,
        typeHelpers: typeHelpers,
      ));

  /// Creates an instance of [DynamoSerializableGenerator].
  ///
  /// [typeHelpers] provides a set of [TypeHelper] that will be used along with
  /// the built-in helpers:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [DynamoJsonHelper], and
  /// [UriHelper].
  factory DynamoSerializableGenerator.withDefaultHelpers(
    Iterable<TypeHelper> typeHelpers, {
    DynamoSerializable? config,
  }) =>
      DynamoSerializableGenerator(
        config: config,
        typeHelpers: List.unmodifiable(
          typeHelpers.followedBy(Settings.defaultHelpers),
        ),
      );

  @override
  Iterable<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (!element.library!.isNonNullableByDefault) {
      throw InvalidGenerationSourceError(
        'Generator cannot target libraries that have not been migrated to '
        'null-safety.',
        element: element,
      );
    }

    if (element is! ClassElement || element is EnumElement) {
      throw InvalidGenerationSourceError(
        '`@JsonSerializable` can only be used on classes.',
        element: element,
      );
    }

    final helper = GeneratorHelper(_settings, element, annotation);
    return helper.generate();
  }
}
