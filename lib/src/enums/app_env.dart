enum AppEnv {
  dev('dev'),
  stage('stage'),
  prod('prod');

  final String apiUrl;

  const AppEnv(this.apiUrl);
}
