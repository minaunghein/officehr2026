import 'package:dio/dio.dart';

enum ApiErrorType {
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  conflict,
  validationError,
  serverError,
  networkError,
  timeout,
  cancelled,
  parsingError,
  unknown,
}

class ApiException implements Exception {
  const ApiException({
    required this.message,
    this.type = ApiErrorType.unknown,
    this.statusCode,
    this.endpoint,
    this.responseBody,
  });

  final String message;
  final ApiErrorType type;
  final int? statusCode;
  final String? endpoint;
  final Object? responseBody;

  factory ApiException.fromDioException(DioException error) {
    final statusCode = error.response?.statusCode;
    final responseBody = error.response?.data;
    final responseMessage = _extractMessage(responseBody);

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(
          message: 'Request timed out. Please try again.',
          type: ApiErrorType.timeout,
          statusCode: statusCode,
          endpoint: error.requestOptions.path,
          responseBody: responseBody,
        );
      case DioExceptionType.cancel:
        return ApiException(
          message: 'Request was cancelled.',
          type: ApiErrorType.cancelled,
          statusCode: statusCode,
          endpoint: error.requestOptions.path,
          responseBody: responseBody,
        );
      case DioExceptionType.connectionError:
        return ApiException(
          message:
              'No internet connection. Please check your network and try again.',
          type: ApiErrorType.networkError,
          statusCode: statusCode,
          endpoint: error.requestOptions.path,
          responseBody: responseBody,
        );
      case DioExceptionType.badResponse:
        return ApiException(
          message: responseMessage ?? _messageForStatusCode(statusCode),
          type: _typeForStatusCode(statusCode),
          statusCode: statusCode,
          endpoint: error.requestOptions.path,
          responseBody: responseBody,
        );
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        break;
    }

    return ApiException(
      message:
          responseMessage ??
          error.message ??
          'Something went wrong. Please try again.',
      type: ApiErrorType.unknown,
      statusCode: statusCode,
      endpoint: error.requestOptions.path,
      responseBody: responseBody,
    );
  }

  static ApiErrorType _typeForStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return ApiErrorType.badRequest;
      case 401:
        return ApiErrorType.unauthorized;
      case 403:
        return ApiErrorType.forbidden;
      case 404:
        return ApiErrorType.notFound;
      case 409:
        return ApiErrorType.conflict;
      case 422:
        return ApiErrorType.validationError;
      default:
        if (statusCode != null && statusCode >= 500) {
          return ApiErrorType.serverError;
        }
        return ApiErrorType.unknown;
    }
  }

  static String _messageForStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'The request could not be processed.';
      case 401:
        return 'Your session has expired. Please sign in again.';
      case 403:
        return 'You do not have permission to perform this action.';
      case 404:
        return 'The requested resource was not found.';
      case 409:
        return 'A conflict occurred while processing the request.';
      case 422:
        return 'Some fields are invalid. Please check your input.';
      case 429:
        return 'Too many requests. Please try again later.';
      default:
        if (statusCode != null && statusCode >= 500) {
          return 'Server error. Please try again later.';
        }
        return 'Unexpected response from the server.';
    }
  }

  static String? _extractMessage(dynamic responseBody) {
    if (responseBody == null) {
      return null;
    }

    if (responseBody is String && responseBody.trim().isNotEmpty) {
      return responseBody.trim();
    }

    if (responseBody is Map<String, dynamic>) {
      const keys = ['message', 'error', 'detail', 'title', 'description'];
      for (final key in keys) {
        final value = responseBody[key];
        if (value is String && value.trim().isNotEmpty) {
          return value.trim();
        }
      }

      final errors = responseBody['errors'];
      if (errors is String && errors.trim().isNotEmpty) {
        return errors.trim();
      }
      if (errors is List && errors.isNotEmpty) {
        final first = errors.first;
        if (first is String && first.trim().isNotEmpty) {
          return first.trim();
        }
      }
      if (errors is Map<String, dynamic>) {
        for (final entry in errors.entries) {
          final value = entry.value;
          if (value is String && value.trim().isNotEmpty) {
            return value.trim();
          }
          if (value is List && value.isNotEmpty) {
            final first = value.first;
            if (first is String && first.trim().isNotEmpty) {
              return first.trim();
            }
          }
        }
      }
    }

    return null;
  }

  @override
  String toString() {
    return 'ApiException(type: $type, statusCode: $statusCode, message: $message, endpoint: $endpoint)';
  }
}
