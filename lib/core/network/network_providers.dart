import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/dio_api_service.dart';
import 'package:office_hr/core/network/interceptors/api_logging_interceptor.dart';
import 'package:office_hr/core/network/interceptors/retry_interceptor.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'network_providers.g.dart';

const String _authTokenKey = 'auth_token';
const String _refreshTokenKey = 'refresh_token';
const String companyIdStorageKey = 'company_id';

@riverpod
ApiConfig apiConfig(Ref ref) {
  return const ApiConfig();
}

@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage();
}

@Riverpod(keepAlive: true)
class AuthToken extends _$AuthToken {
  @override
  FutureOr<String?> build() async {
    final storage = ref.read(secureStorageProvider);
    final token = await readStoredValue(storage, _authTokenKey);
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return null;
  }

  Future<void> setToken(String? token, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (token == null || token.isEmpty) {
      await deleteStoredValue(storage, _authTokenKey);
      state = const AsyncData(null);
    } else {
      if (persist) {
        await writeStoredValue(storage, _authTokenKey, token);
      } else {
        await deleteStoredValue(storage, _authTokenKey);
      }
      state = AsyncData(token);
    }
  }
}

@Riverpod(keepAlive: true)
class AuthRefreshToken extends _$AuthRefreshToken {
  @override
  FutureOr<String?> build() async {
    final storage = ref.read(secureStorageProvider);
    final token = await readStoredValue(storage, _refreshTokenKey);
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return null;
  }

  Future<void> setToken(String? token, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (token == null || token.isEmpty) {
      await deleteStoredValue(storage, _refreshTokenKey);
      state = const AsyncData(null);
    } else {
      if (persist) {
        await writeStoredValue(storage, _refreshTokenKey, token);
      } else {
        await deleteStoredValue(storage, _refreshTokenKey);
      }
      state = AsyncData(token);
    }
  }
}

