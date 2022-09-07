import 'package:dynamo_json/json_annotation.dart';

@DynamoJson()
class ConfigurationImplicitDefaults {
  ConfigurationImplicitDefaults();
  ConfigurationImplicitDefaults.something();

  int? field;
}

// #CHANGE WHEN UPDATING json_annotation
@DynamoJson(
  anyMap: false,
  checked: false,
  constructor: '',
  createFactory: true,
  createToJson: true,
  createFieldMap: false,
  disallowUnrecognizedKeys: false,
  explicitToJson: false,
  fieldRename: FieldRename.none,
  ignoreUnannotated: false,
  includeIfNull: true,
  genericArgumentFactories: false,
)
class ConfigurationExplicitDefaults {
  int? field;
}

@DynamoJson(createFactory: false)
class IncludeIfNullAll {
  @DynamoKey(includeIfNull: true)
  int? number;
  String? str;
}

@DynamoJson(createToJson: false)
class FromJsonOptionalParameters {
  final ChildWithFromJson child;

  FromJsonOptionalParameters(this.child);
}

class ChildWithFromJson {
  //ignore: avoid_unused_constructor_parameters
  ChildWithFromJson.fromDynamoJson(json, {initValue = false});
}

@DynamoJson()
class ParentObject {
  int? number;
  String? str;
  ChildObject? child;
}

@DynamoJson()
class ChildObject {
  int? number;
  String? str;
}

@DynamoJson()
class ParentObjectWithChildren {
  int? number;
  String? str;
  List<ChildObject>? children;
}

@DynamoJson()
class ParentObjectWithDynamicChildren {
  int? number;
  String? str;
  late List<dynamic> children;
}

@DynamoJson(createFactory: false, explicitToJson: true)
class TrivialNestedNullable {
  TrivialNestedNullable? child;
  int? otherField;
}

@DynamoJson(createFactory: false, explicitToJson: true)
class TrivialNestedNonNullable {
  late TrivialNestedNonNullable child;
  int? otherField;
}
