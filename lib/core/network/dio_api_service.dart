import 'package:dio/dio.dart';
import 'package:office_hr/core/network/api_exception.dart';
import 'package:office_hr/core/network/api_service.dart';

class DioApiService implements ApiService {
  const DioApiService(this._dio);

  final Dio _dio;

  @override
  Future<T> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) {
    return _request<T>(
      'GET',
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      parser: parser,
    );
  }

  @override
  Future<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) {
    return _request<T>(
      'POST',
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      parser: parser,
    );
  }

  @override
  Future<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) {
    return _request<T>(
      'PUT',
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      parser: parser,
    );
  }

  @override
  Future<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) {
    return _request<T>(
      'PATCH',
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      parser: parser,
    );
  }

  @override
  Future<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) {
    return _request<T>(
      'DELETE',
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      parser: parser,
    );
  }

  Future<T> _request<T>(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) async {
    try {
      final response = await _dio.request<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: _buildOptions(method, options),
        cancelToken: cancelToken,
      );
      return _parseResponse(response.data, parser);
    } on DioException catch (error) {
      throw ApiException.fromDioException(error);
    } on ApiException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        ApiException(
          message: 'Unexpected error while calling $path.',
          type: ApiErrorType.unknown,
          endpoint: path,
          responseBody: error.toString(),
        ),
        stackTrace,
      );
    }
  }

  Options _buildOptions(String method, Options? options) {
    return (options ?? Options()).copyWith(method: method);
  }

  T _parseResponse<T>(dynamic data, JsonParser<T>? parser) {
    try {
      if (parser != null) {
        return parser(data);
      }
      return data as T;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        ApiException(
          message: 'Failed to parse API response for ${T.toString()}.',
          type: ApiErrorType.parsingError,
          responseBody: data,
        ),
        stackTrace,
      );
    }
  }
}
