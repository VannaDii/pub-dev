import 'package:meta/meta_meta.dart';

/// Indicates the supporting methods (`_$<ClassName>ToDynamoJson` and
/// `_$<ClassName>FromDynamoJson`) should be generated for a class.
/// Importing `dart:convert` will be required if you have `dynamic` fields
/// or if you use types not annotated with `@DynamoJson()`.
///
/// Example:
/// ```dart
/// @DynamoJson()
/// class Person {
///   final String firstName, lastName;
///   final DateTime? dateOfBirth;
///   final List<Person> relatives;
///   final dynamic stateBucket;
///
///   // Explicitly ignore because it's explicitly set.
///   // In general, `late` fields are supported.
///   @DynamoIgnore()
///   late final bool hasState;
///
///   Person({
///     required this.firstName,
///     required this.lastName,
///     this.dateOfBirth,
///     this.relatives = const [],
///     this.stateBucket,
///   }) {
///     hasState = stateBucket != null;
///   }
///
///   factory Person.fromDynamoJson(Map<String, dynamic> json) =>
///       _$PersonFromDynamoJson(json);
///
///   Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);
/// }
/// ```
/// Will the following code:
/// ```dart
/// Person _$PersonFromDynamoJson(Map<String, dynamic> json) => Person(
///       firstName: json['firstName']['S'] as String,
///       lastName: json['lastName']['S'] as String,
///       dateOfBirth: json['dateOfBirth']['NULL'] == true
///           ? null
///           : DateTime.parse(json['dateOfBirth']['S'] as String),
///       relatives: (json['relatives']['L'] as List<dynamic>)
///           .map((e) => Person.fromDynamoJson(e['M'] as Map<String, dynamic>))
///           .toList(),
///       stateBucket: jsonDecode(json['stateBucket']['S'] as String) as dynamic,
///     );
///
/// /// Creates a [Map]<String,dynamic> from an instance of [Person]
///
/// Map<String, dynamic> _$PersonToDynamoJson(Person instance) => {
///       'firstName': {'S': instance.firstName},
///       'lastName': {'S': instance.lastName},
///       'dateOfBirth': instance.dateOfBirth == null
///           ? {'NULL': true}
///           : {'S': instance.dateOfBirth?.toUtc().toIso8601String()},
///       'relatives': {
///         'L': instance.relatives.map((e) => {'M': e.toDynamoJson()}).toList()
///       },
///       'stateBucket': {'S': jsonEncode(instance.stateBucket)},
///     };
/// ```
@Target({TargetKind.classType})
class DynamoJson {
  const DynamoJson();
}

/// Indicates a field should be omitted from access in the generated code.
/// This tends to be most useful when using `late` fields which are set by
/// calculations in the constructor, or backing fields for 'property' accessor
/// use.
///
/// See [DynamoJson] for examples.
@Target({TargetKind.field, TargetKind.getter, TargetKind.setter})
class DynamoIgnore {
  const DynamoIgnore();
}
