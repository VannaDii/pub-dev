part of '_dynamo_json_test_input.dart';

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerNoneToDynamoJson(FieldNamerNone instance) =>
    <String, dynamic>{
      'theField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoJson(fieldRename: FieldRename.none, createFactory: false)
class FieldNamerNone {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerKebabToDynamoJson(FieldNamerKebab instance) =>
    <String, dynamic>{
      'the-field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoJson(fieldRename: FieldRename.kebab, createFactory: false)
class FieldNamerKebab {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerPascalToDynamoJson(
        FieldNamerPascal instance) =>
    <String, dynamic>{
      'TheField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoJson(fieldRename: FieldRename.pascal, createFactory: false)
class FieldNamerPascal {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerSnakeToDynamoJson(FieldNamerSnake instance) =>
    <String, dynamic>{
      'the_field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoJson(fieldRename: FieldRename.snake, createFactory: false)
class FieldNamerSnake {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerScreamingSnakeToDynamoJson(
        FieldNamerScreamingSnake instance) =>
    <String, dynamic>{
      'THE_FIELD': instance.theField,
      'nameOverride': instance.nameOverride,
    };
''')
@DynamoJson(fieldRename: FieldRename.screamingSnake, createFactory: false)
class FieldNamerScreamingSnake {
  late String theField;

  @DynamoKey(name: 'nameOverride')
  late String nameOverride;
}
