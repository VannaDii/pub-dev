import 'package:dynamo_json/src/dynamo_json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldGenerate(r'''
/// Creates an instance of [SupportedTypesClass] from the values in [json]

SupportedTypesClass _$SupportedTypesClassFromDynamoJson(
        Map<String, dynamic> json) =>
    SupportedTypesClass(
      int.parse(json['number']['N'] as String),
      json['name']['S'] as String,
      expiry: DateTime.parse(json['expiry']['S'] as String),
      hasData: json['hasData']['BOOL'] as bool,
      dateOfBirth: json['dateOfBirth']['NULL'] == true
          ? null
          : DateTime.parse(json['dateOfBirth']['S'] as String),
      child: json['child']['NULL'] == true
          ? null
          : SupportedTypesClass.fromDynamoJson(
              json['child']['M'] as Map<String, dynamic>),
      strings: (json['strings']['L'] as List<dynamic>)
          .map((e) => e['S'] as String)
          .toList(),
      numbers: (json['numbers']['L'] as List<dynamic>)
          .map((e) => int.parse(e['N'] as String))
          .toList(),
      appointments: (json['appointments']['L'] as List<dynamic>)
          .map((e) => DateTime.parse(e['S'] as String))
          .toList(),
    )..flags = (json['flags']['L'] as List<dynamic>)
        .map((e) => e['BOOL'] as bool)
        .toList();

/// Creates a [Map]<String,dynamic> from an instance of [SupportedTypesClass]

Map<String, dynamic> _$SupportedTypesClassToDynamoJson(
        SupportedTypesClass instance) =>
    {
      'number': {'N': instance.number.toString()},
      'name': {'S': instance.name},
      'expiry': {'S': instance.expiry.toUtc().toIso8601String()},
      'hasData': {'BOOL': instance.hasData},
      'dateOfBirth': instance.dateOfBirth == null
          ? {'NULL': true}
          : {'S': instance.dateOfBirth?.toUtc().toIso8601String()},
      'child': instance.child == null
          ? {'NULL': true}
          : {'M': instance.child?.toDynamoJson()},
      'strings': {
        'L': instance.strings.map((e) => {'S': e}).toList()
      },
      'numbers': {
        'L': instance.numbers.map((e) => {'N': e.toString()}).toList()
      },
      'appointments': {
        'L': instance.appointments
            .map((e) => {'S': e.toUtc().toIso8601String()})
            .toList()
      },
      'flags': {
        'L': instance.flags.map((e) => {'BOOL': e}).toList()
      },
    };
''')
@DynamoJson()
class SupportedTypesClass extends Equatable {
  final int number;
  final String name;
  final DateTime expiry;
  final bool hasData;

  final DateTime? dateOfBirth;
  final SupportedTypesClass? child;

  final List<String> strings;
  final List<int> numbers;
  final List<DateTime> appointments;
  late final List<bool> flags;

  SupportedTypesClass(
    this.number,
    this.name, {
    required this.strings,
    required this.numbers,
    required this.expiry,
    required this.hasData,
    required this.appointments,
    required this.dateOfBirth,
    this.child,
  });

  @override
  @DynamoIgnore()
  List<Object?> get props => [];

  factory SupportedTypesClass.fromDynamoJson(Map<String, dynamic> json) =>
      SupportedTypesClass(
        42,
        'Gio',
        strings: const [],
        numbers: const [],
        expiry: DateTime.now(),
        hasData: false,
        appointments: const [],
        dateOfBirth: DateTime.now(),
      )..flags = const [];

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}
