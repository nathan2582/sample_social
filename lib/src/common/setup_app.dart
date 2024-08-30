import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_social/src/common/global_api_static.dart';
import 'package:sample_social/src/enums/app_env.dart';

Future<void> setupApp(AppEnv env) async {
  GlobalApi.setEnv(env);
  WidgetsFlutterBinding.ensureInitialized();
  _setupOrientation();
}

void _setupOrientation() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
