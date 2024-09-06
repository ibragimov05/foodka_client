import 'package:flutter/cupertino.dart';
import 'package:foodka_client/features/auth/sign_up/ui/signup_page.dart';
import 'package:foodka_client/features/map/ui/yandex_map_screen.dart';
import 'package:foodka_client/features/splash/splash_screen.dart';

class AppRouter {
  // static const String splash = '/splash';
  // static const String login = '/login';
  // static const String home = '/home';
  static const String register = '/register';
  static const String yandexMap = '/yandex-map';

  static PageRoute _buildPageRoute(Widget widget) => CupertinoPageRoute(
        builder: (BuildContext context) => widget,
      );

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.register:
        return _buildPageRoute(const SignupPage());
      case AppRouter.yandexMap:
        return _buildPageRoute(const MapScreen());
      default:
        return _buildPageRoute(const SplashScreen());
    }
  }
}
