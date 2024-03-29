import "dart:convert";

import 'package:dynamo_json/src/dynamo_json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:test/test.dart';

part 'execution_test.g.dart';

@DynamoJson()
class FullyDecoratedClass<T> extends Equatable {
  final T data;
  late final bool hasData;
  late final bool needsMoreData;

  FullyDecoratedClass(this.data) {
    hasData = true;
  }

  factory FullyDecoratedClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$FullyDecoratedClassFromDynamoJson<T>(json);

  Map<String, dynamic> toDynamoJson() =>
      _$FullyDecoratedClassToDynamoJson(this);

  @override
  @DynamoIgnore()
  List<Object?> get props => [];
}

@DynamoJson()
class SupportedSuperClass {
  final FullyDecoratedClass<String> greatJob;

  SupportedSuperClass({required this.greatJob});

  factory SupportedSuperClass.fromDynamoJson(Map<String, dynamic> json) =>
      _$SupportedSuperClassFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() =>
      _$SupportedSuperClassToDynamoJson(this);
}

@DynamoJson()
class SupportedClass extends SupportedSuperClass {
  final FullyDecoratedClass<String> goodJob;

  SupportedClass({
    required super.greatJob,
    required this.goodJob,
  });

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

  late final List<bool> flags;
  @DynamoIgnore()
  late final int sumOfNumbers;

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
        dateOfBirth: DateTime.now(),
      )..flags = const [true, false, true, false];

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
