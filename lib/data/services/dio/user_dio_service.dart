import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../services.dart';
import '../../models/models.dart';
import '../../../core/network/dio_client.dart';

class UserDioService {
  final DioClient _dioClient = DioClient();

  /// Get user data by user [uid] and [email]
  Future<DioResponse> getUser({required UserGetRequest userGetRequest}) async {
    final DioResponse dioResponse = DioResponse();

    try {
      final refreshToken = await _refreshToken;

      if (refreshToken == null) throw 'no refresh token found';

      final response = await _dioClient.get(
        url: 'users.json?auth=$refreshToken',
      );

      final Map<String, dynamic> usersMap = response.data;

      User? user;

      usersMap.forEach(
        (key, value) {
          if (value['uid'] == userGetRequest.uid &&
              value['email'] == userGetRequest.email) {
            value['id'] = key;
            user = User.fromJson(value);
            return;
          }
        },
      );

      if (user != null) {
        dioResponse.data = user;
      } else {
        throw 'could not find user';
      }
    } catch (e) {
      dioResponse.isSuccess = false;
      if (e is DioException) {
        dioResponse.errorMessage = e.response?.data ?? 'error';
        dioResponse.errorStatusCode = e.response?.statusCode;
      } else {
        dioResponse.errorMessage = e.toString();
      }
    }

    return dioResponse;
  }

  /// Add user to database
  Future<DioResponse> addUser({required UserAddRequest userAddRequest}) async {
    final DioResponse dioResponse = DioResponse();

    try {
      final userAddRequestMap = userAddRequest.toMap();

      final refreshToken = await _refreshToken;

      if (refreshToken == null) throw 'no refresh token found';

      await _dioClient.post(
        url: 'users.json?auth=$refreshToken',
        data: userAddRequestMap,
      );
    } catch (e) {
      debugPrint(e.toString());

      dioResponse.isSuccess = false;

      if (e is DioException) {
        dioResponse.errorMessage = e.response?.data ?? 'error';
        dioResponse.errorStatusCode = e.response?.statusCode;
      } else {
        dioResponse.errorMessage = e.toString();
      }
    }

    return dioResponse;
  }

  Future<String?> get _refreshToken async {
    final refreshToken = await UserSecretsLocalStorageService.refreshToken;

    if (refreshToken == null) return null;

    return refreshToken;
  }
}
