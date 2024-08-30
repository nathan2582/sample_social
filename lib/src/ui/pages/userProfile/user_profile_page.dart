import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_social/src/repos/user/fake_user_repo.dart';
import 'package:sample_social/src/ui/pages/userProfile/user_profile_page_view_model.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProfilePageViewModel(
        uid,
        fakeRepo: Provider.of<FakeUserRepo>(context, listen: false),
      ),
      builder: (context, _) {
        // Maybe split into smaller components to reduce builds?
        final vm = context.watch<UserProfilePageViewModel>();
        return Scaffold(
          appBar: AppBar(
            title: const Text('User Profile'),
          ),
          body: ListView(
            children: [
              UserProfileTopSection(
                userImageUrl: vm.userImageUrl,
                postCount: vm.postCount,
                followersCount: vm.followersCount,
                followingCount: vm.followingCount,
              ),
            ],
          ),
        );
      },
    );
  }
}

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

class UserProfileCountItemComponent extends StatelessWidget {
  const UserProfileCountItemComponent({
    super.key,
    required this.text,
    required this.count,
  });

  final String text;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
