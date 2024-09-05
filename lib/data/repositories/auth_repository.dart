import '../services/dio/auth_dio_service.dart';
import '../models/user_secrets_model/user_secrets.dart';

class AuthRepository {
  final AuthDioService _authDioService;

  AuthRepository({
    required AuthDioService authDioService,
  }) : _authDioService = authDioService;

  Future<UserSecrets> register({
    required String email,
    required String password,
  }) async =>
      _authDioService.register(email: email, password: password);

  Future<UserSecrets> login({
    required String email,
    required String password,
  }) async =>
      _authDioService.login(email: email, password: password);

  Future<void> clearTokens() async => _authDioService.clearTokens();

  Future<UserSecrets?> checkTokenExpiry() async =>
      _authDioService.checkTokenExpiry();
}

