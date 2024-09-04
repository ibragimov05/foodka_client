class AppConstants {
  const AppConstants._private();

  static const AppConstants _instance = AppConstants._private();

  factory AppConstants() => _instance;

  static const String appName = 'Foodka';
}
