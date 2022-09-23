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
  createToDynamoJson: true,
  createFieldMap: false,
  disallowUnrecognizedKeys: false,
  explicitToDynamoJson: false,
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

@DynamoSerializable(createToDynamoJson: false)
class FromJsonOptionalParameters {
  final ChildWithFromJson child;

  FromJsonOptionalParameters(this.child);
}

class ChildWithFromJson {
  //ignore: avoid_unused_constructor_parameters
  ChildWithFromJson.fromDynamoJson(json, {initValue = false});
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

@DynamoSerializable(createFactory: false, explicitToDynamoJson: true)
class TrivialNestedNullable {
  TrivialNestedNullable? child;
  int? otherField;
}

@DynamoSerializable(createFactory: false, explicitToDynamoJson: true)
class TrivialNestedNonNullable {
  late TrivialNestedNonNullable child;
  int? otherField;
}
