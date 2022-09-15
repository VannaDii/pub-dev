part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
WithANonCtorGetterChecked _$WithANonCtorGetterCheckedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'WithANonCtorGetterChecked',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['items'],
          requiredKeys: const ['items'],
          disallowNullValues: const ['items'],
        );
        final val = WithANonCtorGetterChecked(
          $checkedConvert('items',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );
''')
@DynamoSerializable(
  disallowUnrecognizedKeys: true,
  createToDynamoJson: false,
  checked: true,
)
class WithANonCtorGetterChecked {
  @DynamoKey(required: true, disallowNullValue: true)
  final List<String> items;

  int get length => items.length;

  WithANonCtorGetterChecked(this.items);
}

@ShouldGenerate(r'''
WithANonCtorGetter _$WithANonCtorGetterFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const ['items'],
    requiredKeys: const ['items'],
    disallowNullValues: const ['items'],
  );
  return WithANonCtorGetter(
    (json['items'] as List<dynamic>).map((e) => e as String).toList(),
  );
}
''')
@DynamoSerializable(disallowUnrecognizedKeys: true, createToDynamoJson: false)
class WithANonCtorGetter {
  @DynamoKey(required: true, disallowNullValue: true)
  final List<String> items;

  int get length => items.length;

  WithANonCtorGetter(this.items);
}
