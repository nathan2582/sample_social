import 'package:flutter/material.dart';
import 'package:sample_social/src/app.dart';
import 'package:sample_social/src/common/setup_app.dart';
import 'package:sample_social/src/enums/app_env.dart';

// TODO: Add main_dev.dart, main_stage.dart. And a launch.json for each. Use app flavors for different environments.
void main() {
  // main.dart is reserved for production environment.
  setupApp(AppEnv.prod);
  runApp(const App());
}
