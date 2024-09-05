import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioClient {
  final _dio = Dio();

  DioClient._private() {
    _dio
      ..options.baseUrl = 'https://foodka-63ec6-default-rtdb.firebaseio.com/'
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..options.responseType = ResponseType.json
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
            printErrorData: true,
            printErrorHeaders: true,
            printErrorMessage: true,
            printRequestData: true,
            printResponseData: true,
          ),
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
    } catch (e) {
      rethrow;
    }
  }
}
