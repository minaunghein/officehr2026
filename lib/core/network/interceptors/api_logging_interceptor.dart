import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiLoggingInterceptor extends Interceptor {
  const ApiLoggingInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('--> ${options.method} ${options.uri}');
    if (options.headers.isNotEmpty) {
      debugPrint('Headers: ${options.headers}');
    }
    if (options.data != null) {
      debugPrint('Body: ${options.data}');
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    debugPrint('<-- ${response.statusCode} ${response.requestOptions.uri}');
    debugPrint('Response: ${response.data}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      '<-- ERROR ${err.requestOptions.method} ${err.requestOptions.uri}',
    );
    debugPrint('Message: ${err.message}');
    if (err.response?.data != null) {
      debugPrint('Error body: ${err.response?.data}');
    }
    handler.next(err);
  }
}
