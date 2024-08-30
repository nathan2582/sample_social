import 'package:flutter/material.dart';
import 'package:sample_social/src/ui/pages/userProfile/user_profile_page.dart';

class PostFeedPage extends StatelessWidget {
  const PostFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Feed'),
        actions: [
          IconButton(
            // I typically have an app_icons.dart that has all the icons for the app.
            icon: const Icon(Icons.person),
            onPressed: () {
              // This would be a service that handles go_router navigation.
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    const uid = 'dsihweoifhwefoihh';
                    return const UserProfilePage(uid: uid);
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: const SizedBox(),
    );
  }
}
