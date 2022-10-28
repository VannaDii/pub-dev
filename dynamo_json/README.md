# dynamo_json

A [Dart] [build_runner] to generate `toDynamoJson` and `fromDynamoJson` support methods, similar to [json_serializable], specifically supporting the [DynamoDB] [attribute values][dynamo_attributes].

## Installation

Add `dynamo_json` to your `pubspec.yaml` as shown below or run `dart pub add dynamo_json`

```yaml
dependencies:
  dynamo_json: ^0.0.1
```

## Usage

Import it in your [Dart] code and use it with your objects like in the example below. You can see the [generated code example][example] if you like.

```dart
import 'dart:convert'; // You'll need this if you use `dynamic` fields
import 'package:dynamo_json/dynamo_json.dart';

part 'example.g.dart';

@DynamoJson()
class Person {
  final String firstName, lastName;
  final DateTime? dateOfBirth;
  final List<Person> relatives;
  final dynamic stateBucket;

  // Explicitly ignore because it's explicitly set.
  // In general, `late` fields are supported.
  @DynamoIgnore()
  late final bool hasState;

  Person({
    required this.firstName,
    required this.lastName,
    this.dateOfBirth,
    this.relatives = const [],
    this.stateBucket,
  }) {
    hasState = stateBucket != null;
  }

  factory Person.fromDynamoJson(Map<String, dynamic> json) =>
      _$PersonFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);
}
```

### @DynamoJson()

Can only be used on classes to indicate the need for (de)serialization support.

### @DynamoIgnore()

Can only be used on fields to indicate they should not be considered by the generated code.

## Reference

For details, see the [documentation].

[dart]: https://dart.dev
[documentation]: https://pub-dev.dicatania.me/dynamo_json/doc/api
[build_runner]: https://pub.dev/packages/build_runner
[json_serializable]: https://pub.dev/packages/json_serializable
[dynamodb]: https://aws.amazon.com/dynamodb/
[dynamo_attributes]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html
[example]: ./example/
