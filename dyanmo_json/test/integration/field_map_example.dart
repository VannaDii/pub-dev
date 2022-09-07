import 'package:dynamo_json/json_annotation.dart';

part 'field_map_example.g.dart';

@DynamoJson(createFieldMap: true, fieldRename: FieldRename.kebab)
class Model {
  Model({
    required this.firstName,
    required this.lastName,
    this.ignoredName,
  });

  factory Model.fromJson(Map<String, Object?> json) => _$ModelFromJson(json);

  final String firstName;

  @DynamoKey(name: 'LAST_NAME')
  final String lastName;

  @DynamoKey(ignore: true)
  final String? ignoredName;

  String get fullName => '$firstName $lastName';

  Map<String, Object?> toJson() => _$ModelToJson(this);
}

const modelFieldMap = _$ModelFieldMap;

@DynamoJson(
  createFieldMap: true,
  fieldRename: FieldRename.kebab,
  createFactory: false,
)
class _PrivateModel {
  _PrivateModel(this.fullName);

  final String fullName;

  Map<String, Object?> toJson() => _$PrivateModelToJson(this);
}

const privateModelFieldMap = _$PrivateModelFieldMap;
