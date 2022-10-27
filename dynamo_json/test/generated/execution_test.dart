import "dart:convert";

import 'package:dynamo_json/src/dynamo_json_annotation.dart';
import 'package:test/test.dart';

part 'execution_test.g.dart';

@DynamoJson()
class FullyDecoratedClass {
  const FullyDecoratedClass();

  factory FullyDecoratedClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$FullyDecoratedClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() =>
      _$FullyDecoratedClassToDynamoJson(this);
}

@DynamoJson()
class SupportedSuperClass {
  final FullyDecoratedClass greatJob;

  SupportedSuperClass({required this.greatJob});

  factory SupportedSuperClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$SupportedSuperClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() =>
      _$SupportedSuperClassToDynamoJson(this);
}

@DynamoJson()
class SupportedClass extends SupportedSuperClass {
  final FullyDecoratedClass goodJob;

  SupportedClass({
    required FullyDecoratedClass greatJob,
    required this.goodJob,
  }) : super(greatJob: greatJob);

  factory SupportedClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$SupportedClassFromDynamoJson(json);

  @override
  Map<String, dynamic> toDynamoJson() => _$SupportedClassToDynamoJson(this);
}

@DynamoJson()
class SupportedTypesClass {
  final int number;
  final String name;
  final DateTime expiry;
  final bool hasData;

  final DateTime? dateOfBirth;
  final SupportedTypesClass? child;
  final List<SupportedTypesClass>? relatives;

  final List<String> strings;
  final List<int> numbers;
  final List<DateTime> appointments;
  final List<bool> flags;

  late final int sumOfNumbers;

  SupportedTypesClass(
    this.number,
    this.name, {
    required this.strings,
    required this.numbers,
    required this.expiry,
    required this.hasData,
    required this.appointments,
    required this.flags,
    required this.dateOfBirth,
    this.child,
    this.relatives,
  }) {
    sumOfNumbers = numbers.reduce((a, b) => a + b);
  }

  factory SupportedTypesClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$SupportedTypesClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() =>
      _$SupportedTypesClassToDynamoJson(this);
}

void main() {
  group('Execution Tests', () {
    test('Test Basic Supported Types', () {
      final instance1 = SupportedTypesClass(
        42,
        'Gio',
        expiry: DateTime.now(),
        hasData: true,
        strings: const ['foo', 'bar'],
        numbers: const [42, 40, 38],
        appointments: [DateTime.now(), DateTime.now().toUtc()],
        flags: const [true, false, true, false],
        dateOfBirth: DateTime.now(),
      );

      final jsonData1 = jsonEncode(instance1.toDynamoJson());
      expect(jsonData1, isNotEmpty);

      final instance2 = SupportedTypesClass.fromDynamoJson(
          jsonDecode(jsonData1) as Map<String, dynamic>);
      expect(instance2, isA<SupportedTypesClass>());

      final jsonData2 = jsonEncode(instance2.toDynamoJson());
      expect(jsonData2, isNotEmpty);
      expect(jsonData2, equals(jsonData1));
    });
  });
}
