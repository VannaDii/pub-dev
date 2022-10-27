import 'package:collection/collection.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_helper/source_helper.dart';

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
  final result = type.element2?.metadata
      .firstWhereOrNull((e) => e.element?.displayName == name);
  return result;
}

/// Returns the [ExecutableElement] (either a [MethodElement],
/// [ConstructorElement]) from the [type] matching the [name], or `null`.
ExecutableElement? getMethodByName(DartType type, String name) {
  final result = type.typeImplementations
      .map((dt) => dt is InterfaceType
          ? dt.getMethod(name) ??
              dt.lookUpConstructor(name, dt.element2.library)
          : null)
      .firstWhereOrNull((me) => me != null);
  return result;
}

/// Returns the [FieldElement]s for a given [enumType], or `null` if
/// [enumType] is not an [Enum].
Iterable<FieldElement>? iterateEnumFields(DartType enumType) {
  if (enumType is InterfaceType && enumType.element2 is EnumElement) {
    return enumType.element2.fields.where((element) => element.isEnumConstant);
  }
  return null;
}
