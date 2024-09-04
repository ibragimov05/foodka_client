import 'package:foodka_client/app_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserTokenPrefsService {
  const UserTokenPrefsService._private();

  static const UserTokenPrefsService _instance =
      UserTokenPrefsService._private();

  factory UserTokenPrefsService() => _instance;

  static const String _tokenKey = '__user_token__';
  static final SharedPreferences _preferences = getIt.get<SharedPreferences>();

  static String? getAccessToken() => _preferences.getString(_tokenKey);

  static Future<bool> saveAccessToken(String token) async =>
      await _preferences.setString(_tokenKey, token);

  static Future<bool> clearAccessToken() async =>
      await _preferences.remove(_tokenKey);
}
