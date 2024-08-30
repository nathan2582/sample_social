// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['id'] as String,
      title: json['title'] as String?,
      contentImageUrl: json['contentImageUrl'] as String?,
      body: json['body'] as String?,
      likes: (json['likes'] as num).toInt(),
      personalLike: json['personalLike'] as bool,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contentImageUrl': instance.contentImageUrl,
      'body': instance.body,
      'likes': instance.likes,
      'personalLike': instance.personalLike,
    };
