import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'field_map_example.g.dart';

@DynamoSerializable(createFieldMap: true, fieldRename: FieldRename.kebab)
class Model {
  Model({
    required this.firstName,
    required this.lastName,
    this.ignoredName,
  });

  factory Model.fromDynamoJson(Map<String, Object?> json) =>
      _$ModelFromDynamoJson(json);

  final String firstName;

  @DynamoKey(name: 'LAST_NAME')
  final String lastName;

  @DynamoKey(ignore: true)
  final String? ignoredName;

  String get fullName => '$firstName $lastName';

  Map<String, Object?> toDynamoJson() => _$ModelToDynamoJson(this);
}

const modelFieldMap = _$ModelFieldMap;

@DynamoSerializable(
  createFieldMap: true,
  fieldRename: FieldRename.kebab,
  createFactory: false,
)
class _PrivateModel {
  _PrivateModel(this.fullName);

  final String fullName;

  Map<String, Object?> toDynamoJson() => _$PrivateModelToDynamoJson(this);
}

const privateModelFieldMap = _$PrivateModelFieldMap;
