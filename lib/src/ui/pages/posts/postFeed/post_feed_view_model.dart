import 'package:flutter/material.dart';
import 'package:sample_social/src/models/post/post_model.dart';
import 'package:sample_social/src/repos/posts/post_repo.dart';

class PostFeedViewModel extends ChangeNotifier {
  PostFeedViewModel({
    required this.uid,
    required this.repo,
  }) {
    init();
  }

  final String uid;
  final PostRepo repo;

  List<PostModel> currentPosts = [];

  bool _busy = false;

  bool get busy => _busy;

  set busy(bool value) {
    _busy = value;
    notifyListeners();
  }

  void init() async {
    await fetchPostsForUser(uid);
  }

  Future<void> fetchPostsForUser(String uid) async {
    try {
      busy = true;
      currentPosts = await repo.fetchPostsForUser(uid);
    } on Exception catch (e) {
      print('log error/ $e');
    } finally {
      busy = false;
    }
  }
}
