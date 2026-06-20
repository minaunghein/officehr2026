import 'package:dio/dio.dart';
import 'package:office_hr/core/services/app_logger.dart';

class ApiLoggingInterceptor extends Interceptor {
  const ApiLoggingInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    AppLogger.d('--> ${options.method} ${options.uri}');
    if (options.headers.isNotEmpty) {
      AppLogger.d('Headers: ${options.headers}');
    }
    if (options.data != null) {
      AppLogger.d('Body: ${options.data}');
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    AppLogger.d('<-- ${response.statusCode} ${response.requestOptions.uri}');
    AppLogger.d('Response: ${response.data}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    AppLogger.d(
      '<-- ERROR ${err.requestOptions.method} ${err.requestOptions.uri}',
    );
    AppLogger.d('Message: ${err.message}');
    if (err.response?.data != null) {
      AppLogger.d('Error body: ${err.response?.data}');
    }
    handler.next(err);
  }
}
