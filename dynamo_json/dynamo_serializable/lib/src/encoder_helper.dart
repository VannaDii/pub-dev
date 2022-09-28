// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:source_helper/source_helper.dart';

import 'constants.dart';
import 'helper_core.dart';
import 'type_helpers/dynamo_converter_helper.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'unsupported_type_error.dart';

abstract class EncodeHelper implements HelperCore {
  String _fieldAccess(FieldElement field) =>
      '$_toDynamoJsonParamName.${field.name}';

  /// Generates an object containing metadata related to the encoding,
  /// destined to be used by other code-generators.
  String createFieldMap(Set<FieldElement> accessibleFieldSet) {
    assert(config.createFieldMap);

    final buffer = StringBuffer(
      'const _\$${element.name.nonPrivate}FieldMap = <String, String> {',
    );

    for (final field in accessibleFieldSet) {
      buffer.writeln(
        '${escapeDartString(field.name)}: '
        '${escapeDartString(nameAccess(field))},',
      );
    }

    buffer.write('};');

    return buffer.toString();
  }

  Iterable<String> createToDynamoJson(
      Set<FieldElement> accessibleFields) sync* {
    final buffer = StringBuffer();

    final functionName =
        '${prefix}ToDynamoJson${genericClassArgumentsImpl(true)}';
    buffer.write('Map<String, dynamic> '
        '$functionName($targetClassReference $_toDynamoJsonParamName');

    if (config.genericArgumentFactories) {
      for (var arg in element.typeParameters) {
        final helperName = toDynamoJsonForType(
          arg.instantiate(nullabilitySuffix: NullabilitySuffix.none),
        );
        buffer.write(',Object? Function(${arg.name} value) $helperName');
      }
      if (element.typeParameters.isNotEmpty) {
        buffer.write(',');
      }
    }
    buffer.write(') ');

    final writeNaive = accessibleFields.every(_writeDynamoJsonValueNaive);

    if (writeNaive) {
      // write simple `toDynamoJson` method that includes all keys...
      _writeToDynamoJsonSimple(buffer, accessibleFields);
    } else {
      // At least one field should be excluded if null
      _writeToDynamoJsonWithNullChecks(buffer, accessibleFields);
    }

    yield buffer.toString();
  }

  void _writeToDynamoJsonSimple(
      StringBuffer buffer, Iterable<FieldElement> fields) {
    buffer
      ..writeln('=> <String, dynamic>{')
      ..writeAll(fields.map((field) {
        final access = _fieldAccess(field);
        final value =
            '${safeNameAccess(field)}: ${_serializeField(field, access)}';
        return '        $value,\n';
      }))
      ..writeln('};');
  }

  static const _toDynamoJsonParamName = 'instance';

  void _writeToDynamoJsonWithNullChecks(
    StringBuffer buffer,
    Iterable<FieldElement> fields,
  ) {
    buffer
      ..writeln('{')
      ..writeln('    final $generatedLocalVarName = <String, dynamic>{');

    // Note that the map literal is left open above. As long as target fields
    // don't need to be intercepted by the `only if null` logic, write them
    // to the map literal directly. In theory, should allow more efficient
    // serialization.
    var directWrite = true;

    for (final field in fields) {
      var safeFieldAccess = _fieldAccess(field);
      final safeDynamoKeyString = safeNameAccess(field);

      // If `fieldName` collides with one of the local helpers, prefix
      // access with `this.`.
      if (safeFieldAccess == generatedLocalVarName ||
          safeFieldAccess == toDynamoJsonMapHelperName) {
        safeFieldAccess = 'this.$safeFieldAccess';
      }

      final expression = _serializeField(field, safeFieldAccess);
      if (_writeDynamoJsonValueNaive(field)) {
        if (directWrite) {
          buffer.writeln('      $safeDynamoKeyString: $expression,');
        } else {
          buffer.writeln(
              '    $generatedLocalVarName[$safeDynamoKeyString] = $expression;');
        }
      } else {
        if (directWrite) {
          // close the still-open map literal
          buffer
            ..writeln('    };')
            ..writeln()

            // write the helper to be used by all following null-excluding
            // fields
            ..writeln('''
    void $toDynamoJsonMapHelperName(String key, dynamic value) {
      if (value != null) {
        $generatedLocalVarName[key] = value;
      }
    }
''');
          directWrite = false;
        }
        buffer.writeln(
            '    $toDynamoJsonMapHelperName($safeDynamoKeyString, $expression);');
      }
    }

    buffer
      ..writeln('    return $generatedLocalVarName;')
      ..writeln('  }');
  }

  String _serializeField(FieldElement field, String accessExpression) {
    try {
      return getHelperContext(field)
          .serialize(field.type, accessExpression)
          .toString();
    } on UnsupportedTypeError catch (e) // ignore: avoid_catching_errors
    {
      throw createInvalidGenerationError('toDynamoJson', field, e);
    }
  }

  /// Returns `true` if the field can be written to Dynamo JSON 'naively' –
  /// meaning we can avoid checking for `null`.
  bool _writeDynamoJsonValueNaive(FieldElement field) {
    final jsonKey = dynamoKeyFor(field);

    return jsonKey.includeIfNull ||
        (!field.type.isNullableType && !_fieldHasCustomEncoder(field));
  }

  /// Returns `true` if [field] has a user-defined encoder.
  ///
  /// This can be either a `toDynamoJson` function in [DynamoKey] or a
  /// [DynamoConverter] annotation.
  bool _fieldHasCustomEncoder(FieldElement field) {
    final helperContext = getHelperContext(field);
    return helperContext.serializeConvertData != null ||
        const DynamoConverterHelper()
                .serialize(field.type, 'test', helperContext) !=
            null;
  }
}
