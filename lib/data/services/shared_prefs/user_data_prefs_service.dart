import 'dart:convert';

import 'package:foodka_client/app_config.dart';
import 'package:foodka_client/data/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataPrefsService {
  UserDataPrefsService._private();

  static final UserDataPrefsService _instance = UserDataPrefsService._private();

  factory UserDataPrefsService() => _instance;

  static final SharedPreferences _sharedPrefs = getIt.get<SharedPreferences>();
  static const String _userDataKey = '__user_data__';

  static User? get user {
    final userString = _sharedPrefs.getString(_userDataKey);

    if (userString == null) return null;

    final Map<String, dynamic> userMap = jsonDecode(userString);

    return User.fromJson(userMap);
  }

  static Future<bool> save(User user) => _sharedPrefs.setString(
        _userDataKey,
        jsonEncode(user.toJson()),
      );

  static Future<bool> clear() async => await _sharedPrefs.remove(_userDataKey);
}
