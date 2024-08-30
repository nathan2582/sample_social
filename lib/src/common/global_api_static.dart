import 'package:sample_social/src/enums/app_env.dart';

class GlobalApi {
  static String get apiUrl => env.apiUrl;

  static AppEnv get env => _env;
  static AppEnv _env = AppEnv.dev;

  static setEnv(AppEnv env) => _env = env;
}
