import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../shared_prefs/user_secrets_prefs_service.dart';
import '../../models/user_secrets_model/user_secrets.dart';

class AuthDioService {
  final Dio _dio = Dio();
  final UserSecretsLocalStorageService _localStorageService =
      UserSecretsLocalStorageService();

  final String _authKey = dotenv.get('FIREBASE_AUTH_KEY');
  final String _baseUrl = 'https://identitytoolkit.googleapis.com/v1';

  /// Authenticate user [login] or [register]
  Future<UserSecrets> _authenticate({
    required String email,
    required String password,
    required String query,
  }) async {
    final String url = "$_baseUrl/accounts:$query?key=$_authKey";

    try {
      final response = await _dio.post(
        url,
        data: {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      );

      if (response.statusCode == 200) {
        response.data['expiresIn'] = DateTime.now().add(
          Duration(
            seconds: int.parse(response.data['expiresIn']),
          ),
        );

        final user = UserSecrets.fromJson(
          response.data,
        );

        await _localStorageService.saveUserSecrets(jsonEncode(user.toJson()));

        return user;
      } else {
        throw Exception(response.data['error']['message']);
      }
    } on DioException catch (e) {
      final errorMessage =
          e.response?.data['error']['message'] ?? 'An error occurred';
      throw 'error: $errorMessage';
    } catch (e) {
      throw Exception('Unexpected error: ${e.toString()}');
    }
  }

  /// register user
  Future<UserSecrets> register({
    required String email,
    required String password,
  }) async =>
      _authenticate(
        email: email,
        password: password,
        query: "signUp",
      );

  /// login user
  Future<UserSecrets> login({
    required String email,
    required String password,
  }) async =>
      _authenticate(
        email: email,
        password: password,
        query: "signInWithPassword",
      );

  Future<void> clearTokens() async => _localStorageService.clearUserSecrets();

  Future<UserSecrets?> checkTokenExpiry() async {
    final userSecrets = await _localStorageService.userSecrets;

    if (userSecrets == null) return null;

    if (DateTime.now().isBefore(userSecrets.expiresIn)) {
      return userSecrets;
    } else {
      final updatedUser = await _refreshToken(userSecrets.toJson());

      await _localStorageService.saveUserSecrets(jsonEncode(updatedUser));

      return UserSecrets.fromJson(updatedUser);
    }
  }

  Future<Map<String, dynamic>> _refreshToken(Map<String, dynamic> user) async {
    final String url =
        "https://securetoken.googleapis.com/v1/token?key=$_authKey";

    try {
      final response = await _dio.post(
        url,
        data: {
          "grant_type": "refresh_token",
          "refresh_token": user['refreshToken'],
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        user['refreshToken'] = data['refresh_token'];
        user['idToken'] = data['id_token'];
        user['expiresIn'] = DateTime.now()
            .add(Duration(seconds: int.parse(data['expires_in'])))
            .toIso8601String();
        return user;
      } else {
        throw Exception(response.data['error']['message']);
      }
    } on DioException catch (e) {
      final errorMessage =
          e.response?.data['error']['message'] ?? 'Failed to refresh token';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Unexpected error: ${e.toString()}');
    }
  }

}
