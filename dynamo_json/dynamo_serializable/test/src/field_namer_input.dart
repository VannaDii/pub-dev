part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerNoneToJson(FieldNamerNone instance) =>
    <String, dynamic>{
      'theField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoSerializable(fieldRename: FieldRename.none, createFactory: false)
class FieldNamerNone {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerKebabToJson(FieldNamerKebab instance) =>
    <String, dynamic>{
      'the-field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoSerializable(fieldRename: FieldRename.kebab, createFactory: false)
class FieldNamerKebab {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerPascalToJson(FieldNamerPascal instance) =>
    <String, dynamic>{
      'TheField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoSerializable(fieldRename: FieldRename.pascal, createFactory: false)
class FieldNamerPascal {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerSnakeToJson(FieldNamerSnake instance) =>
    <String, dynamic>{
      'the_field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@DynamoSerializable(fieldRename: FieldRename.snake, createFactory: false)
class FieldNamerSnake {
  late String theField;

  @DynamoKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerScreamingSnakeToJson(
        FieldNamerScreamingSnake instance) =>
    <String, dynamic>{
      'THE_FIELD': instance.theField,
      'nameOverride': instance.nameOverride,
    };
''')
@DynamoSerializable(
    fieldRename: FieldRename.screamingSnake, createFactory: false)
class FieldNamerScreamingSnake {
  late String theField;

  @DynamoKey(name: 'nameOverride')
  late String nameOverride;
}
