import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_social/src/repos/posts/post_repo.dart';
import 'package:sample_social/src/ui/pages/posts/postFeed/components/post_feed_component.dart';
import 'package:sample_social/src/ui/pages/posts/postFeed/post_feed_view_model.dart';
import 'package:sample_social/src/ui/pages/userProfile/user_profile_page.dart';

class PostFeedPage extends StatelessWidget {
  const PostFeedPage({
    super.key,
    required this.uid,
  });

  final String uid;

  void navToUserProfile(BuildContext context) {
    // This would be a service that handles go_router navigation.
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          const uid = 'dsihweoifhwefoihh';
          return const UserProfilePage(uid: uid);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Does this have to be a proxy considering it depends
      // on the repo? The repo does not change state so
      // I am unsure.
      create: (context) => PostFeedViewModel(
          uid: uid, repo: Provider.of<PostRepo>(context, listen: false)),
      builder: (context, _) {
        final vm = context.watch<PostFeedViewModel>();
        return Scaffold(
          appBar: AppBar(
            title: const Text('Post Feed'),
            actions: [
              IconButton(
                // I typically have an app_icons.dart that has all the icons for the app.
                icon: const Icon(Icons.person),
                onPressed: () => navToUserProfile(context),
              ),
            ],
          ),
          body: ListView.separated(
            itemBuilder: (context, i) {
              final post = vm.currentPosts[i];
              return PostFeedComponent(post);
            },
            separatorBuilder: (context, i) => const Divider(
              color: Colors.black,
              thickness: 3,
              height: 0,
            ),
            itemCount: vm.currentPosts.length,
          ),
        );
      },
    );
  }
}
