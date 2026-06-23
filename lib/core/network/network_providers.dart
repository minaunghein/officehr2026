import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/dio_api_service.dart';
import 'package:office_hr/core/network/interceptors/api_logging_interceptor.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_providers.g.dart';

const String _authTokenKey = 'auth_token';
const String _refreshTokenKey = 'refresh_token';
const String _authUserKey = 'auth_user';

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
    final token = await storage.read(key: _authTokenKey);
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return null;
  }

  Future<void> setToken(String? token, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (token == null || token.isEmpty) {
      await storage.delete(key: _authTokenKey);
      state = const AsyncData(null);
    } else {
      if (persist) {
        await storage.write(key: _authTokenKey, value: token);
      } else {
        await storage.delete(key: _authTokenKey);
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
    final token = await storage.read(key: _refreshTokenKey);
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return null;
  }

  Future<void> setToken(String? token, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (token == null || token.isEmpty) {
      await storage.delete(key: _refreshTokenKey);
      state = const AsyncData(null);
    } else {
      if (persist) {
        await storage.write(key: _refreshTokenKey, value: token);
      } else {
        await storage.delete(key: _refreshTokenKey);
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

  if (_shouldLogRequests()) {
    client.interceptors.add(const ApiLoggingInterceptor());
  }

  client.interceptors.add(
    _RefreshTokenInterceptor(
      client: client,
      storage: storage,
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

  return client;
}

class _RefreshTokenInterceptor extends QueuedInterceptor {
  _RefreshTokenInterceptor({
    required this._client,
    required this._storage,
    required BaseOptions baseOptions,
  }) : _refreshClient = Dio(baseOptions);

  final Dio _client;
  final FlutterSecureStorage _storage;
  final Dio _refreshClient;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;
    final requestOptions = err.requestOptions;
    final isRefreshRequest = requestOptions.path == '/api/v1/users/refresh';
    final alreadyRetried = requestOptions.extra['tokenRetried'] == true;

    if (statusCode != 401 || isRefreshRequest || alreadyRetried) {
      handler.next(err);
      return;
    }

    final refreshToken = await _storage.read(key: _refreshTokenKey);
    if (refreshToken == null || refreshToken.isEmpty) {
      handler.next(err);
      return;
    }

    try {
      final refreshResponse = await _refreshClient.post<dynamic>(
        '/api/v1/users/refresh',
        data: {'refresh_token': refreshToken},
      );
      final data = refreshResponse.data;
      if (data is! Map<String, dynamic>) {
        handler.next(err);
        return;
      }

      final accessToken = data['access_token'] as String?;
      if (accessToken == null || accessToken.isEmpty) {
        handler.next(err);
        return;
      }

      final newRefreshToken = data['refresh_token'] as String? ?? refreshToken;
      await _storage.write(key: _authTokenKey, value: accessToken);
      await _storage.write(key: _refreshTokenKey, value: newRefreshToken);
      await _updateStoredUser(data, accessToken, newRefreshToken);
      _client.options.headers['Authorization'] = 'Bearer $accessToken';

      final retryOptions = _copyRequestOptions(requestOptions, accessToken);
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
    final rawUser = await _storage.read(key: _authUserKey);
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

    await _storage.write(key: _authUserKey, value: jsonEncode(decoded));
  }

  RequestOptions _copyRequestOptions(
    RequestOptions requestOptions,
    String accessToken,
  ) {
    final headers = Map<String, dynamic>.from(requestOptions.headers);
    headers['Authorization'] = 'Bearer $accessToken';

    return requestOptions.copyWith(
      headers: headers,
      extra: {...requestOptions.extra, 'tokenRetried': true},
    );
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
