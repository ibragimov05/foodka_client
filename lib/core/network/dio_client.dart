import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../../data/services/shared_prefs/user_secrets_prefs_service.dart';

class DioClient {
  final _dio = Dio();

  DioClient._private() {
    _dio
      ..options.baseUrl = 'https://foodka-63ec6-default-rtdb.firebaseio.com/'
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..options.responseType = ResponseType.json
      ..interceptors.add(DioInterceptor())
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(),
        ),
      );
  }

  static final _singletonConstructor = DioClient._private();

  factory DioClient() => _singletonConstructor;

  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParams,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post({
    required String url,
    Map<String, dynamic>? data,
    FormData? formData,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data ?? formData,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await _dio.put(
        url,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> delete({required String url}) async {
    try {
      return await _dio.delete(url);
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

/// [DioInterceptor] for [DioClient]
class DioInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await UserSecretsLocalStorageService.idToken;

    if (accessToken == null) return;

    options.baseUrl = '${options.baseUrl}.json?auth=$accessToken';

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("INTERCEPTOR: response.data: ${response.data}");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("INTERCEPTOR: error: ${err.response?.data}");
    handler.next(err);
  }
}
