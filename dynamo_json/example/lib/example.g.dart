// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

Person _$PersonFromDynamoJson(Map<String, dynamic> json) => Person(
      (json['firstName'] as Map<String, dynamic>)['S'] as String,
      (json['lastName'] as Map<String, dynamic>)['S'] as String,
      DateTime.parse(
          (json['date-of-birth'] as Map<String, dynamic>)['S'] as String),
      middleName: (json['middleName'] as Map<String, dynamic>)['S'] as String?,
      lastOrder: (json['last-order'] as Map<String, dynamic>)['S'] == null
          ? null
          : DateTime.parse(
              (json['last-order'] as Map<String, dynamic>)['S'] as String),
      orders: ((json['orders'] as Map<String, dynamic>)['L'] as List<dynamic>?)
          ?.map((e) => Order.fromDynamoJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonToDynamoJson(Person instance) {
  final val = <String, dynamic>{
    'firstName': {'S': instance.firstName},
  };

  void writeNotNull(String key, String dynamoType, dynamic value) {
    if (value != null) {
      val[key] = {dynamoType: value};
    }
  }

  writeNotNull('middleName', 'S', instance.middleName);
  val['lastName'] = {'S': instance.lastName};
  val['date-of-birth'] = {'S': instance.dateOfBirth.toIso8601String()};
  val['last-order'] = {'S': instance.lastOrder?.toIso8601String()};
  val['orders'] = {'L': instance.orders.map((e) => e.toDynamoJson()).toList()};
  return val;
}

Order _$OrderFromDynamoJson(Map<String, dynamic> json) => Order(
      Order._dateTimeFromEpochUs(
          (json['date'] as Map<String, dynamic>)['S'] as int),
    )
      ..count = (json['count'] as Map<String, dynamic>)['N'] as int?
      ..itemNumber = (json['itemNumber'] as Map<String, dynamic>)['N'] as int?
      ..isRushed = (json['isRushed'] as Map<String, dynamic>)['B'] as bool?
      ..item = (json['item'] as Map<String, dynamic>)['M'] == null
          ? null
          : Item.fromDynamoJson((json['item'] as Map<String, dynamic>)['M']
              as Map<String, dynamic>)
      ..prepTime = Order._durationFromMilliseconds(
          (json['prep-time'] as Map<String, dynamic>)['N'] as int?);

Map<String, dynamic> _$OrderToDynamoJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, String dynamoType, dynamic value) {
    if (value != null) {
      val[key] = {dynamoType: value};
    }
  }

  writeNotNull('count', 'N', instance.count);
  writeNotNull('itemNumber', 'N', instance.itemNumber);
  writeNotNull('isRushed', 'B', instance.isRushed);
  writeNotNull('item', 'M', instance.item?.toDynamoJson());
  writeNotNull(
      'prep-time', 'N', Order._durationToMilliseconds(instance.prepTime));
  writeNotNull('date', 'S', Order._dateTimeToEpochUs(instance.date));
  return val;
}

Item _$ItemFromDynamoJson(Map<String, dynamic> json) => Item()
  ..count = (json['count'] as Map<String, dynamic>)['N'] as int?
  ..itemNumber = (json['itemNumber'] as Map<String, dynamic>)['N'] as int?
  ..isRushed = (json['isRushed'] as Map<String, dynamic>)['B'] as bool?;

Map<String, dynamic> _$ItemToDynamoJson(Item instance) => <String, dynamic>{
      'count': {'N': instance.count},
      'itemNumber': {'N': instance.itemNumber},
      'isRushed': {'B': instance.isRushed},
    };

// **************************************************************************
// DynamoLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'glossary': {
    'title': 'example glossary',
    'GlossDiv': {
      'title': 'S',
      'GlossList': {
        'GlossEntry': {
          'ID': 'SGML',
          'SortAs': 'SGML',
          'GlossTerm': 'Standard Generalized Markup Language',
          'Acronym': 'SGML',
          'Abbrev': 'ISO 8879:1986',
          'GlossDef': {
            'para': 'A meta-markup language, used to create markup languages.',
            'GlossSeeAlso': ['GML', 'XML']
          },
          'GlossSee': 'markup'
        }
      }
    }
  }
};
