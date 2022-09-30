// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromDynamoJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: BaseResponse._dataFromJson(json['data'] as Object),
    );

Map<String, dynamic> _$BaseResponseToDynamoJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': BaseResponse._dataToJson(instance.data),
    };

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

Map<String, dynamic> _$ArticleToDynamoJson(Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author?.toDynamoJson(),
      'comments': instance.comments?.map((e) => e.toDynamoJson()).toList(),
    };

User _$UserFromDynamoJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserToDynamoJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

Comment _$CommentFromDynamoJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$CommentToDynamoJson(Comment instance) =>
    <String, dynamic>{
      'content': instance.content,
      'id': instance.id,
    };
