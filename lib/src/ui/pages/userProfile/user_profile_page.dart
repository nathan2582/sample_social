import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_social/src/ui/pages/userProfile/user_profile_page_view_model.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => UserProfilePageViewModel(),
        builder: (context, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('User Profile'),
            ),
            body: const SizedBox(),
          );
        });
  }
}