@riverpod
Dio dio(Ref ref) {
  final config = ref.watch(apiConfigProvider);
  final storage = ref.read(secureStorageProvider);

  final client = Dio(
    BaseOptions(
      baseUrl: config.baseUrl,
      connectTimeout: config.connectTimeout,
      receiveTimeout: config.receiveTimeout,
      sendTimeout: config.sendTimeout,
      headers: const {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      responseType: ResponseType.json,
      validateStatus: _validateStatus,
      receiveDataWhenStatusError: true,
    ),
  );

  client.interceptors.add(
    _RefreshTokenInterceptor(
      client,
      storage,
      ref: ref,

      baseOptions: BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: config.connectTimeout,
        receiveTimeout: config.receiveTimeout,
        sendTimeout: config.sendTimeout,
        headers: const {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        responseType: ResponseType.json,
        validateStatus: _validateStatus,
        receiveDataWhenStatusError: true,
      ),
    ),
  );

  client.interceptors.add(RetryInterceptor(dio: client));

  if (_shouldLogRequests()) {
    client.interceptors.add(const ApiLoggingInterceptor());
  }

  return client;
}

class _RefreshTokenInterceptor extends QueuedInterceptor {
  _RefreshTokenInterceptor(
    this._client,
    this._storage, {
    required this._ref,
    required BaseOptions baseOptions,
  }) : _refreshClient = Dio(baseOptions);

  final Dio _client;
  final FlutterSecureStorage _storage;
  final Ref _ref;
  final Dio _refreshClient;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await readStoredValue(_storage, _authTokenKey);
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    final companyId = await readStoredValue(_storage, companyIdStorageKey);
    if (companyId != null && companyId.isNotEmpty) {
      options.headers['X-Company-Id'] = companyId;
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;
    final requestOptions = err.requestOptions;
    final isRefreshRequest = requestOptions.path == '/api/v1/auth/refresh';
    final isLoginRequest = requestOptions.path == '/api/v1/auth/login';
    final alreadyRetried = requestOptions.extra['tokenRetried'] == true;

    if (statusCode != 401 ||
        isRefreshRequest ||
        isLoginRequest ||
        alreadyRetried) {
      handler.next(err);
      return;
    }

    AppLogger.w(
      'Received 401 for ${requestOptions.method} ${requestOptions.uri}. '
      'Starting refresh-token flow.',
      tag: 'AuthRefresh',
    );
    final refreshToken = await readStoredValue(_storage, _refreshTokenKey);
    if (refreshToken == null || refreshToken.isEmpty) {
      AppLogger.w(
        'Refresh skipped: no refresh token is stored.',
        tag: 'AuthRefresh',
      );
      handler.next(err);
      return;
    }

    try {
      final companyId = await readStoredValue(_storage, companyIdStorageKey);
      AppLogger.d(
        'Calling /api/v1/auth/refresh with refresh token ${_maskToken(refreshToken)}.',
        tag: 'AuthRefresh',
      );
      final refreshResponse = await _refreshClient.post<dynamic>(
        '/api/v1/auth/refresh',
        data: {'refreshToken': refreshToken},
        options: Options(
          headers: {
            if (companyId != null && companyId.isNotEmpty)
              'X-Company-Id': companyId,
          },
        ),
      );
      AppLogger.d(
        'Refresh endpoint returned HTTP ${refreshResponse.statusCode}.',
        tag: 'AuthRefresh',
      );
      final responseData = refreshResponse.data;
      if (responseData is! Map<String, dynamic>) {
        AppLogger.e(
          'Refresh response body is not a JSON object.',
          tag: 'AuthRefresh',
        );
        handler.next(err);
        return;
      }
      final authenticated = LoginResponseModel.fromJson(
        responseData,
      ).toEntity();
      final accessToken = authenticated.accessToken;
      if (accessToken.isEmpty) {
        AppLogger.e(
          'Refresh response did not contain an access token.',
          tag: 'AuthRefresh',
        );
        handler.next(err);
        return;
      }

      final newRefreshToken = authenticated.refreshToken.isNotEmpty
          ? authenticated.refreshToken
          : refreshToken;
      await writeStoredValue(_storage, _authTokenKey, accessToken);
      await writeStoredValue(_storage, _refreshTokenKey, newRefreshToken);
      await _ref.read(authTokenProvider.notifier).setToken(accessToken);
      await _ref
          .read(authRefreshTokenProvider.notifier)
          .setToken(newRefreshToken);
      final activeCompanyId = authenticated.session.activeCompany.id;
      if (activeCompanyId.isNotEmpty) {
        await writeStoredValue(_storage, companyIdStorageKey, activeCompanyId);
      }
      _client.options.headers['Authorization'] = 'Bearer $accessToken';
      if (activeCompanyId.isNotEmpty) {
        _client.options.headers['X-Company-Id'] = activeCompanyId;
      }

      AppLogger.s(
        'Refresh token flow succeeded. Retrying the original request once.',
        tag: 'AuthRefresh',
      );

      final retryOptions = await _copyRequestOptions(
        requestOptions,
        accessToken,
      );
      final retryResponse = await _client.fetch<dynamic>(retryOptions);
      AppLogger.s(
        'Retried ${requestOptions.method} ${requestOptions.uri} successfully.',
        tag: 'AuthRefresh',
      );
      handler.resolve(retryResponse);
    } catch (error, stackTrace) {
      if (error is DioException) {
        AppLogger.e(
          'Refresh endpoint rejected the request with HTTP '
          '${error.response?.statusCode}. Body: ${error.response?.data}',
          tag: 'AuthRefresh',
        );
      }
      AppLogger.e(
        'Refresh token flow failed. Returning the original 401 response.',
        tag: 'AuthRefresh',
        error: error,
        stack: stackTrace,
      );
      handler.next(err);
    }
  }

  String _maskToken(String token) {
    if (token.length <= 8) return '********';
    return '${token.substring(0, 4)}...${token.substring(token.length - 4)}';
  }

  Future<RequestOptions> _copyRequestOptions(
    RequestOptions requestOptions,
    String accessToken,
  ) async {
    final headers = Map<String, dynamic>.from(requestOptions.headers);
    headers['Authorization'] = 'Bearer $accessToken';
    final companyId = await readStoredValue(_storage, companyIdStorageKey);
    if (companyId != null && companyId.isNotEmpty) {
      headers['X-Company-Id'] = companyId;
    }

    return requestOptions.copyWith(
      headers: headers,
      extra: {...requestOptions.extra, 'tokenRetried': true},
    );
  }
}

Future<String?> readStoredValue(
  FlutterSecureStorage storage,
  String key,
) async {
  try {
    return await storage.read(key: key);
  } catch (_) {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}

Future<void> writeStoredValue(
  FlutterSecureStorage storage,
  String key,
  String value,
) async {
  try {
    await storage.write(key: key, value: value);
    return;
  } catch (_) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}

Future<void> deleteStoredValue(FlutterSecureStorage storage, String key) async {
  try {
    await storage.delete(key: key);
  } catch (_) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}

@riverpod
ApiService apiService(Ref ref) {
  return DioApiService(ref.watch(dioProvider));
}

bool _validateStatus(int? status) {
  return status != null && status >= 200 && status < 300;
}

bool _shouldLogRequests() {
  try {
    return kDebugMode || AppConfig.instance.features.enableLogging;
  } catch (_) {
    return kDebugMode;
  }
}
