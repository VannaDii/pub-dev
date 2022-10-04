// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// DynamoSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromDynamoJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      status: (json['status'] as Map<String, dynamic>)['N'] as int?,
      msg: (json['msg'] as Map<String, dynamic>)['S'] as String?,
      data: BaseResponse._dataFromJson(
          (json['data'] as Map<String, dynamic>)['UNKNOWN'] as Object),
    );

Map<String, dynamic> _$BaseResponseToDynamoJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'status': {'N': instance.status},
      'msg': {'S': instance.msg},
      'data': {'UNKNOWN': BaseResponse._dataToJson(instance.data)},
    };

Article _$ArticleFromDynamoJson(Map<String, dynamic> json) => Article(
      id: (json['id'] as Map<String, dynamic>)['N'] as int,
      title: (json['title'] as Map<String, dynamic>)['S'] as String,
      author: (json['author'] as Map<String, dynamic>)['M'] == null
          ? null
          : User.fromDynamoJson((json['author'] as Map<String, dynamic>)['M']
              as Map<String, dynamic>),
      comments:
          ((json['comments'] as Map<String, dynamic>)['L'] as List<dynamic>?)
              ?.map((e) => Comment.fromDynamoJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ArticleToDynamoJson(Article instance) =>
    <String, dynamic>{
      'id': {'N': instance.id},
      'title': {'S': instance.title},
      'author': {'M': instance.author?.toDynamoJson()},
      'comments': {
        'L': instance.comments?.map((e) => e.toDynamoJson()).toList()
      },
    };

User _$UserFromDynamoJson(Map<String, dynamic> json) => User(
      id: (json['id'] as Map<String, dynamic>)['N'] as int?,
      email: (json['email'] as Map<String, dynamic>)['S'] as String?,
    );

Map<String, dynamic> _$UserToDynamoJson(User instance) => <String, dynamic>{
      'id': {'N': instance.id},
      'email': {'S': instance.email},
    };

Comment _$CommentFromDynamoJson(Map<String, dynamic> json) => Comment(
      id: (json['id'] as Map<String, dynamic>)['N'] as int?,
      content: (json['content'] as Map<String, dynamic>)['S'] as String?,
    );

Map<String, dynamic> _$CommentToDynamoJson(Comment instance) =>
    <String, dynamic>{
      'content': {'S': instance.content},
      'id': {'N': instance.id},
    };
