// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart' as json_annotation;
import 'package:meta/meta_meta.dart';

import 'allowed_keys_helpers.dart';
import 'checked_helpers.dart';
import 'dynamo_converter.dart';
import 'dynamo_key.dart';
import 'enum_helpers.dart';

part 'dynamo_serializable.g.dart';

/// Values for the automatic field renaming behavior for [DynamoSerializable].
enum FieldRename {
  /// Use the field name without changes.
  none,

  /// Encodes a field named `kebabCase` with a JSON key `kebab-case`.
  kebab,

  /// Encodes a field named `snakeCase` with a JSON key `snake_case`.
  snake,

  /// Encodes a field named `pascalCase` with a JSON key `PascalCase`.
  pascal,

  /// Encodes a field named `screamingSnakeCase` with a JSON key
  /// `SCREAMING_SNAKE_CASE`
  screamingSnake,
}

/// An annotation used to specify a class to generate code for.
@json_annotation.JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
  fieldRename: json_annotation.FieldRename.snake,
)
@Target({TargetKind.classType})
class DynamoSerializable {
  /// If `true`, [Map] types are *not* assumed to be [Map<String, dynamic>]
  /// – which is the default type of [Map] instances return by JSON decode in
  /// `dart:convert`.
  ///
  /// This will increase the code size, but allows [Map] types returned
  /// from other sources, such as `package:yaml`.
  ///
  /// *Note: in many cases the key values are still assumed to be [String]*.
  final bool? anyMap;

  /// If `true`, generated `fromDynamoJson` functions include extra checks to
  /// validate proper deserialization of types.
  ///
  /// If an exception is thrown during deserialization, a
  /// [CheckedFromJsonException] is thrown.
  final bool? checked;

  /// Specifies a named constructor to target when creating the `fromDynamoJson`
  /// function.
  ///
  /// If the value is not set or an empty [String], the default constructor
  /// is used.
  ///
  /// This setting has no effect if [createFactory] is `false`.
  final String? constructor;

  /// If `true` (the default), a private, static `_$ExampleFromJson` method
  /// is created in the generated part file.
  ///
  /// Call this method from a factory constructor added to the source class:
  ///
  /// ```dart
  /// @DynamoSerializable()
  /// class Example {
  ///   // ...
  ///   factory Example.fromJson(Map<String, dynamic> json) =>
  ///     _$ExampleFromJson(json);
  /// }
  /// ```
  final bool? createFactory;

  /// If `true` (defaults to false), a private, static `_$ExampleJsonMeta`
  /// constant is created in the generated part file.
  ///
  /// This constant can be used by other code-generators to support features
  /// such as [fieldRename].
  final bool? createFieldMap;

  /// If `false` (the default), then the generated `FromJson` function will
  /// ignore unrecognized keys in the provided JSON [Map].
  ///
  /// If `true`, unrecognized keys will cause an [UnrecognizedKeysException] to
  /// be thrown.
  final bool? disallowUnrecognizedKeys;

  /// Defines the automatic naming strategy when converting class field names
  /// into JSON map keys.
  ///
  /// With a value [FieldRename.none] (the default), the name of the field is
  /// used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [DynamoKey.name] takes precedence over this option for
  /// fields annotated with [DynamoKey].
  final FieldRename? fieldRename;

  /// When `true` on classes with type parameters (generic types), extra
  /// "helper" parameters will be generated for `fromDynamoJson` and/or
  /// `toDynamoJson` to support serializing values of those types.
  ///
  /// For example, the generated code for
  ///
  /// ```dart
  /// @DynamoSerializable(genericArgumentFactories: true)
  /// class Response<T> {
  ///   int status;
  ///   T value;
  /// }
  /// ```
  ///
  /// Looks like
  ///
  /// ```dart
  /// Response<T> _$ResponseFromJson<T>(
  ///   Map<String, dynamic> json,
  ///   T Function(Object json) fromDynamoJsonT,
  /// ) {
  ///   return Response<T>()
  ///     ..status = json['status'] as int
  ///     ..value = fromDynamoJsonT(json['value']);
  /// }
  ///
  /// Map<String, dynamic> _$ResponseToJson<T>(
  ///   Response<T> instance,
  ///   Object Function(T value) toDynamoJsonT,
  /// ) =>
  ///     <String, dynamic>{
  ///       'status': instance.status,
  ///       'value': toDynamoJsonT(instance.value),
  ///     };
  /// ```
  ///
  /// Notes:
  ///
  /// 1. This option has no effect on classes without type parameters.
  ///    If used on such a class, a warning is echoed in the build log.
  /// 1. If this option is set for all classes in a package via `build.yaml`
  ///    it is only applied to classes with type parameters – so no warning is
  ///    echoed.
  final bool? genericArgumentFactories;

