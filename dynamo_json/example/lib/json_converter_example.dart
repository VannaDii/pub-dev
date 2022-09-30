// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'json_converter_example.g.dart';

/// An example of using [DynamoConverter] to change the encode/decode of a default
/// type.
@DynamoSerializable()
@_DateTimeEpochConverter()
class DateTimeExample {
  final DateTime when;

  DateTimeExample(this.when);

  factory DateTimeExample.fromDynamoJson(Map<String, dynamic> json) =>
      _$DateTimeExampleFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$DateTimeExampleToDynamoJson(this);
}

class _DateTimeEpochConverter implements DynamoConverter<DateTime, int> {
  const _DateTimeEpochConverter();

  @override
  DateTime fromDynamoJson(int json) =>
      DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toDynamoJson(DateTime object) => object.millisecondsSinceEpoch;
}

@DynamoSerializable()
class GenericCollection<T> {
  @DynamoKey(name: 'page')
  final int? page;

  @DynamoKey(name: 'total_results')
  final int? totalResults;

  @DynamoKey(name: 'total_pages')
  final int? totalPages;

  @DynamoKey(name: 'results')
  @_Converter()
  final List<T>? results;

  GenericCollection({
    this.page,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GenericCollection.fromDynamoJson(Map<String, dynamic> json) =>
      _$GenericCollectionFromDynamoJson<T>(json);

  Map<String, dynamic> toDynamoJson() => _$GenericCollectionToDynamoJson(this);
}

class _Converter<T> implements DynamoConverter<T, Object?> {
  const _Converter();

  @override
  T fromDynamoJson(Object? json) {
    if (json is Map<String, dynamic> &&
        json.containsKey('name') &&
        json.containsKey('size')) {
      return CustomResult.fromDynamoJson(json) as T;
    }
    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return json as T;
  }

  // This will only work if `object` is a native JSON type:
  //   num, String, bool, null, etc
  // Or if it has a `toJson()` function`.
  @override
  Object? toDynamoJson(T object) => object;
}

@DynamoSerializable()
class CustomResult {
  final String name;
  final int size;

  CustomResult(this.name, this.size);

  factory CustomResult.fromDynamoJson(Map<String, dynamic> json) =>
      _$CustomResultFromDynamoJson(json);

  Map<String, dynamic> toDynamoJson() => _$CustomResultToDynamoJson(this);

  @override
  bool operator ==(Object other) =>
      other is CustomResult && other.name == name && other.size == size;

  @override
  int get hashCode => name.hashCode * 31 ^ size.hashCode;
}
