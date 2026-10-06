import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/dio_api_service.dart';
import 'package:office_hr/core/network/interceptors/api_logging_interceptor.dart';
import 'package:office_hr/core/network/interceptors/retry_interceptor.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/services/dialog_service.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'network_providers.g.dart';

const String _authTokenKey = 'auth_token';
const String _refreshTokenKey = 'refresh_token';
const String companyIdStorageKey = 'company_id';

@Riverpod(keepAlive: true)
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

@Riverpod(keepAlive: true)
Dio refreshDio(Ref ref) {
  final config = ref.watch(apiConfigProvider);

  return Dio(
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
}

@Riverpod(keepAlive: true)
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
      ref.watch(refreshDioProvider),
      ref: ref,
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
    this._storage,
    this._refreshClient, {
    required this._ref,
  });

  final Dio _client;
  final FlutterSecureStorage _storage;
  final Ref _ref;
  final Dio _refreshClient;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _latestAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    final companyId = await readStoredValue(_storage, companyIdStorageKey);
    if (companyId != null && companyId.isNotEmpty) {
      options.headers['X-Company-Id'] = companyId;
    }
    handler.next(options);
  }

  /// Returns the freshest access token. The in-memory provider state is the
  /// source of truth because it is updated synchronously after a successful
  /// refresh; secure storage is only a fallback. Relying on storage alone can
  /// leave a just-refreshed retry carrying the previous token if the read is
  /// served from a stale cache.
  Future<String?> _latestAccessToken() async {
    if (_ref.mounted) {
      final value = _ref.read(authTokenProvider).value;
      if (value != null && value.isNotEmpty) {
        return value;
      }
    }
    return readStoredValue(_storage, _authTokenKey);
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
    // final isChangePasswordRequest =
    //     requestOptions.method.toUpperCase() == 'PATCH' &&
    //     requestOptions.path == '/api/v1/auth/password';
    final alreadyRetried = requestOptions.extra['tokenRetried'] == true;

    if (statusCode != 401 ||
        isRefreshRequest ||
        isLoginRequest ||
        // isChangePasswordRequest ||
        alreadyRetried) {
      handler.next(err);
      return;
    }

    AppLogger.w(
      'Received 401 for ${requestOptions.method} ${requestOptions.uri}. '
      'Starting refresh-token flow.',
      tag: 'AuthRefresh',
    );

    // Several requests can be in flight when an access token expires. Since
    // this interceptor is queued, an earlier request may already have
    // refreshed the token by the time this 401 is handled. Retry with that
    // token instead of refreshing again and propagating the stale 401.
    final currentAccessToken = await _latestAccessToken();
    final requestAccessToken = _accessTokenFromHeaders(requestOptions.headers);
    if (currentAccessToken != null &&
        currentAccessToken.isNotEmpty &&
        requestAccessToken != null &&
        requestAccessToken != currentAccessToken) {
      try {
        final retryOptions = await _copyRequestOptions(
          requestOptions,
          currentAccessToken,
        );
        final retryResponse = await _client.fetch<dynamic>(retryOptions);
        handler.resolve(retryResponse);
      } catch (retryError) {
        handler.next(retryError is DioException ? retryError : err);
      }
      return;
    }

    final refreshToken = await readStoredValue(_storage, _refreshTokenKey);
    if (refreshToken == null || refreshToken.isEmpty) {
      AppLogger.w(
        'Refresh skipped: no refresh token is stored.',
        tag: 'AuthRefresh',
      );
      handler.next(err);
      return;
    }

    final String accessToken;
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
        throw const FormatException(
          'Refresh response body is not a JSON object.',
        );
      }
      final authenticated = LoginResponseModel.fromJson(
        responseData,
      ).toEntity();
      accessToken = authenticated.accessToken;
      if (accessToken.isEmpty) {
        throw const FormatException(
          'Refresh response did not contain an access token.',
        );
      }

      final newRefreshToken = authenticated.refreshToken.isNotEmpty
          ? authenticated.refreshToken
          : refreshToken;
      await writeStoredValue(_storage, _authTokenKey, accessToken);
      await writeStoredValue(_storage, _refreshTokenKey, newRefreshToken);
      if (_ref.mounted) {
        await _ref.read(authTokenProvider.notifier).setToken(accessToken);
        await _ref
            .read(authRefreshTokenProvider.notifier)
            .setToken(newRefreshToken);
      }
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
    } catch (error, stackTrace) {
      if (error is DioException) {
        AppLogger.e(
          'Refresh endpoint rejected the request with HTTP '
          '${error.response?.statusCode}. Body: ${error.response?.data}',
          tag: 'AuthRefresh',
        );
      }
      AppLogger.e(
        'Refresh token flow failed. Clearing session and redirecting to login.',
        tag: 'AuthRefresh',
        error: error,
        stack: stackTrace,
      );
      // Always complete the handler. If an exception escapes before
      // `handler.next`, a QueuedInterceptor never releases the request and the
      // caller hangs forever with neither a success nor an error.
      try {
        await _clearSession();
        _navigateToLogin();
      } catch (handlingError, handlingStack) {
        AppLogger.e(
          'Failed while handling the refresh failure.',
          tag: 'AuthRefresh',
          error: handlingError,
          stack: handlingStack,
        );
      } finally {
        handler.next(err);
      }
      return;
    }

    // The refresh succeeded, so retry the original request with the new token.
    // Failures here must not clear the session.
    try {
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
    } catch (retryError, retryStackTrace) {
      AppLogger.e(
        'Retrying the original request after a successful refresh failed.',
        tag: 'AuthRefresh',
        error: retryError,
        stack: retryStackTrace,
      );
      handler.next(retryError is DioException ? retryError : err);
    }
  }

  Future<void> _clearSession() async {
    // Clear the in-memory auth state as well as persisted tokens. Clearing
    // `authTokenProvider` flips `isAuthenticatedProvider` to false, which makes
    // the router's redirect allow `/login` instead of bouncing to the
    // dashboard.
    try {
      if (_ref.mounted) {
        await _ref.read(currentUserProvider.notifier).logout();
        return;
      }
    } catch (error, stack) {
      AppLogger.e(
        'Failed to clear the session through providers. Falling back to '
        'storage cleanup.',
        tag: 'AuthRefresh',
        error: error,
        stack: stack,
      );
    }

    for (final key in const [
      _authTokenKey,
      _refreshTokenKey,
      companyIdStorageKey,
    ]) {
      try {
        await deleteStoredValue(_storage, key);
      } catch (error, stack) {
        AppLogger.e(
          'Failed to delete stored value "$key".',
          tag: 'AuthRefresh',
          error: error,
          stack: stack,
        );
      }
    }
  }

  void _navigateToLogin() {
    try {
      final context = DialogService.navigatorKey.currentContext;
      if (context != null && context.mounted) {
        GoRouter.of(context).go(AppRoutes.login);
      }
    } catch (error, stack) {
      AppLogger.e(
        'Failed to navigate to the login screen.',
        tag: 'AuthRefresh',
        error: error,
        stack: stack,
      );
    }
  }

  String _maskToken(String token) {
    if (token.length <= 8) return '********';
    return '${token.substring(0, 4)}...${token.substring(token.length - 4)}';
  }

  String? _accessTokenFromHeaders(Map<String, dynamic> headers) {
    final authorization = headers['Authorization'] ?? headers['authorization'];
    if (authorization is! String) return null;
    const prefix = 'Bearer ';
    if (!authorization.startsWith(prefix)) return null;
    return authorization.substring(prefix.length);
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

    // A FormData can only be finalized once, so clone it before retrying.
    final data = requestOptions.data;
    return requestOptions.copyWith(
      data: data is FormData ? data.clone() : data,
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

@Riverpod(keepAlive: true)
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
