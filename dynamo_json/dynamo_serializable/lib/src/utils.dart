// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'type_helpers/config_types.dart';

const _jsonKeyChecker = TypeChecker.fromRuntime(DynamoKey);

DartObject? _dynamoKeyAnnotation(FieldElement element) =>
    _jsonKeyChecker.firstAnnotationOf(element) ??
    (element.getter == null
        ? null
        : _jsonKeyChecker.firstAnnotationOf(element.getter!));

ConstantReader dynamoKeyAnnotation(FieldElement element) =>
    ConstantReader(_dynamoKeyAnnotation(element));

/// Returns `true` if [element] is annotated with [DynamoKey].
bool hasDynamoKeyAnnotation(FieldElement element) =>
    _dynamoKeyAnnotation(element) != null;

Never throwUnsupported(FieldElement element, String message) =>
    throw InvalidGenerationSourceError(
      'Error with `@DynamoKey` on the `${element.name}` field. $message',
      element: element,
    );

FieldRename? _fromDartObject(ConstantReader reader) => reader.isNull
    ? null
    : enumValueForDartObject(
        reader.objectValue,
        FieldRename.values,
        (f) => f.toString().split('.')[1],
      );

T enumValueForDartObject<T>(
  DartObject source,
  List<T> items,
  String Function(T) name,
) =>
    items[source.getField('index')!.toIntValue()!];

/// Return an instance of [DynamoSerializable] corresponding to a the provided
/// [reader].
// #CHANGE WHEN UPDATING json_annotation
DynamoSerializable _valueForAnnotation(ConstantReader reader) =>
    DynamoSerializable(
      anyMap: reader.read('anyMap').literalValue as bool?,
      checked: reader.read('checked').literalValue as bool?,
      constructor: reader.read('constructor').literalValue as String?,
      createFactory: reader.read('createFactory').literalValue as bool?,
      createFieldMap: reader.read('createFieldMap').literalValue as bool?,
      disallowUnrecognizedKeys:
          reader.read('disallowUnrecognizedKeys').literalValue as bool?,
      fieldRename: _fromDartObject(reader.read('fieldRename')),
      genericArgumentFactories:
          reader.read('genericArgumentFactories').literalValue as bool?,
      ignoreUnannotated: reader.read('ignoreUnannotated').literalValue as bool?,
      includeIfNull: reader.read('includeIfNull').literalValue as bool?,
    );

/// Returns a [ClassConfig] with values from the [DynamoSerializable]
/// instance represented by [reader].
///
/// For fields that are not defined in [DynamoSerializable] or `null` in
/// [reader], use the values in [config].
///
/// Note: if [DynamoSerializable.genericArgumentFactories] is `false` for
/// [reader] and `true` for [config], the corresponding field in the return
/// value will only be `true` if [classElement] has type parameters.
ClassConfig mergeConfig(
  ClassConfig config,
  ConstantReader reader, {
  required ClassElement classElement,
}) {
  final annotation = _valueForAnnotation(reader);
  assert(config.ctorParamDefaults.isEmpty);

  final constructor = annotation.constructor ?? config.constructor;
  final constructorInstance =
      _constructorByNameOrNull(classElement, constructor);

  final paramDefaultValueMap = constructorInstance == null
      ? <String, String>{}
      : Map<String, String>.fromEntries(constructorInstance.parameters
          .where((element) => element.hasDefaultValue)
          .map((e) => MapEntry(e.name, e.defaultValueCode!)));

  final converters = reader.read('converters');

  return ClassConfig(
    anyMap: annotation.anyMap ?? config.anyMap,
    checked: annotation.checked ?? config.checked,
    constructor: constructor,
    createFactory: annotation.createFactory ?? config.createFactory,
    createFieldMap: annotation.createFieldMap ?? config.createFieldMap,
    disallowUnrecognizedKeys:
        annotation.disallowUnrecognizedKeys ?? config.disallowUnrecognizedKeys,
    fieldRename: annotation.fieldRename ?? config.fieldRename,
    genericArgumentFactories: annotation.genericArgumentFactories ??
        (classElement.typeParameters.isNotEmpty &&
            config.genericArgumentFactories),
    ignoreUnannotated: annotation.ignoreUnannotated ?? config.ignoreUnannotated,
    includeIfNull: annotation.includeIfNull ?? config.includeIfNull,
    ctorParamDefaults: paramDefaultValueMap,
    converters: converters.isNull ? const [] : converters.listValue,
  );
}

ConstructorElement? _constructorByNameOrNull(
  ClassElement classElement,
  String name,
) {
  try {
    return constructorByName(classElement, name);
    // ignore: avoid_catching_errors
  } on InvalidGenerationSourceError {
    return null;
  }
}

ConstructorElement constructorByName(ClassElement classElement, String name) {
  final className = classElement.name;

  ConstructorElement? ctor;
  if (name.isEmpty) {
    ctor = classElement.unnamedConstructor;
    if (ctor == null) {
      throw InvalidGenerationSourceError(
        'The class `$className` has no default constructor.',
        element: classElement,
      );
    }
  } else {
    ctor = classElement.getNamedConstructor(name);
    if (ctor == null) {
      throw InvalidGenerationSourceError(
        'The class `$className` does not have a constructor with the name '
        '`$name`.',
        element: classElement,
      );
    }
  }

  return ctor;
}

/// If [targetType] is an enum, returns the [FieldElement] instances associated
/// with its values.
///
/// Otherwise, `null`.
Iterable<FieldElement>? iterateEnumFields(DartType targetType) {
  if (targetType is InterfaceType && targetType.element2 is EnumElement) {
    return targetType.element2.fields
        .where((element) => element.isEnumConstant);
  }
  return null;
}

extension DartTypeExtension on DartType {
  DartType promoteNonNullable() =>
      element2?.library?.typeSystem.promoteToNonNull(this) ?? this;
}

String ifNullOrElse(String test, String ifNull, String ifNotNull) =>
    '$test == null ? $ifNull : $ifNotNull';

String encodedFieldName(
  FieldRename fieldRename,
  String declaredName,
) {
  switch (fieldRename) {
    case FieldRename.none:
      return declaredName;
    case FieldRename.snake:
      return declaredName.snake;
    case FieldRename.screamingSnake:
      return declaredName.snake.toUpperCase();
    case FieldRename.kebab:
      return declaredName.kebab;
    case FieldRename.pascal:
      return declaredName.pascal;
  }
}

/// Return the Dart code presentation for the given [type].
///
/// This function is intentionally limited, and does not support all possible
/// types and locations of these files in code. Specifically, it supports
/// only [InterfaceType]s, with optional type arguments that are also should
/// be [InterfaceType]s.
String typeToCode(
  DartType type, {
  bool forceNullable = false,
}) {
  if (type.isDynamic) {
    return 'dynamic';
  } else if (type is InterfaceType) {
    return [
      type.element2.name,
      if (type.typeArguments.isNotEmpty)
        '<${type.typeArguments.map(typeToCode).join(', ')}>',
      (type.isNullableType || forceNullable) ? '?' : '',
    ].join();
  }

  if (type is TypeParameterType) {
    return type.getDisplayString(withNullability: false);
  }
  throw UnimplementedError('(${type.runtimeType}) $type');
}

extension ExecutableElementExtension on ExecutableElement {
  /// Returns the name of `this` qualified with the class name if it's a
  /// [MethodElement].
  String get qualifiedName {
    if (this is FunctionElement) {
      return name;
    }

    if (this is MethodElement) {
      return '${enclosingElement3.name}.$name';
    }

    throw UnsupportedError(
      'Not sure how to support typeof $runtimeType',
    );
  }
}