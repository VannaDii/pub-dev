import 'package:collection/collection.dart';
import 'package:analyzer/dart/element/element.dart';

import '../utils.dart';
import 'all.dart';
import 'dynamo.dart';
import '../string_extensions.dart';

/// A helper class for code generation.
class GeneratorHelper {
  /// The target [ClassElement] for code generation.
  final ClassElement _element;

  /// The discovered [_element] fields.
  final Iterable<FieldElement> _fields;

  /// Private constructor to force factory use.
  GeneratorHelper._(this._element, this._fields);

  /// Creates a [GeneratorHelper] for the [element].
  factory GeneratorHelper.forElement({required ClassElement element}) {
    final fields = createSortedFieldSet(element);
    return GeneratorHelper._(element, fields);
  }

  /// Gets a name prefix or an empty string based on the field being named
  /// or positional in the constructor.
  String getCtorParamPrefixFor(FieldElement field) {
    final fieldName = field.displayName;
    final param = _element.constructors.first.parameters
        .firstWhereOrNull((p) => p.name == fieldName);
    return param != null
        ? param.isNamed
            ? '${param.name}:'
            : ''
        : field.isLate
            ? '..$fieldName = '
            : '';
  }

  /// Gets a name prefix or an empty string based on the field being named
  /// or positional in the constructor.
  bool includeFieldTo(FieldElement field) {
    final fieldName = field.displayName;
    final param = _element.constructors.first.parameters
        .firstWhereOrNull((p) => p.name == fieldName);
    return param != null || field.isLate;
  }

  /// Gets a name prefix or an empty string based on the field being named
  /// or positional in the constructor.
  bool includeFieldFrom(FieldElement field) {
    final fieldName = field.displayName;
    final param = _element.constructors.first.parameters
        .firstWhereOrNull((p) => p.name == fieldName);
    return param != null;
  }

  /// Returns a `toDynamoJson` suitable code notation for a [field].
  String? dynamoNotationTo(FieldElement field) {
    if (!includeFieldTo(field)) return null;

    final fieldName = field.displayName;
    final dynamoType = dynamoMetaFor(field);
    final result = "'$fieldName': ${dynamoType.wrapTo('instance.$fieldName')}";
    return result;
  }

  /// Returns a `fromDynamoJson` suitable code notation for a
  /// potentially [named] [field].
  String? dynamoNotationFrom(FieldElement field, [bool named = true]) {
    if (!includeFieldTo(field)) return null;

    final fieldName = field.displayName;
    final dynamoType = dynamoMetaFor(field);
    final paramPrefix = getCtorParamPrefixFor(field);
    final result = "$paramPrefix${dynamoType.wrapFrom("json['$fieldName']")}";
    return result;
  }

  /// Generates the `toDynamoJson` code for the [_element].
  Iterable<String> genFieldsToJson() sync* {
    yield* _fields
        .map((f) => dynamoNotationTo(f))
        .whereNotNull()
        .map((e) => e.asLine(','));
  }

  /// Generates the `fromDynamoJson` code for the [_element].
  Iterable<String> genFieldsFromJson() sync* {
    yield* _fields
        .where((f) => !f.isLate)
        .map((f) => dynamoNotationFrom(f))
        .whereNotNull()
        .map((e) => e.asLine(','));
  }

  /// Generates the `fromDynamoJson` late assignment code for the [_element].
  Iterable<String> genLateFieldsFromJson() sync* {
    yield* _fields
        .where((f) => f.isLate)
        .map((f) => dynamoNotationFrom(f))
        .whereNotNull()
        .map((e) => e.asLine(''));
  }

  /// Generates the DynamoDB JSON conversion code the [_element].
  Iterable<String> generate() sync* {
    final name = _element.displayName;
    final typeArgs = genericClassArguments(_element, false);
    final codeName = '$name$typeArgs';
    yield '/// Creates an instance of [$name] from the values in [json]';
    yield '$codeName _\$${name}FromDynamoJson$typeArgs(Map<String, dynamic> json) => $codeName(';
    yield genFieldsFromJson()
        .join('\n')
        .asLine(')${genLateFieldsFromJson().join()};');
    yield '/// Creates a [Map]<String,dynamic> from an instance of [$name]';
    yield 'Map<String, dynamic> _\$${name}ToDynamoJson$typeArgs($codeName instance) => {';
    yield genFieldsToJson().join('\n').asLine('};');
  }
}
