import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PostModel {
  PostModel({
    required this.id,
    required this.title,
    // Definitely needs:

    // required this.userId,
    // required this.userName,
    // required this.userImageUrl,

    // could be a list of ContentType object, with the type, video, image,
    // etc, urlString, and other parameters
    required this.contentImageUrl,
    required this.body,
    required this.likes,
    required this.personalLike,
  });

  final String id;
  // final String userId;
  // final String userName;
  // final String userImageUrl;
  final String? title;
  final String? contentImageUrl;
  final String? body;
  final int likes;
  final bool personalLike;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
