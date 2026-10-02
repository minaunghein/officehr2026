import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/core/network/network_providers.dart';

/// A storage that simulates a stale read cache: reads always return the value
/// that was present at startup, even after a successful write. This reproduces
/// the platform behaviour where a just-persisted token is not immediately
/// visible to a subsequent read.
class _StaleReadStorage extends FlutterSecureStorage {
  _StaleReadStorage(this._initial);

  final Map<String, String> _initial;
  final Map<String, String> _written = {};

  @override
  Future<String?> read({
    required String key,
    AppleOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    AppleOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    return _initial[key] ?? _written[key];
  }

  @override
  Future<void> write({
    required String key,
    required String? value,
    AppleOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    AppleOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    if (value == null) {
      _written.remove(key);
    } else {
      _written[key] = value;
    }
  }
}

class _MockAdapter implements HttpClientAdapter {
  _MockAdapter(this.seenAuth);

  final List<String?> seenAuth;
  int _newProtectedCalls = 0;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final auth = options.headers['Authorization'] as String?;
    seenAuth.add(auth);

    if (options.path == '/api/v1/auth/refresh') {
      return _json({
        'accessToken': 'new_access',
        'refreshToken': 'new_refresh',
        'session': {
          'active_company': {'id': 'c1'},
        },
      }, 200);
    }

    if (auth == 'Bearer new_access') {
      _newProtectedCalls++;
      return _json({'ok': true}, 200);
    }

    return _json({'message': 'unauthorized'}, 401);
  }

  int get newProtectedCalls => _newProtectedCalls;

  ResponseBody _json(Map<String, dynamic> body, int status) {
    return ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('retry after refresh sends the freshly refreshed access token even when '
      'secure storage reads are stale', () async {
    final storage = _StaleReadStorage({
      'auth_token': 'old_access',
      'refresh_token': 'old_refresh',
    });
    final seenAuth = <String?>[];

    final container = ProviderContainer(
      overrides: [
        secureStorageProvider.overrideWith((ref) => storage),
        refreshDioProvider.overrideWith(
          (ref) => Dio(
            BaseOptions(
              baseUrl: 'http://localhost',
              validateStatus: (s) => s != null && s >= 200 && s < 300,
            ),
          )..httpClientAdapter = _MockAdapter(seenAuth),
        ),
      ],
    );
    addTearDown(container.dispose);

    final dio = container.read(dioProvider);
    final mainAdapter = _MockAdapter(seenAuth);
    dio.httpClientAdapter = mainAdapter;

    final response = await dio.get<dynamic>('/api/v1/protected');

    expect(response.statusCode, 200);
    expect(
      seenAuth,
      ['Bearer old_access', null, 'Bearer new_access'],
      reason:
          'The refresh request has no bearer, and the protected retry must '
          'carry the new access token, not the stale one.',
    );
    expect(mainAdapter.newProtectedCalls, 1);
  });

  test('401 on change-password (wrong current password) does not trigger a '
      'refresh and retry', () async {
    final storage = _StaleReadStorage({
      'auth_token': 'old_access',
      'refresh_token': 'old_refresh',
    });
    final seenAuth = <String?>[];

    final container = ProviderContainer(
      overrides: [
        secureStorageProvider.overrideWith((ref) => storage),
        refreshDioProvider.overrideWith(
          (ref) => Dio(
            BaseOptions(
              baseUrl: 'http://localhost',
              validateStatus: (s) => s != null && s >= 200 && s < 300,
            ),
          )..httpClientAdapter = _MockAdapter(seenAuth),
        ),
      ],
    );
    addTearDown(container.dispose);

    final dio = container.read(dioProvider);
    final mainAdapter = _MockAdapter(seenAuth);
    dio.httpClientAdapter = mainAdapter;

    await expectLater(
      dio.patch<dynamic>(
        '/api/v1/auth/password',
        data: {'oldPassword': 'wrong', 'newPassword': 'new1'},
      ),
      throwsA(isA<DioException>()),
    );

    // The change-password call sent the token, the server rejected it
    // (wrong current password), and the interceptor propagated the 401
    // directly. No refresh, no retry.
    expect(
      seenAuth,
      ['Bearer old_access'],
      reason:
          'A 401 on the change-password endpoint means the credentials are '
          'wrong, not that the access token expired. The interceptor must '
          'not call the refresh endpoint or retry.',
    );
    expect(mainAdapter.newProtectedCalls, 0);
  });
}
