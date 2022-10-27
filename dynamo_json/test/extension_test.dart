import 'package:dynamo_json/src/dynamo_json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('Extension Tests', () {
    test('Test Discoverable Decorated Types', () {});
  });
}

@DynamoJson()
class SupportedClass {
  final FullyDecoratedClass goodJob;

  SupportedClass({required this.goodJob});

  factory SupportedClass.fromDynamoJson(Map<String, dynamic> json) =>
      SupportedClass(goodJob: const FullyDecoratedClass());

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}

@DynamoJson()
class MissingToJsonClass {
  final FullyDecoratedClass goodJob;

  MissingToJsonClass({required this.goodJob});

  factory MissingToJsonClass.fromDynamoJson(Map<String, dynamic> json) =>
      MissingToJsonClass(goodJob: const FullyDecoratedClass());
}

@DynamoJson()
class MissingFromJsonClass {
  final FullyDecoratedClass goodJob;

  MissingFromJsonClass({required this.goodJob});

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}

@DynamoJson()
class MissingAllJsonClass {
  final FullyDecoratedClass goodJob;

  MissingAllJsonClass({required this.goodJob});
}

@DynamoJson()
class UnsupportedClass {
  final FullyDecoratedClass goodJob;

  UnsupportedClass({required this.goodJob});
}

@DynamoJson()
class FullyDecoratedClass {
  const FullyDecoratedClass();

  factory FullyDecoratedClass.fromDynamoJson(Map<String, dynamic> json) =>
      FullyDecoratedClass();

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}

class UndecoratedClass {
  const UndecoratedClass();

  factory UndecoratedClass.fromDynamoJson(Map<String, dynamic> json) =>
      UndecoratedClass();

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}

@DynamoJson()
class MissingFromClass {
  const MissingFromClass();

  Map<String, dynamic> toDynamoJson() => <String, dynamic>{};
}

@DynamoJson()
class MissingToClass {
  const MissingToClass();

  factory MissingToClass.fromDynamoJson(Map<String, dynamic> json) =>
      MissingToClass();
}

class IneligibleClass {
  const IneligibleClass();
}
