import 'package:flutter/material.dart';
import 'package:sample_social/src/models/user_model.dart';
import 'package:sample_social/src/repos/user/fake_user_repo.dart';

// I typically have a BaseState abstract class that handles common tasks like,
// setBusy(true/false), error handling, disposing, any shared implementations, dependencies etc.
class UserProfilePageViewModel extends ChangeNotifier {
  UserProfilePageViewModel(
    this._uid, {
    required this.fakeRepo,
  }) {
    init();
  }

  final FakeUserRepo fakeRepo;

  final String _uid;
  String? userImageUrl;

  int get postCount => _user?.postCount ?? 0;
  int get followersCount => _user?.followersCount ?? 0;
  int get followingCount => _user?.followingCount ?? 0;

  bool _busy = false;

  bool get busy => _busy;

  UserModel? _user;

  set busy(bool value) {
    _busy = value;
    notifyListeners();
  }

  Future<void> init() async {
    try {
      busy = true;
      _user = await fetchUser(_uid);
    } catch (e) {
      // log the error
    } finally {
      busy = false;
    }
  }

  Future<UserModel> fetchUser(String uid) async {
    return await fakeRepo.fetchUser(uid);
  }
}
