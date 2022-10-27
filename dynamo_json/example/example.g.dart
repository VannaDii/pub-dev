// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// DynamoJsonGenerator
// **************************************************************************

/// Creates an instance of [Person] from the values in [json]

Person _$PersonFromDynamoJson(Map<String, dynamic> json) => Person(
      firstName: json['firstName']['S'] as String,
      lastName: json['lastName']['S'] as String,
      dateOfBirth: json['dateOfBirth']['NULL'] == true
          ? null
          : DateTime.parse(json['dateOfBirth']['S'] as String),
      relatives: (json['relatives']['L'] as List<dynamic>)
          .map((e) => Person.fromDynamoJson(e['M'] as Map<String, dynamic>))
          .toList(),
      stateBucket: jsonDecode(json['stateBucket']['S'] as String) as dynamic,
    );

/// Creates a [Map]<String,dynamic> from an instance of [Person]

Map<String, dynamic> _$PersonToDynamoJson(Person instance) => {
      'firstName': {'S': instance.firstName},
      'lastName': {'S': instance.lastName},
      'dateOfBirth': instance.dateOfBirth == null
          ? {'NULL': true}
          : {'S': instance.dateOfBirth?.toUtc().toIso8601String()},
      'relatives': {
        'L': instance.relatives.map((e) => {'M': e.toDynamoJson()}).toList()
      },
      'stateBucket': {'S': jsonEncode(instance.stateBucket)},
    };
