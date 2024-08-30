// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      userName: json['userName'] as String,
      userImageUrl: json['userImageUrl'] as String,
      bio: json['bio'] as String,
      postCount: (json['postCount'] as num).toInt(),
      followersCount: (json['followersCount'] as num).toInt(),
      followingCount: (json['followingCount'] as num).toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'userName': instance.userName,
      'userImageUrl': instance.userImageUrl,
      'bio': instance.bio,
      'postCount': instance.postCount,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
    };
