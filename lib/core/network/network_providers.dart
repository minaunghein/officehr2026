import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/dio_api_service.dart';
import 'package:office_hr/core/network/interceptors/api_logging_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'network_providers.g.dart';

const String _authTokenKey = 'auth_token';
const String _refreshTokenKey = 'refresh_token';
const String _authUserKey = 'auth_user';
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
  final tokenAsync = ref.watch(authTokenProvider);
  final token = tokenAsync.value;
  final storage = ref.watch(secureStorageProvider);

  final client = Dio(
    BaseOptions(
      baseUrl: config.baseUrl,
      connectTimeout: config.connectTimeout,
      receiveTimeout: config.receiveTimeout,
      sendTimeout: config.sendTimeout,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
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

  if (_shouldLogRequests()) {
    client.interceptors.add(const ApiLoggingInterceptor());
  }

  return client;
}

class _RefreshTokenInterceptor extends QueuedInterceptor {
  _RefreshTokenInterceptor(
    this._client,
    this._storage, {
    required BaseOptions baseOptions,
  }) : _refreshClient = Dio(baseOptions);

  final Dio _client;
  final FlutterSecureStorage _storage;
  final Dio _refreshClient;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
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

    final refreshToken = await readStoredValue(_storage, _refreshTokenKey);
    if (refreshToken == null || refreshToken.isEmpty) {
      handler.next(err);
      return;
    }

    try {
      final companyId = await readStoredValue(_storage, companyIdStorageKey);
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
      final responseData = refreshResponse.data;
      if (responseData is! Map<String, dynamic>) {
        handler.next(err);
        return;
      }
      final data = responseData['data'] is Map<String, dynamic>
          ? responseData['data'] as Map<String, dynamic>
          : responseData;

      final accessToken =
          (data['accessToken'] ?? data['access_token']) as String?;
      if (accessToken == null || accessToken.isEmpty) {
        handler.next(err);
        return;
      }

      final newRefreshToken =
          (data['refreshToken'] ?? data['refresh_token']) as String? ??
          refreshToken;
      await writeStoredValue(_storage, _authTokenKey, accessToken);
      await writeStoredValue(_storage, _refreshTokenKey, newRefreshToken);
      await _updateStoredUser(data, accessToken, newRefreshToken);
      _client.options.headers['Authorization'] = 'Bearer $accessToken';
      if (companyId != null && companyId.isNotEmpty) {
        _client.options.headers['X-Company-Id'] = companyId;
      }

      final retryOptions = await _copyRequestOptions(
        requestOptions,
        accessToken,
      );
      final retryResponse = await _client.fetch<dynamic>(retryOptions);
      handler.resolve(retryResponse);
    } catch (_) {
      handler.next(err);
    }
  }

  Future<void> _updateStoredUser(
    Map<String, dynamic> tokenData,
    String accessToken,
    String refreshToken,
  ) async {
    final rawUser = await readStoredValue(_storage, _authUserKey);
    if (rawUser == null || rawUser.isEmpty) return;

    final decoded = jsonDecode(rawUser);
    if (decoded is! Map<String, dynamic>) return;

    final expiresIn = tokenData['expiresIn'] as int? ?? 0;
    decoded['accessToken'] = accessToken;
    decoded['refreshToken'] = refreshToken;
    decoded['tokenType'] = tokenData['token_type'] as String? ?? 'Bearer';
    decoded['expiresAt'] = DateTime.now()
        .add(Duration(seconds: expiresIn))
        .toIso8601String();

    await writeStoredValue(_storage, _authUserKey, jsonEncode(decoded));
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
