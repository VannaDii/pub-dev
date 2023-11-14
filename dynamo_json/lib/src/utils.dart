import 'package:collection/collection.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dynamo_json/dynamo_json.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

/// The [TypeChecker] for [DynamoIgnore].
const _dynamoIgnoreChecker = TypeChecker.fromRuntime(DynamoIgnore);

/// Maps [NullabilitySuffix] to the corresponding code character.
const _nullSuffix = <NullabilitySuffix, String>{
  NullabilitySuffix.none: '',
  NullabilitySuffix.star: '*',
  NullabilitySuffix.question: '?',
};

/// Returns t null-suffix [String] for the [type] provided.
String nullSuffixFor(DartType type) => _nullSuffix[type.nullabilitySuffix]!;

/// Indicates if the [type] has both `toDynamoJson` and `fromDynamoJson` methods.
bool hasToFromDynamoJson(DartType type) =>
    hasMethodNamed(type, 'toDynamoJson') &&
    hasMethodNamed(type, 'fromDynamoJson');

/// Indicates if the [type] has a method called [name] or not.
bool hasMethodNamed(DartType type, String name) =>
    getMethodByName(type, name) != null;

/// Returns true, if the [type] is decorated with an annotation named [name],
/// otherwise false.
bool hasAnnotationNamed(DartType type, String name) =>
    getAnnotationNamed(type, name) != null;

/// Returns the [ElementAnnotation] named [name] from the [type], or null if
/// it doesn't exist.
ElementAnnotation? getAnnotationNamed(DartType type, String name) {
  final result = type.element?.metadata
      .firstWhereOrNull((e) => e.element?.displayName == name);
  return result;
}

/// Returns `true` if the [field] has a [DynamoIgnore] annotation,
/// otherwise `false`
bool isIgnored(FieldElement field) {
  final annotation = _dynamoIgnoreChecker.firstAnnotationOf(field) ??
      (field.getter == null
          ? null
          : _dynamoIgnoreChecker.firstAnnotationOf(field.getter!));
  return annotation != null;
}

/// Gets the base name for the [type].
///
/// Base name is the type name without nullability indicators or type arguments.
String baseNameForType(DartType type) => type is ParameterizedType
    ? type.getDisplayString(withNullability: false).split('<').first
    : type.getDisplayString(withNullability: false);

/// Returns the [ExecutableElement] (either a [MethodElement],
/// [ConstructorElement]) from the [type] matching the [name], or `null`.
ExecutableElement? getMethodByName(DartType type, String name) {
  final result = type.typeImplementations
      .map((dt) => dt is InterfaceType
          ? dt.getMethod(name) ?? dt.lookUpConstructor(name, dt.element.library)
          : null)
      .firstWhereOrNull((me) => me != null);
  return result;
}

/// Returns the [FieldElement]s for a given [enumType], or `null` if
/// [enumType] is not an [Enum].
Iterable<FieldElement>? iterateEnumFields(DartType enumType) {
  if (enumType is InterfaceType && enumType.element is EnumElement) {
    return enumType.element.fields.where((element) => element.isEnumConstant);
  }
  return null;
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
  if (type is DynamicType) {
    return 'dynamic';
  } else if (type is InterfaceType) {
    return [
      type.element.name,
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

/// Returns a [String] representing the type arguments that exist on
/// [element].
///
/// If [withConstraints] is `null` or if [element] has no type arguments, an
/// empty [String] is returned.
///
/// If [withConstraints] is true, any type constraints that exist on [element]
/// are included.
///
/// For example, for class `class Sample<T as num, S>{...}`
///
/// For [withConstraints] = `false`:
///
/// ```
/// "<T, S>"
/// ```
///
/// For [withConstraints] = `true`:
///
/// ```
/// "<T as num, S>"
/// ```
String genericClassArguments(ClassElement element, bool? withConstraints) {
  if (withConstraints == null || element.typeParameters.isEmpty) {
    return '';
  }
  final values = element.typeParameters.map((t) {
    if (withConstraints && t.bound != null) {
      final boundCode = typeToCode(t.bound!);
      return '${t.name} extends $boundCode';
    } else {
      return t.name;
    }
  }).join(', ');
  return '<$values>';
}
