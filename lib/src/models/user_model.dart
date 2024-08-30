import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  UserModel({
    required this.uid,
    required this.name,
    required this.userName,
    required this.userImageUrl,
    required this.bio,
    required this.postCount,
    required this.followersCount,
    required this.followingCount,
  });

  final String uid;
  final String name;
  final String userName;
  final String userImageUrl;
  final String bio;
  final int postCount;
  final int followersCount;
  final int followingCount;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
