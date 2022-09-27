<!-- This content is generated. See tool/readme/readme_template.md -->

[![Pub Package](https://img.shields.io/pub/v/json_serializable.svg)](https://pub.dev/packages/json_serializable)

Provides [Dart Build System] builders for handling JSON.

The builders generate code when they find members annotated with classes defined in [package:json_annotation].

- To generate to/from JSON code for a class, annotate it with [`DynamoSerializable`]. You can provide arguments to [`DynamoSerializable`] to configure the generated code. You can also customize individual fields by annotating them with [`DynamoKey`] and providing custom arguments. See the table below for details on the [annotation values](#annotation-values).

- To generate a Dart field with the contents of a file containing JSON, use the [`DynamoLiteral`] annotation.

## Setup

To configure your project for the latest released version of `dynamo_serializable`, see the [example].

## Example

Given a library `example.dart` with an `Person` class annotated with [`DynamoSerializable`]:

```dart
import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'example.g.dart';

@DynamoSerializable()
class Person {
  /// The generated code assumes these values exist in JSON.
  final String firstName, lastName;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  Person({required this.firstName, required this.lastName, this.dateOfBirth});

  /// Connect the generated [_$PersonFromDynamoJson] function to the `fromDynamoJson`
  /// factory.
  factory Person.fromDynamoJson(Map<String, dynamic> json) => _$PersonFromDynamoJson(json);

  /// Connect the generated [_$PersonToDynamoJson] function to the `toDynamoJson` method.
  Map<String, dynamic> toDynamoJson() => _$PersonToDynamoJson(this);
}
```

Building creates the corresponding part `example.g.dart`:

```dart
part of 'example.dart';

Person _$PersonFromDynamoJson(Map<String, dynamic> json) => Person(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$PersonToDynamoJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };
```

# Running the code generator

Once you have added the annotations to your code you then need to run the code generator to generate the missing `.g.dart` generated dart files.

With a Dart package, run `dart run build_runner build` in the package directory.

With a Flutter package, run `flutter pub run build_runner build` in your package directory.

# Annotation values

The only annotation required to use this package is [`JsonSerializable`]. When applied to a class (in a correctly configured package), `toDynamoJson` and `fromDynamoJson` code will be generated when you build. There are three ways to control how code is generated:

1. Setting properties on [`DynamoKey`] annotating the target field.
1. Set properties on [`DynamoSerializable`] annotating the target type.
1. Add configuration to `build.yaml` – [see below](#build-configuration).

Every [`DynamoSerializable`] field is configurable via `build.yaml`. If you find you want all or most of your classes with the same configuration, it may be easier to specify values once in the YAML file. Values set explicitly on [`DynamoSerializable`] take precedence over settings in `build.yaml`.

There is some overlap between settings on [`DynamoKey`] and [`DynamoSerializable`]. In these cases, the property on [`DynamoKey`] takes precedence over any value set on [`DynamoSerializable`].

<!-- TODO: add an example! -->

## Enums

Annotate `enum` types with [`DynamoEnum`] (new in `dynamo_annotation` 4.2.0) to:

1. Specify the default rename logic for each enum value using `fieldRename`. For instance, use `fieldRename: FieldRename.kebab` to encode `enum` value `noGood` as `"no-good"`.
1. Force the generation of the `enum` helpers, even if the `enum` is not referenced in code. This is an edge scenario, but useful for some.

Annotate `enum` values with [`DynamoValue`] to specify the encoded value to map to target `enum` entries. Values can be of type [`String`] or [`int`].

<!-- TODO: hoist out to source code! -->

```dart
enum StatusCode {
  @DynamoValue(200)
  success,
  @DynamoValue('500')
  weird,
}
```

# Supported types

Out of the box, `dynamo_serializable` supports many common types in the [dart:core](https://api.dart.dev/stable/dart-core/dart-core-library.html) library: [`BigInt`], [`bool`], [`DateTime`], [`double`], [`Duration`], [`Enum`], [`int`], [`Iterable`], [`List`], [`Map`], [`num`], [`Object`], [`Set`], [`String`], [`Uri`]

The collection types – [`Iterable`], [`List`], [`Map`], [`Set`] – can contain values of all the above types.

For [`Map`], the key value must be one of [`BigInt`], [`DateTime`], [`Enum`], [`int`], [`Object`], [`String`], [`Uri`]

# Custom types and custom encoding

If you want to use types that are not supported out-of-the-box or if you want to customize the encoding/decoding of any type, you have a few options.

1. If you own/cotrol the desired type, add a `fromDynamoJson` constructor and/or a `toDynamoJson()` function to the type. Note: while you can use `dynamo_serializable` for these types, you don't have to! The generator code only looks for these methods. It doesn't care how they were created.
1. Use the [`DynamoKey.toDynamoJson`] and [`DynamoKey.fromDynamoJson`] properties to specify custom conversions on the annotated field. The functions specified must be top-level or static. See the documentation of these properties for details.
1. Create an implementation of [`DynamoConverter`] and annotate either the corresponding field or the containing class. [`DynamoConverter`] is convenient if you want to use the same conversion logic on many fields. It also allows you to support a type within collections. Check out [these examples](https://github.com/google/json_serializable.dart/blob/master/example/lib/json_converter_example.dart).

# Build configuration

Aside from setting arguments on the associated annotation classes, you can also configure code generation by setting values in `build.yaml`.

```yaml
targets:
  $default:
    builders:
      dynamo_serializable:
        options:
          # Options configure how source code is generated for every
          # `@DynamoSerializable`-annotated class in the package.
          #
          # The default value for each is listed.
          any_map: false
          checked: false
          constructor: ''
          create_factory: true
          create_field_map: false
          create_to_dynamo_json: true
          disallow_unrecognized_keys: false
          explicit_to_dynamo_json: false
          field_rename: none
          generic_argument_factories: false
          ignore_unannotated: false
          include_if_null: true
```

[example]: https://github.com/google/json_serializable.dart/tree/master/example
[dart build system]: https://github.com/dart-lang/build
[package:json_annotation]: https://pub.dev/packages/json_annotation
[`BigInt`]: https://api.dart.dev/stable/dart-core/BigInt-class.html
[`bool`]: https://api.dart.dev/stable/dart-core/bool-class.html
[`DateTime`]: https://api.dart.dev/stable/dart-core/DateTime-class.html
[`double`]: https://api.dart.dev/stable/dart-core/double-class.html
[`Duration`]: https://api.dart.dev/stable/dart-core/Duration-class.html
[`Enum`]: https://api.dart.dev/stable/dart-core/Enum-class.html
[`int`]: https://api.dart.dev/stable/dart-core/int-class.html
[`Iterable`]: https://api.dart.dev/stable/dart-core/Iterable-class.html
[`DynamoConverter`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonConverter-class.html
[`DynamoEnum`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonEnum-class.html
DynamoKey.fromDynamoJson`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonKey/fromJson.html
[`DynamoKey.toDynamoJson`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonKey/toJson.html
[`DynamoKey`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonKey-class.html
[`DynamoLiteral`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonLiteral-class.html
[`DynamoSerializable`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonSerializable-class.html
[`DynamoValue`]: https://pub.dev/documentation/dynamo_annotation/4.6.0/dynamo_annotation/JsonValue-class.html
[`List`]: https://api.dart.dev/stable/dart-core/List-class.html
[`Map`]: https://api.dart.dev/stable/dart-core/Map-class.html
[`num`]: https://api.dart.dev/stable/dart-core/num-class.html
[`Object`]: https://api.dart.dev/stable/dart-core/Object-class.html
[`Set`]: https://api.dart.dev/stable/dart-core/Set-class.html
[`String`]: https://api.dart.dev/stable/dart-core/String-class.html
[`Uri`]: https://api.dart.dev/stable/dart-core/Uri-class.html
