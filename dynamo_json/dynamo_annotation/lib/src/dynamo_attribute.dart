import 'dart:convert';

String _mapType(Type type) {
  switch (type) {
    case String:
      return 'S';
    default:
      return r'$unknown';
  }
}

class DynamoAttribute {
  final Type? type;
  final dynamic value;

  DynamoAttribute(this.value, [this.type]);

  Map<String, dynamic> toDynamoJson() =>
      <String, dynamic>{_mapType(type ?? value.runtimeType): jsonEncode(value)};
}
