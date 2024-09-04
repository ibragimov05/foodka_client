class AppConstants {
  AppConstants._private();

  static final AppConstants _instance = AppConstants._private();

  factory AppConstants() => _instance;

  static const String appName = 'Foodka';
}
