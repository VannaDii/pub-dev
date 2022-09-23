// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamo_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamoSerializable _$JsonSerializableFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'JsonSerializable',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'any_map',
            'checked',
            'constructor',
            'create_factory',
            'create_field_map',
            'create_to_dynamo_json',
            'disallow_unrecognized_keys',
            'explicit_to_dynamo_json',
            'field_rename',
            'generic_argument_factories',
            'ignore_unannotated',
            'include_if_null'
          ],
        );
        final val = DynamoSerializable(
          anyMap: $checkedConvert('any_map', (v) => v as bool?),
          checked: $checkedConvert('checked', (v) => v as bool?),
          constructor: $checkedConvert('constructor', (v) => v as String?),
          createFieldMap:
              $checkedConvert('create_field_map', (v) => v as bool?),
          createFactory: $checkedConvert('create_factory', (v) => v as bool?),
          createToDynamoJson:
              $checkedConvert('create_to_dynamo_json', (v) => v as bool?),
          disallowUnrecognizedKeys:
              $checkedConvert('disallow_unrecognized_keys', (v) => v as bool?),
          explicitToDynamoJson:
              $checkedConvert('explicit_to_dynamo_json', (v) => v as bool?),
          fieldRename: $checkedConvert('field_rename',
              (v) => $enumDecodeNullable(_$FieldRenameEnumMap, v)),
          ignoreUnannotated:
              $checkedConvert('ignore_unannotated', (v) => v as bool?),
          includeIfNull: $checkedConvert('include_if_null', (v) => v as bool?),
          genericArgumentFactories:
              $checkedConvert('generic_argument_factories', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'anyMap': 'any_map',
        'createFieldMap': 'create_field_map',
        'createFactory': 'create_factory',
        'createToDynamoJson': 'create_to_dynamo_json',
        'disallowUnrecognizedKeys': 'disallow_unrecognized_keys',
        'explicitToDynamoJson': 'explicit_to_dynamo_json',
        'fieldRename': 'field_rename',
        'ignoreUnannotated': 'ignore_unannotated',
        'includeIfNull': 'include_if_null',
        'genericArgumentFactories': 'generic_argument_factories'
      },
    );

Map<String, dynamic> _$JsonSerializableToJson(DynamoSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'constructor': instance.constructor,
      'create_factory': instance.createFactory,
      'create_field_map': instance.createFieldMap,
      'create_to_dynamo_json': instance.createToDynamoJson,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'explicit_to_dynamo_json': instance.explicitToDynamoJson,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
  FieldRename.screamingSnake: 'screamingSnake',
};
