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
