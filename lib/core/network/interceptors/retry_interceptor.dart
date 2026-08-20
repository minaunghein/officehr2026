import 'dart:io';

import 'package:dio/dio.dart';
import 'package:office_hr/core/services/app_logger.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryDelay = const Duration(seconds: 1),
  });

  static const retryCountKey = 'api_retry_count';
  static const skipRetryKey = 'skip_api_retry';

  final Dio dio;
  final int maxRetries;
  final Duration retryDelay;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final requestOptions = err.requestOptions;
    final retryCount = requestOptions.extra[retryCountKey] as int? ?? 0;

    if (requestOptions.extra[skipRetryKey] == true ||
        !_isRetryable(err) ||
        retryCount >= maxRetries) {
      handler.next(err);
      return;
    }

    final nextRetryCount = retryCount + 1;
    AppLogger.w(
      'Retrying ${requestOptions.method} ${requestOptions.uri} '
      '(retry $nextRetryCount/$maxRetries).',
      tag: 'ApiRetry',
    );
    await Future<void>.delayed(retryDelay);

    try {
      final retryOptions = requestOptions.copyWith(
        extra: {...requestOptions.extra, retryCountKey: nextRetryCount},
      );
      final response = await dio.fetch<dynamic>(retryOptions);
      handler.resolve(response);
    } catch (retryError, stackTrace) {
      AppLogger.e(
        'Retry $nextRetryCount/$maxRetries failed for '
        '${requestOptions.method} ${requestOptions.uri}.',
        tag: 'ApiRetry',
        error: retryError,
        stack: stackTrace,
      );
      handler.next(
        retryError is DioException
            ? retryError
            : DioException(requestOptions: requestOptions, error: retryError),
      );
    }
  }

  bool _isRetryable(DioException err) {
    return err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.error is SocketException;
  }
}
