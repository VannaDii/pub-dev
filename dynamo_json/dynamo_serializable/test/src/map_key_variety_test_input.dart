part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
MapKeyVariety _$MapKeyVarietyFromDynamoJson(Map<String, dynamic> json) =>
    MapKeyVariety()
      ..intIntMap = (json['intIntMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int),
      );

Map<String, dynamic> _$MapKeyVarietyToDynamoJson(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap.map((k, e) => MapEntry(k.toString(), e)),
    };
''')
@DynamoSerializable()
class MapKeyVariety {
  late Map<int, int> intIntMap;
}

@ShouldThrow(
  r'''
Could not generate `fromDynamoJson` code for `value` because of type `Object?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''',
)
@DynamoSerializable()
class MapKeyNoNullableObject {
  late Map<Object?, int> value;
}

@ShouldThrow(
  r'''
Could not generate `fromDynamoJson` code for `value` because of type `String?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''',
)
@DynamoSerializable()
class MapKeyNoNullableString {
  late Map<String?, int> value;
}

@ShouldThrow(r'''
Could not generate `fromDynamoJson` code for `value` because of type `int?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''')
@DynamoSerializable()
class MapKeyNoNullableInt {
  late Map<int?, int> value;
}
