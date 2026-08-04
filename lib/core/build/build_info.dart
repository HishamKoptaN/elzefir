class BuildInfo {
  const BuildInfo._();

  static const int buildNumber = int.fromEnvironment(
    'BUILD_NUMBER',
    defaultValue: 0,
  );

  static const String commitMessage = String.fromEnvironment(
    'COMMIT_MESSAGE',
    defaultValue: '',
  );
}
