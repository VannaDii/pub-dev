// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromDynamoJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: BaseResponse._dataFromJson(json['data'] as Object),
    );

Article _$ArticleFromDynamoJson(Map<String, dynamic> json) => Article(
      id: json['id'] as int,
      title: json['title'] as String,
      author: json['author'] == null
          ? null
          : User.fromDynamoJson(json['author'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromDynamoJson(e as Map<String, dynamic>))
          .toList(),
    );

User _$UserFromDynamoJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      email: json['email'] as String?,
    );

Comment _$CommentFromDynamoJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int?,
      content: json['content'] as String?,
    );
