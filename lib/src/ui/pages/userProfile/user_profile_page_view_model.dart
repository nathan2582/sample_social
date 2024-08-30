import 'package:flutter/material.dart';

// I typically have a BaseState abstract class that handles common tasks like,
// setBusy(true/false), error handling, disposing, any shared implementations, dependencies etc.
class UserProfilePageViewModel extends ChangeNotifier {
  UserProfilePageViewModel();
}
