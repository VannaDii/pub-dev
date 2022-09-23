part of '_json_serializable_test_input.dart';

@ShouldGenerate(
  r'''
JustSetter _$JustSetterFromDynamoJson(Map<String, dynamic> json) =>
    JustSetter();

Map<String, dynamic> _$JustSetterToDynamoJson(JustSetter instance) =>
    <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetter.someSetter'],
)
@DynamoSerializable()
class JustSetter {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
JustSetterNoToJson _$JustSetterNoToJsonFromDynamoJson(
        Map<String, dynamic> json) =>
    JustSetterNoToJson();
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoToJson.someSetter'],
)
@DynamoSerializable(createToDynamoJson: false)
class JustSetterNoToJson {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$JustSetterNoFromJsonToDynamoJson(
        JustSetterNoFromJson instance) =>
    <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoFromJson.someSetter'],
)
@DynamoSerializable(createFactory: false)
class JustSetterNoFromJson {
  set someSetter(Object name) {}
}
