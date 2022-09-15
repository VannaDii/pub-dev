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
        context.addMember(_toDynamoJsonHelper);
        return '$_toDynamoJsonHelperName($expression, $toJsonFunc)';
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
        context.addMember(_fromDynamoJsonHelper);
        return '$_fromDynamoJsonHelperName($expression, $fromJsonFunc)';
      }

      return LambdaResult(expression, fromJsonFunc);
    }

    return null;
  }
}

const _fromDynamoJsonHelperName = r'_$nullableGenericFromDynamoJson';

const _fromDynamoJsonHelper = '''
T? $_fromDynamoJsonHelperName<T>(
  Object? input,
  T Function(Object? json) fromDynamoJson,
) =>
    input == null ? null : fromDynamoJson(input);
''';

const _toDynamoJsonHelperName = r'_$nullableGenericToDynamoJson';

const _toDynamoJsonHelper = '''
Object? $_toDynamoJsonHelperName<T>(
  T? input,
  Object? Function(T value) toDynamoJson,
) =>
    input == null ? null : toDynamoJson(input);
''';

String toDynamoJsonForType(TypeParameterType type) =>
    toDynamoJsonForName(type.getDisplayString(withNullability: false));

String toDynamoJsonForName(String genericType) => 'toJson$genericType';

String fromDynamoJsonForType(TypeParameterType type) =>
    fromDynamoJsonForName(type.getDisplayString(withNullability: false));

String fromDynamoJsonForName(String genericType) => 'fromJson$genericType';
