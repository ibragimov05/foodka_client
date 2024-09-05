import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:foodka_client/app_config.dart';
import 'package:foodka_client/data/models/user_secrets_model/user_secrets.dart';

class UserSecretsLocalStorageService {
  UserSecretsLocalStorageService._private();

  static final UserSecretsLocalStorageService _instance =
      UserSecretsLocalStorageService._private();

  factory UserSecretsLocalStorageService() => _instance;

  static const String _userSecretsKey = '__user_secrets__';

  static final FlutterSecureStorage _secureStorage =
      getIt<FlutterSecureStorage>();

  /// Get all user secrets and return it
  static Future<UserSecrets?> get userSecrets async {
    final data = await _secureStorage.read(key: _userSecretsKey);

    if (data == null) return null;

    final decodedData = jsonDecode(data) as Map<String, dynamic>;

    return UserSecrets.fromJson(decodedData);
  }

  /// Method to get user's token
  static Future<String?> get refreshToken async {
    final data = await _secureStorage.read(key: _userSecretsKey);

    if (data == null) return null;

    final decodedData = jsonDecode(data) as Map<String, dynamic>;

    return UserSecrets.fromJson(decodedData).idToken;
  }

  /// Get user secrets and save it to local storage
  static Future<void> saveUserSecrets(String userSecrets) async =>
      _secureStorage.write(key: _userSecretsKey, value: userSecrets);

  /// Clear user secrets from local storage
  static Future<void> clearUserSecrets() async =>
      _secureStorage.delete(key: _userSecretsKey);
}
