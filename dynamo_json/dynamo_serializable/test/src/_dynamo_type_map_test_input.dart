import 'dart:convert';
import 'dart:typed_data';

import 'package:dynamo_annotation/dynamo_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldGenerate(r'''
''')
@DynamoSerializable()
class TypeMapTest {
  final String firstName, lastName;
  @DynamoKey(name: 'h')
  final int height;
  final DateTime dateOfBirth;
  final Duration lastRecord;
  final bool isArchived;
  final Uint8List someData; // Type check on _TypedIntList or List<int>

  TypeMapTest({
    required this.firstName,
    required this.lastName,
    required this.height,
    required this.dateOfBirth,
    required this.lastRecord,
    required this.isArchived,
    required this.someData,
  });

  //ignore: prefer_typing_uninitialized_variables,type_annotate_public_apis
  late var varType;
  late List<int> listOfInts;
  late dynamic dynamicType;
  late Map<String, int> counters;

  void foo() {

  }

  factory TypeMapTest.fromDynamoJson(Map<String, dynamic> json) => TypeMapTest(
        firstName: (json['firstName'] as Map<String, dynamic>)['S'] as String,
        lastName: (json['lastName'] as Map<String, dynamic>)['S'] as String,
        height: (json['h'] as Map<String, dynamic>)['N'] as int,
        dateOfBirth: DateTime.parse(
            (json['dateOfBirth'] as Map<String, dynamic>)['S'] as String),
        lastRecord: Duration(
            microseconds:
                (json['lastRecord'] as Map<String, dynamic>)['N'] as int),
        isArchived:
            (json['isArchived'] as Map<String, dynamic>)['BOOL'] as bool,
        someData: Uint8List(8),
      )
        ..varType = (json['varType'] as Map<String, dynamic>)['S']
        ..listOfInts =
            ((json['listOfInts'] as Map<String, dynamic>)['L'] as List<dynamic>)
                .map((e) => e as int)
                .toList()
        ..dynamicType = (json['dynamicType'] as Map<String, dynamic>)['S']
        ..counters = Map<String, int>.from(
          ((json['counters'] as Map<String, dynamic>)['M'] as Map).map(
            (k, e) => MapEntry(k, (e as Map)['N']),
          ),
        );

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{
        'firstName': {'S': firstName},
        'lastName': {'S': lastName},
        'h': {'N': height},
        'dateOfBirth': {'S': dateOfBirth.toIso8601String()},
        'lastRecord': {'N': lastRecord.inMicroseconds},
        'varType': {'S': jsonEncode(varType)},
        'listOfInts': {'L': listOfInts},
        'dynamicType': {'S': jsonEncode(dynamicType)},
        'counters': {
          'M': counters.map((k, e) => MapEntry(k, {'N': e}))
        },
      };
}
