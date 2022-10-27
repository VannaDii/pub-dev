import 'package:collection/collection.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

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

  String getCtorParamPrefixFor(String name, DartType paramType) {
    final param = _element.constructors.first.parameters
        .firstWhereOrNull((p) => p.name == name);
    return param != null
        ? param.isNamed
            ? '${param.name}:'
            : ''
        : name;
  }

  /// Returns a `toDynamoJson` suitable code notation for a [field].
  String dynamoNotationTo(FieldElement field) {
    final fieldName = field.displayName;
    final dynamoType = dynamoMetaFor(field);
    final result = "'$fieldName': ${dynamoType.wrapTo('instance.$fieldName')}";
    return result;
  }

  /// Returns a `fromDynamoJson` suitable code notation for a
  /// potentially [named] [field].
  String dynamoNotationFrom(FieldElement field, [bool named = true]) {
    final fieldName = field.displayName;
    final dynamoType = dynamoMetaFor(field);
    final paramPrefix = getCtorParamPrefixFor(fieldName, field.type);
    final result = "$paramPrefix${dynamoType.wrapFrom("json['$fieldName']")}";
    return result;
  }

  /// Generates the `toDynamoJson` code for the [_element].
  Iterable<String> genFieldsToJson() sync* {
    yield* _fields.map((f) => dynamoNotationTo(f).asLine(','));
  }

  /// Generates the `fromDynamoJson` code for the [_element].
  Iterable<String> genFieldsFromJson() sync* {
    yield* _fields.map((f) => dynamoNotationFrom(f).asLine(','));
  }

  /// Generates the DynamoDB JSON conversion code the [_element].
  Iterable<String> generate() sync* {
    final name = _element.displayName;
    yield '/// Creates an instance of [$name] from the values in [json]'
        .asLine();
    yield '$name _\$${name}FromDynamoJson(Map<String, dynamic> json) => $name(';
    yield genFieldsFromJson().join('\n').asLine(');');
    yield '/// Creates a [Map]<String,dynamic> from an instance of [$name]'
        .asLine();
    yield 'Map<String, dynamic> _\$${name}ToDynamoJson($name instance) => {';
    yield genFieldsToJson().join('\n').asLine('};');
  }
}
