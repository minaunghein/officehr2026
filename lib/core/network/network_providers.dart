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
  static const String _tokenKey = 'auth_token';

  @override
  FutureOr<String?> build() async {
    final storage = ref.read(secureStorageProvider);
    final token = await storage.read(key: _tokenKey);
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return null;
  }

  Future<void> setToken(String? token, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (token == null || token.isEmpty) {
      await storage.delete(key: _tokenKey);
      state = const AsyncData(null);
    } else {
      if (persist) {
        await storage.write(key: _tokenKey, value: token);
      } else {
        await storage.delete(key: _tokenKey);
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

  return client;
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
