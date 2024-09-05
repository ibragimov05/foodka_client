import 'package:dio/dio.dart';

import '../../models/models.dart';
import '../../../core/network/dio_client.dart';

class UserDioService {
  final DioClient _dioClient = DioClient();

  Future<DioResponse> getUser({required UserGetRequest userGetRequest}) async {
    final DioResponse dioResponse = DioResponse();

    try {
      final response = await _dioClient.get(url: 'users');

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

  // Future<DioResponse> addUser
}
