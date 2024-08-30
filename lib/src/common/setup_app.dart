import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_social/src/common/global_api_static.dart';
import 'package:sample_social/src/enums/app_env.dart';

Future<void> setupApp(AppEnv env) async {
  // Inside of here, I would typically set up firebase services (if using firebase),
  // setup a MultiProvider list that would need to be accessed in multiple places,
  // setting up crashyltics, a correlationId service for tagging http calls.
  // setting up push notification services, etc.
  GlobalApi.setEnv(env);
  WidgetsFlutterBinding.ensureInitialized();
  _setupOrientation();
}

void _setupOrientation() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
