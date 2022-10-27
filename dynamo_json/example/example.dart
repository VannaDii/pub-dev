import 'dart:convert';
import 'package:dynamo_json/dynamo_json.dart';

part 'example.g.dart';

@DynamoJson()
class Person {
  /// The generated code assumes these values exist in JSON.
  final String firstName, lastName;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  final List<Person> relatives;

  final dynamic stateBucket;

  Person({
    required this.firstName,
    required this.lastName,
    this.dateOfBirth,
    this.relatives = const [],
    this.stateBucket,
  });

  factory Person.fromDynamoJson(Map<String, dynamic> json) =>
      _$PersonFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);
}
