import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample_social/src/ui/pages/userProfile/widgets/user_profile_count_item_component.dart';

class UserProfileTopSection extends StatelessWidget {
  const UserProfileTopSection({
    super.key,
    this.userImageUrl,
    this.postCount = 0,
    this.followersCount = 0,
    this.followingCount = 0,
  });

  final String? userImageUrl;
  final int postCount;
  final int followersCount;
  final int followingCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/100x100",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          UserProfileCountItemComponent(
            text: 'Posts',
            count: postCount,
          ),
          UserProfileCountItemComponent(
            text: 'Followers',
            count: followersCount,
          ),
          UserProfileCountItemComponent(
            text: 'Following',
            count: followingCount,
          ),
        ],
      ),
    );
  }
}
