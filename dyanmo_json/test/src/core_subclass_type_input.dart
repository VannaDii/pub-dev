part of '_dynamo_json_test_input.dart';

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `mapView`.
To support the type `MapView` you can:
$converterOrKeyInstructions''',
  element: 'mapView',
)
@DynamoJson(createToJson: false)
class UnsupportedMapField {
  late MapView mapView;
}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `listView`.
To support the type `UnmodifiableListView` you can:
$converterOrKeyInstructions''',
  element: 'listView',
)
@DynamoJson(createToJson: false)
class UnsupportedListField {
  late UnmodifiableListView listView;
}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customSet`.
To support the type `_CustomSet` you can:
$converterOrKeyInstructions''',
  element: 'customSet',
)
@DynamoJson(createToJson: false)
class UnsupportedSetField {
  late _CustomSet customSet;
}

abstract class _CustomSet implements Set {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customDuration`.
To support the type `_CustomDuration` you can:
$converterOrKeyInstructions''',
  element: 'customDuration',
)
@DynamoJson(createToJson: false)
class UnsupportedDurationField {
  late _CustomDuration customDuration;
}

abstract class _CustomDuration implements Duration {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customUri`.
To support the type `_CustomUri` you can:
$converterOrKeyInstructions''',
  element: 'customUri',
)
@DynamoJson(createToJson: false)
class UnsupportedUriField {
  _CustomUri? customUri;
}

abstract class _CustomUri implements Uri {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customDateTime`.
To support the type `_CustomDateTime` you can:
$converterOrKeyInstructions''',
  element: 'customDateTime',
)
@DynamoJson(createToJson: false)
class UnsupportedDateTimeField {
  late _CustomDateTime customDateTime;
}

abstract class _CustomDateTime implements DateTime {}
