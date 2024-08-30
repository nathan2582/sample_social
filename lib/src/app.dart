import 'package:flutter/material.dart';
import 'package:sample_social/src/ui/pages/posts/postFeed/post_feed_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // This would be a go_router implementation, but given the time constraints,
      // using Navigator 1.0 to reduce scope and hit acceptance criteria.
      home: PostFeedPage(
        uid: 'fakeUid',
      ),
    );
  }
}
