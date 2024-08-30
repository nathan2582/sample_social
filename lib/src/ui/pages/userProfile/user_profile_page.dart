import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_social/src/repos/user/fake_user_repo.dart';
import 'package:sample_social/src/ui/pages/userProfile/viewModel/user_profile_page_view_model.dart';
import 'package:sample_social/src/ui/pages/userProfile/userPosts/user_profile_posts_section.dart';
import 'package:sample_social/src/ui/pages/userProfile/components/user_profile_top_section.dart';

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
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.edit),
            onPressed: () {
              print('Go to profile edit page');
            },
          ),
          body: vm.busy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              // Oh dear. I need a CustomScrollView with slivers because of the user profile posts section gridview
              : ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    UserProfileTopSection(
                      userImageUrl: vm.userImageUrl,
                      postCount: vm.postCount,
                      followersCount: vm.followersCount,
                      followingCount: vm.followingCount,
                    ),
                    UserProfileNameSection(vm.name),
                    UserProfileBioSection(vm.bio),
                    const SizedBox(height: 16),
                    // passing in uid to separate post fetching from user fetch
                    // assuming they would be separate calls,
                    // as well as handling pagination.
                    UserProfilePostsSection(uid: vm.uid)
                  ],
                ),
        );
      },
    );
  }
}

class UserProfileBioSection extends StatelessWidget {
  const UserProfileBioSection(this.bio, {super.key});

  final String bio;

  @override
  Widget build(BuildContext context) {
    return Text(bio);
  }
}

class UserProfileNameSection extends StatelessWidget {
  const UserProfileNameSection(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
