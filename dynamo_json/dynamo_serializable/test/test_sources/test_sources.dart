import 'package:dynamo_annotation/dynamo_annotation.dart';

@DynamoSerializable()
class ConfigurationImplicitDefaults {
  ConfigurationImplicitDefaults();
  ConfigurationImplicitDefaults.something();

  int? field;
}

// #CHANGE WHEN UPDATING json_annotation
@DynamoSerializable(
  anyMap: false,
  checked: false,
  constructor: '',
  createFactory: true,
  createFieldMap: false,
  disallowUnrecognizedKeys: false,
  fieldRename: FieldRename.none,
  ignoreUnannotated: false,
  includeIfNull: true,
  genericArgumentFactories: false,
)
class ConfigurationExplicitDefaults {
  int? field;
}

@DynamoSerializable(createFactory: false)
class IncludeIfNullAll {
  @DynamoKey(includeIfNull: true)
  int? number;
  String? str;
}

@DynamoSerializable()
class FromJsonOptionalParameters {
  final ChildWithFromJson child;

  FromJsonOptionalParameters(this.child);
}

class ChildWithFromJson {
  //ignore: avoid_unused_constructor_parameters
  ChildWithFromJson.fromDynamoJson(json, {initValue = false});

  Map<String, dynamic> toDynamoJson() => {};
}

@DynamoSerializable()
class ParentObject {
  int? number;
  String? str;
  ChildObject? child;
}

@DynamoSerializable()
class ChildObject {
  int? number;
  String? str;

  // ignore: avoid_unused_constructor_parameters
  ChildObject.fromDynamoJson(Map<String, dynamic> json);

  Map<String, dynamic> toDynamoJson() => {};
}

@DynamoSerializable()
class ParentObjectWithChildren {
  int? number;
  String? str;
  List<ChildObject>? children;
}

@DynamoSerializable()
class ParentObjectWithDynamicChildren {
  int? number;
  String? str;
  late List<dynamic> children;
}

@DynamoSerializable()
class TrivialNestedNullable {
  TrivialNestedNullable? child;
  int? otherField;

  TrivialNestedNullable();

  // ignore: avoid_unused_constructor_parameters
  TrivialNestedNullable.fromDynamoJson(Map<String, dynamic> json);

  Map<String, dynamic> toDynamoJson() => {};
}

@DynamoSerializable()
class TrivialNestedNonNullable {
  late TrivialNestedNonNullable child;
  int? otherField;

  TrivialNestedNonNullable();

  // ignore: avoid_unused_constructor_parameters
  TrivialNestedNonNullable.fromDynamoJson(Map<String, dynamic> json);

  Map<String, dynamic> toDynamoJson() => {};
}
