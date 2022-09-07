// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';
import 'package:source_helper/source_helper.dart';

import '../lambda_result.dart';
import '../type_helper.dart';

class GenericFactoryHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const GenericFactoryHelper();

  @override
  Object? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      final toJsonFunc = toDynamoJsonForType(targetType);
      if (targetType.isNullableType) {
        context.addMember(_toJsonHelper);
        return '$_toJsonHelperName($expression, $toJsonFunc)';
      }

      return LambdaResult(expression, toJsonFunc);
    }

    return null;
  }

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      final fromJsonFunc = fromDynamoJsonForType(targetType);

      if (targetType.isNullableType) {
        context.addMember(_fromJsonHelper);
        return '$_fromJsonHelperName($expression, $fromJsonFunc)';
      }

      return LambdaResult(expression, fromJsonFunc);
    }

    return null;
  }
}

const _fromJsonHelperName = r'_$nullableGenericFromJson';

const _fromJsonHelper = '''
T? $_fromJsonHelperName<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);
''';

const _toJsonHelperName = r'_$nullableGenericToJson';

const _toJsonHelper = '''
Object? $_toJsonHelperName<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
''';

String toDynamoJsonForType(TypeParameterType type) =>
    toDynamoJsonForName(type.getDisplayString(withNullability: false));

String toDynamoJsonForName(String genericType) => 'toDynamoJson$genericType';

String fromDynamoJsonForType(TypeParameterType type) =>
    fromDynamoJsonForName(type.getDisplayString(withNullability: false));

String fromDynamoJsonForName(String genericType) =>
    'fromDynamoJson$genericType';
