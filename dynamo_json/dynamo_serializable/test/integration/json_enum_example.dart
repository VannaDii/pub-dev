import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'json_enum_example.g.dart';

@DynamoEnum(alwaysCreate: true)
enum StandAloneEnum {
  @DynamoValue('a')
  alpha,
  @DynamoValue('b')
  beta,
  @DynamoValue('g')
  gamma,
  @DynamoValue('d')
  delta,
}

Iterable<String> get standAloneEnumValues => _$StandAloneEnumEnumMap.values;

@DynamoEnum(alwaysCreate: true, fieldRename: FieldRename.kebab)
enum DayType {
  noGood,
  rotten,
  veryBad,
}

Iterable<String> get dayTypeEnumValues => _$DayTypeEnumMap.values;

@DynamoSerializable()
class Issue559Regression {
  Issue559Regression({
    required this.status,
  });

  factory Issue559Regression.fromDynamoJson(Map<String, dynamic> json) =>
      _$Issue559RegressionFromDynamoJson(json);

  @DynamoKey(
    disallowNullValue: true,
    required: true,
    unknownEnumValue: DynamoKey.nullForUndefinedEnumValue,
  )
  final Issue559RegressionEnum? status;
}

enum Issue559RegressionEnum {
  alpha,
  beta,
  gamma,
}

enum Issue1145RegressionEnum {
  alpha,
  beta,
  gamma,
}

@DynamoSerializable(
  createFactory: false,
)
class Issue1145RegressionA {
  Issue1145RegressionA({
    required this.status,
  });

  Map<String, dynamic> toDynamoJson() =>
      _$Issue1145RegressionAToDynamoJson(this);

  final Map<Issue1145RegressionEnum, bool> status;
}

@DynamoSerializable(
  createFactory: false,
)
class Issue1145RegressionB {
  Issue1145RegressionB({
    required this.status,
  });

  Map<String, dynamic> toDynamoJson() =>
      _$Issue1145RegressionBToDynamoJson(this);

  final List<Issue1145RegressionEnum?> status;
}
