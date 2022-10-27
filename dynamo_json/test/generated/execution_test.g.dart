// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execution_test.dart';

// **************************************************************************
// DynamoJsonGenerator
// **************************************************************************

/// Creates an instance of [FullyDecoratedClass] from the values in [json]

FullyDecoratedClass<T> _$FullyDecoratedClassFromDynamoJson<T>(
        Map<String, dynamic> json) =>
    FullyDecoratedClass<T>(
      jsonDecode(json['data']['S'] as String) as T,
    )..hasData = jsonDecode(json['hasData']['S'] as String) as bool;

/// Creates a [Map]<String,dynamic> from an instance of [FullyDecoratedClass]

Map<String, dynamic> _$FullyDecoratedClassToDynamoJson<T>(
        FullyDecoratedClass<T> instance) =>
    {
      'data': {'S': jsonEncode(instance.data)},
      'hasData': {'BOOL': instance.hasData},
    };

/// Creates an instance of [SupportedSuperClass] from the values in [json]

SupportedSuperClass _$SupportedSuperClassFromDynamoJson(
        Map<String, dynamic> json) =>
    SupportedSuperClass(
      greatJob: FullyDecoratedClass.fromDynamoJson(
          json['greatJob']['M'] as Map<String, dynamic>),
    );

/// Creates a [Map]<String,dynamic> from an instance of [SupportedSuperClass]

Map<String, dynamic> _$SupportedSuperClassToDynamoJson(
        SupportedSuperClass instance) =>
    {
      'greatJob': {'M': instance.greatJob.toDynamoJson()},
    };

/// Creates an instance of [SupportedClass] from the values in [json]

SupportedClass _$SupportedClassFromDynamoJson(Map<String, dynamic> json) =>
    SupportedClass(
      greatJob: FullyDecoratedClass.fromDynamoJson(
          json['greatJob']['M'] as Map<String, dynamic>),
      goodJob: FullyDecoratedClass.fromDynamoJson(
          json['goodJob']['M'] as Map<String, dynamic>),
    );

/// Creates a [Map]<String,dynamic> from an instance of [SupportedClass]

Map<String, dynamic> _$SupportedClassToDynamoJson(SupportedClass instance) => {
      'greatJob': {'M': instance.greatJob.toDynamoJson()},
      'goodJob': {'M': instance.goodJob.toDynamoJson()},
    };

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
      relatives: json['relatives']['NULL'] == true
          ? null
          : (json['relatives']['L'] as List<dynamic>)
              .map((e) => SupportedTypesClass.fromDynamoJson(
                  e['M'] as Map<String, dynamic>))
              .toList(),
      strings: (json['strings']['L'] as List<dynamic>)
          .map((e) => e['S'] as String)
          .toList(),
      numbers: (json['numbers']['L'] as List<dynamic>)
          .map((e) => int.parse(e['N'] as String))
          .toList(),
      appointments: (json['appointments']['L'] as List<dynamic>)
          .map((e) => DateTime.parse(e['S'] as String))
          .toList(),
      flags: (json['flags']['L'] as List<dynamic>)
          .map((e) => e['BOOL'] as bool)
          .toList(),
    )..sumOfNumbers = int.parse(json['sumOfNumbers']['N'] as String);

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
      'relatives': instance.relatives == null
          ? {'NULL': true}
          : {
              'L': instance.relatives
                  ?.map((e) => {'M': e.toDynamoJson()})
                  .toList()
            },
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
      'sumOfNumbers': {'N': instance.sumOfNumbers.toString()},
    };
