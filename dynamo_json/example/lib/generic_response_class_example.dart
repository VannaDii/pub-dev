// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dynamo_annotation/dynamo_annotation.dart';

part 'generic_response_class_example.g.dart';

// An example highlighting the problem outlined in
// https://github.com/google/json_serializable.dart/issues/646
// https://github.com/google/json_serializable.dart/issues/671

@DynamoSerializable()
class BaseResponse<T> {
  final int? status;
  final String? msg;

  @DynamoKey(fromDynamoJson: _dataFromJson)
  final T? data;

  const BaseResponse({
    this.status,
    this.msg,
    this.data,
  });

  factory BaseResponse.fromDynamoJson(Map<String, dynamic> json) =>
      _$BaseResponseFromDynamoJson(json);

  /// Decodes [json] by "inspecting" its contents.
  static T _dataFromJson<T>(Object json) {
    if (json is Map<String, dynamic>) {
      if (json.containsKey('email')) {
        return User.fromDynamoJson(json) as T;
      }

      if (json.containsKey('title')) {
        return Article.fromDynamoJson(json) as T;
      }
    } else if (json is List) {
      // NOTE: this logic assumes the ONLY valid value for a `List` in this case
      // is a List<Author>. If that assumption changes, then it will be
      // necessary to "peek" into non-empty lists to determine the type!

      return json
          .map((e) => Article.fromDynamoJson(e as Map<String, dynamic>))
          .toList() as T;
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }
}

@DynamoSerializable()
class Article {
  final int id;
  final String title;

  final User? author;

  final List<Comment>? comments;

  const Article({
    required this.id,
    required this.title,
    this.author,
    this.comments,
  });

  factory Article.fromDynamoJson(Map<String, dynamic> json) =>
      _$ArticleFromDynamoJson(json);
}

@DynamoSerializable()
class User {
  final int? id;
  final String? email;

  const User({
    this.id,
    this.email,
  });

  factory User.fromDynamoJson(Map<String, dynamic> json) =>
      _$UserFromDynamoJson(json);
}

@DynamoSerializable()
class Comment {
  final String? content;
  final int? id;

  const Comment({
    this.id,
    this.content,
  });

  factory Comment.fromDynamoJson(Map<String, dynamic> json) =>
      _$CommentFromDynamoJson(json);
}
