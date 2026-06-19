import 'package:dio/dio.dart';

final class DioClient {
  DioClient._();
  static final instance = Dio(
    BaseOptions(baseUrl: const String.fromEnvironment('API_BASE_URL')),
  )..interceptors.addAll([
      LogInterceptor(responseBody: true),
      // auth interceptor jika diperlukan
    ]);
}
