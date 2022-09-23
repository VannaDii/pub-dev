part of '_json_serializable_test_input.dart';

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `mapView`.
To support the type `MapView` you can:
$converterOrKeyInstructions''',
  element: 'mapView',
)
@DynamoSerializable(createToDynamoJson: false)
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
@DynamoSerializable(createToDynamoJson: false)
class UnsupportedListField {
  late UnmodifiableListView listView;
}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customSet`.
To support the type `CustomSet` you can:
$converterOrKeyInstructions''',
  element: 'customSet',
)
@DynamoSerializable(createToDynamoJson: false)
class UnsupportedSetField {
  late CustomSet customSet;
}

abstract class CustomSet implements Set {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customDuration`.
To support the type `CustomDuration` you can:
$converterOrKeyInstructions''',
  element: 'customDuration',
)
@DynamoSerializable(createToDynamoJson: false)
class UnsupportedDurationField {
  late CustomDuration customDuration;
}

abstract class CustomDuration implements Duration {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customUri`.
To support the type `CustomUri` you can:
$converterOrKeyInstructions''',
  element: 'customUri',
)
@DynamoSerializable(createToDynamoJson: false)
class UnsupportedUriField {
  CustomUri? customUri;
}

abstract class CustomUri implements Uri {}

@ShouldThrow(
  '''
Could not generate `fromDynamoJson` code for `customDateTime`.
To support the type `CustomDateTime` you can:
$converterOrKeyInstructions''',
  element: 'customDateTime',
)
@DynamoSerializable(createToDynamoJson: false)
class UnsupportedDateTimeField {
  late CustomDateTime customDateTime;
}

abstract class CustomDateTime implements DateTime {}
