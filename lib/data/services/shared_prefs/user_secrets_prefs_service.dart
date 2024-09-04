import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:foodka_client/app_config.dart';

class UserSecretsLocalStorageService {
  UserSecretsLocalStorageService._private();

  static final UserSecretsLocalStorageService _instance =
      UserSecretsLocalStorageService._private();

  factory UserSecretsLocalStorageService() => _instance;

  final String _tokenKey = '__user_secrets__';
  final FlutterSecureStorage _secureStorage = getIt<FlutterSecureStorage>();

  Future<String?> getUserSecrets() async => _secureStorage.read(key: _tokenKey);

  Future<void> saveUserSecrets(String userSecrets) async =>
      _secureStorage.write(key: _tokenKey, value: userSecrets);

  Future<void> clearUserSecrets() async =>
      _secureStorage.delete(key: _tokenKey);
}
