import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_social/src/app.dart';
import 'package:sample_social/src/common/setup_app.dart';
import 'package:sample_social/src/enums/app_env.dart';
import 'package:sample_social/src/provider/provider_config.dart';

// TODO: Add main_dev.dart, main_stage.dart. And a launch.json for each. Use app flavors for different environments.
void main() {
  // main.dart is reserved for production environment.
  setupApp(AppEnv.prod);
  final providers = ProviderConfig();
  runApp(
    MultiProvider(
      providers: providers.providers,
      child: const App(),
    ),
  );
}
