import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dynamo_json/src/utils.dart';
import 'all.dart';

enum DynamoType {
  /// Signals that we need to call `toJson` and store the result as a string.
  unknown,

  /// Signals the a type is recognized as custom and has `toDynamoJson` and
  /// `fromDynamoJson` available for execution.
  custom,

  /// An attribute of type Binary for base64-encoded binary data object.
  ///
  /// Example: `"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"`
  B,

  /// An attribute of type Boolean for [bool] values.
  ///
  /// Example: `"BOOL": true`
  // ignore: constant_identifier_names
  BOOL,

  /// An attribute of type Binary Set for an Array of Base64-encoded binary
  /// data objects.
  ///
  /// Example: `"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]`
  // ignore: constant_identifier_names
  BS,

  /// An attribute of type [List] for an `Array` of attribute value objects.
  ///
  /// Example: `"L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}]`
  L,

  /// An attribute of type Map for a [String] to attribute value object map.
  ///
  /// Example: `"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}`
  M,

  /// An attribute of type Number for [int], [double], etc.
  /// Numbers are sent across the network to DynamoDB as strings, to maximize
  /// compatibility across languages and libraries. However, DynamoDB treats
  /// them as number type attributes for mathematical operations.
  ///
  /// Example: `"N": "123.45"`
  N,

  /// An attribute of type Number Set for sets of [int], [double], etc.
  /// Numbers are sent across the network to DynamoDB as strings, to maximize
  /// compatibility across languages and libraries. However, DynamoDB treats
  /// them as number type attributes for mathematical operations.
  ///
  /// Example: `"NS": ["42.2", "-19", "7.5", "3.14"]`
  // ignore: constant_identifier_names
  NS,

  /// An attribute of type Null for `null` values of all kinds.
  ///
  /// Example: `"NULL": true`
  // ignore: constant_identifier_names
  NULL,

  /// An attribute of type [String].
  ///
  /// Example: `"S": "Hello"`
  S,

  /// An attribute of type [String] Set for [Set]s or [String]s.
  ///
  /// Example: `"SS": ["Giraffe", "Hippo" ,"Zebra"]`
  // ignore: constant_identifier_names
  SS,
}

class DartMeta {
  final DartType type;
  final bool isLate;
  late final bool isGeneric;
  late final String baseName;
  late final String codeName;
  late final List<DartType> typeArgs;
  late final List<String> typeArgNames;
  late final String nullSuffix;
  late final bool isNullable;

  DartMeta._({
    required this.type,
    this.isLate = false,
  }) {
    nullSuffix = nullSuffixFor(type);
    isNullable = nullSuffix.isNotEmpty;
    isGeneric = type is ParameterizedType;

    typeArgs = type is ParameterizedType
        ? (type as ParameterizedType).typeArguments
        : const [];
    typeArgNames = typeArgs
        .map((e) => e.getDisplayString(
            withNullability: e.nullabilitySuffix != NullabilitySuffix.none))
        .toList();
    baseName = baseNameForType(type);
    codeName = type is ParameterizedType
        ? type.getDisplayString(withNullability: true).split('<').first
        : type.getDisplayString(withNullability: true);
  }

  factory DartMeta.forType(DartType type) => DartMeta._(type: type);

  factory DartMeta.forElement(FieldElement field) =>
      DartMeta._(type: field.type, isLate: field.isLate);
}

class DynamoMeta extends DartMeta {
  late final DynamoType dynamoType;

  DynamoMeta._({
    required DartType type,
    bool isLate = false,
  }) : super._(type: type, isLate: isLate) {
    dynamoType = dynamoTypeFor(type);
  }

  String get dynamoTypeName => dynamoType.name;

  factory DynamoMeta.forType(DartType type) => DynamoMeta._(type: type);

  factory DynamoMeta.forField(FieldElement field) =>
      DynamoMeta._(type: field.type, isLate: field.isLate);

  /// Wraps an expression (ex: `instance.foo`) for use in a toJson call.
  String wrapTo(String expression) {
    if (isIterable) {
      return wrapIterableTo(expression);
    } else if (isParsable) {
      return wrapParsableTo(expression);
    } else if (isDecorated) {
      return wrapDecoratedTo(expression);
    } else if (isDynamoUnknown) {
      return wrapJsonTo(expression);
    }

    final result = "{ '$dynamoTypeName': $expression }";
    return result;
  }

  /// Wraps an expression (ex: `json['foo']`) for use in a fromJson call.
  String wrapFrom(String expression) {
    if (isIterable) {
      return wrapIterableFrom(expression);
    } else if (isParsable) {
      return wrapParsableFrom(expression);
    } else if (isDecorated) {
      return wrapDecoratedFrom(expression);
    } else if (isDynamoUnknown) {
      return wrapJsonFrom(expression);
    } else if (isLate) {
      return wrapJsonFrom(expression);
    }

    final result = "$expression['$dynamoTypeName'] as $codeName";
    return result;
  }

  String nullHandlerToOrEmpty(String expression) => isNullable
      ? "${expression.replaceAll(nullSuffix, '')} == null ? {'NULL': true} : "
      : '';

  String nullHandlerFromOrEmpty(String expression) =>
      isNullable ? "$expression['NULL'] == true ? null : " : '';
}

/// Resolves [field].type to the appropriate DynamoDB type.
DynamoMeta dynamoMetaFor(FieldElement field) {
  return DynamoMeta.forField(field);
}

/// Gets the [DynamoType] for a [DartType].
///
/// See: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html
DynamoType dynamoTypeFor(DartType type) {
  final baseName = baseNameForType(type);
  switch (baseName) {
    case 'Binary':
      return DynamoType.B;
    case 'bool':
      return DynamoType.BOOL;
    case 'BinarySet':
      return DynamoType.BS;
    case 'List':
      return DynamoType.L;
    case 'Map':
      return DynamoType.M;
    case 'int':
    case 'double':
      return DynamoType.N;
    case 'NumberSet':
      return DynamoType.NS;
    case 'Null':
      return DynamoType.NULL;
    case 'String':
    case 'DateTime':
      return DynamoType.S;
    case 'StringSet':
      return DynamoType.SS;
    default:
      {
        if (hasToFromDynamoJson(type)) {
          return DynamoType.M;
        }
        return DynamoType.unknown;
      }
  }
}
