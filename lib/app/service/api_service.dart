import 'package:dio/dio.dart';
import 'package:homevice/app/service/api_config.dart';
import 'package:homevice/app/service/logging_interceptor.dart';

class ApiService {
  final Dio _dio;

  ApiService() : _dio = Dio() {
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<Response> login(String email, String password) {
    return _dio.post(
      '${ApiConfig.baseUrl}/auth/admin/login',
      data: {
        'email': email,
        'password': password,
      },
    );
  }
}
