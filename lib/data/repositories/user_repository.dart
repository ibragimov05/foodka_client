import '../models/models.dart';
import '../services/dio/user_dio_service.dart';

class UserRepository {
  final UserDioService _userDioService;

  const UserRepository({
    required UserDioService userDioService,
  }) : _userDioService = userDioService;

  Future<DioResponse> getUser({required UserGetRequest userGetRequest}) async =>
      _userDioService.getUser(userGetRequest: userGetRequest);

  Future<DioResponse> addUser({required UserAddRequest userAddRequest}) async =>
      await _userDioService.addUser(userAddRequest: userAddRequest);
}