  /// When `true`, only fields annotated with [DynamoKey] will have code
  /// generated.
  ///
  /// It will have the same effect as if those fields had been annotated with
  /// `@DynamoKey(ignore: true)`.
  final bool? ignoreUnannotated;

  /// Whether the generator should include fields with `null` values in the
  /// serialized output.
  ///
  /// If `true` (the default), all fields are written to JSON, even if they are
  /// `null`.
  ///
  /// If a field is annotated with `DynamoKey` with a non-`null` value for
  /// `includeIfNull`, that value takes precedent.
  final bool? includeIfNull;

  /// A list of [DynamoConverter] to apply to this class.
  ///
  /// Writing:
  ///
  /// ```dart
  /// @DynamoSerializable(converters: [MyJsonConverter()])
  /// class Example {...}
  /// ```
  ///
  /// is equivalent to writing:
  ///
  /// ```dart
  /// @DynamoSerializable()
  /// @MyJsonConverter()
  /// class Example {...}
  /// ```
  ///
  /// The main difference is that this allows reusing a custom
  /// [DynamoSerializable] over multiple classes:
  ///
  /// ```dart
  /// const myCustomAnnotation = JsonSerializable(
  ///   converters: [MyJsonConverter()],
  /// );
  ///
  /// @myCustomAnnotation
  /// class Example {...}
  ///
  /// @myCustomAnnotation
  /// class Another {...}
  /// ```
  @DynamoKey(ignore: true)
  final List<DynamoConverter>? converters;

  /// Creates a new [DynamoSerializable] instance.
  const DynamoSerializable({
    @Deprecated('Has no effect') bool? nullable,
    this.anyMap,
    this.checked,
    this.constructor,
    this.createFieldMap,
    this.createFactory,
    this.disallowUnrecognizedKeys,
    this.fieldRename,
    this.ignoreUnannotated,
    this.includeIfNull,
    this.converters,
    this.genericArgumentFactories,
  });

  factory DynamoSerializable.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableFromJson(json);

  /// An instance of [DynamoSerializable] with all fields set to their default
  /// values.
  @Deprecated('Was only ever included to support builder infrastructure.')
  static const defaults = DynamoSerializable(
    anyMap: false,
    checked: false,
    constructor: '',
    createFactory: true,
    disallowUnrecognizedKeys: false,
    fieldRename: FieldRename.none,
    ignoreUnannotated: false,
    includeIfNull: true,
    genericArgumentFactories: false,
  );

  /// Returns a new [DynamoSerializable] instance with fields equal to the
  /// corresponding values in `this`, if not `null`.
  ///
  /// Otherwise, the returned value has the default value as defined in
  /// [defaults].
  @Deprecated('Was only ever included to support builder infrastructure.')
  DynamoSerializable withDefaults() => DynamoSerializable(
        anyMap: anyMap ?? defaults.anyMap,
        checked: checked ?? defaults.checked,
        constructor: constructor ?? defaults.constructor,
        createFactory: createFactory ?? defaults.createFactory,
        disallowUnrecognizedKeys:
            disallowUnrecognizedKeys ?? defaults.disallowUnrecognizedKeys,
        fieldRename: fieldRename ?? defaults.fieldRename,
        ignoreUnannotated: ignoreUnannotated ?? defaults.ignoreUnannotated,
        includeIfNull: includeIfNull ?? defaults.includeIfNull,
        genericArgumentFactories:
            genericArgumentFactories ?? defaults.genericArgumentFactories,
      );

  Map<String, dynamic> toJson() => _$JsonSerializableToJson(this);
}
