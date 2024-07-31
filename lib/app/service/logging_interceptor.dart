import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor extends Interceptor {
  final Logger logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i('REQUEST[${options.method}] => PATH: ${options.path}');
    logger.i('REQUEST HEADERS: ${options.headers}');
    logger.i('REQUEST DATA: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    logger.e('ERROR MESSAGE: ${err.message}');
    super.onError(err, handler);
  }
}
