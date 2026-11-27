import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:office_hr/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/change_password_result.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';
import 'package:office_hr/features/auth/domain/usecases/get_session.dart';
import 'package:office_hr/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:office_hr/features/auth/domain/usecases/login_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

// ==================== Remote Data Source ====================
@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AuthRemoteDataSourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
AuthRepository authRepository(Ref ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource);
}

// ==================== Use Cases ====================
@riverpod
LoginUsecase loginUsecase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return LoginUsecase(repository);
}

@riverpod
GetSessionUseCase getSessionUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return GetSessionUseCase(repository);
}

@riverpod
ChangePasswordUsecase changePasswordUsecase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return ChangePasswordUsecase(repository);
}

// ==================== State Management ====================

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  int _sessionRevision = 0;

  @override
  Future<AuthSession?> build() async => null;

  Future<AuthSession> loadSession() async {
    final revision = ++_sessionRevision;
    // Keep the active session usable during refresh so permissions don't
    // briefly disappear from open routes and tabs.
    if (state.value == null) state = const AsyncValue.loading();
    final getSessionUseCase = ref.read(getSessionUseCaseProvider);
    try {
      final session = await getSessionUseCase();
      if (ref.mounted && revision == _sessionRevision) {
        state = AsyncData(session);
      }
      return session;
    } catch (error, stackTrace) {
      if (ref.mounted && revision == _sessionRevision) {
        state = AsyncError(error, stackTrace);
      }
      rethrow;
    }
  }

  void refresh() {
    ref.invalidateSelf();
  }

  Future<void> setSession(AuthSession session) async {
    _sessionRevision++;
    state = AsyncData(session);
  }

  Future<void> clear() async {
    _sessionRevision++;
    state = const AsyncData(null);
  }

  Future<void> logout() async {
    await clear();
    await ref.read(authTokenProvider.notifier).setToken(null);
    await ref.read(authRefreshTokenProvider.notifier).setToken(null);
    await deleteStoredValue(
      ref.read(secureStorageProvider),
      companyIdStorageKey,
    );
  }
}

@Riverpod(keepAlive: true)
Future<AuthSession> getSession(Ref ref) async {
  return ref.read(currentUserProvider.notifier).loadSession();
}

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  Future<void> build() async {}

  Future<void> login({
    required String username,
    required String password,
    bool rememberDevice = false,
  }) async {
    state = const AsyncValue.loading();
    final loginUsecase = ref.read(loginUsecaseProvider);
    final currentUserNotifier = ref.read(currentUserProvider.notifier);
    final authTokenNotifier = ref.read(authTokenProvider.notifier);
    final authRefreshTokenNotifier = ref.read(
      authRefreshTokenProvider.notifier,
    );
    final newState = await AsyncValue.guard(() async {
      final authenticated = await loginUsecase(
        username: username,
        password: password,
      );
      await currentUserNotifier.setSession(authenticated.session);
      await authTokenNotifier.setToken(
        authenticated.accessToken,
        persist: true,
      );
      await authRefreshTokenNotifier.setToken(
        authenticated.refreshToken,
        persist: true,
      );
      final storage = ref.read(secureStorageProvider);
      final companyId = authenticated.session.activeCompany.id;
      if (companyId.isNotEmpty) {
        await writeStoredValue(storage, companyIdStorageKey, companyId);
      } else {
        await deleteStoredValue(storage, companyIdStorageKey);
      }
      ref.invalidate(getSessionProvider);
    });

    if (ref.mounted) {
      state = newState;
    }
  }

  Future<void> logout() async {
    await ref.read(currentUserProvider.notifier).logout();
    if (ref.mounted) {
      state = const AsyncValue.data(null);
    }
  }
}

@riverpod
class ChangePasswordNotifier extends _$ChangePasswordNotifier {
  @override
  FutureOr<void> build() {}

  Future<ChangePasswordResult> submit({
    required String oldPassword,
    required String newPassword,
  }) async {
    state = const AsyncValue.loading();
    final usecase = ref.read(changePasswordUsecaseProvider);
    final result = await AsyncValue.guard(
      () => usecase(oldPassword: oldPassword, newPassword: newPassword),
    );

    if (result.hasError) {
      if (ref.mounted) {
        state = AsyncValue.error(
          result.error!,
          result.stackTrace ?? StackTrace.current,
        );
      }
      Error.throwWithStackTrace(
        result.error!,
        result.stackTrace ?? StackTrace.current,
      );
    }

    final changeResult = result.value!;
    await _applySession(changeResult);

    if (ref.mounted) {
      state = const AsyncValue.data(null);
    }
    return changeResult;
  }

  Future<void> _applySession(ChangePasswordResult result) async {
    final authTokenNotifier = ref.read(authTokenProvider.notifier);
    final refreshTokenNotifier = ref.read(authRefreshTokenProvider.notifier);
    final currentUserNotifier = ref.read(currentUserProvider.notifier);

    if (result.hasAccessToken) {
      await authTokenNotifier.setToken(result.accessToken);
    }
    if (result.hasRefreshToken) {
      await refreshTokenNotifier.setToken(result.refreshToken);
    }

    final session = result.session;
    if (session != null) {
      await currentUserNotifier.setSession(session);
      final companyId = session.activeCompany.id;
      final storage = ref.read(secureStorageProvider);
      if (companyId.isNotEmpty) {
        await writeStoredValue(storage, companyIdStorageKey, companyId);
      }
    }
  }
}

@riverpod
class CompanySetupNotifier extends _$CompanySetupNotifier {
  static const healthPath = '/api/v1/health';

  @override
  Future<bool> build() async {
    final storedBaseUrl = await ref.watch(apiBaseUrlProvider.future);
    return storedBaseUrl != null && storedBaseUrl.isNotEmpty;
  }

  /// Normalizes the typed value, verifies it with `GET /api/v1/health`, and
  /// only then persists it as the app-wide API base URL. Returns `null` on
  /// success or a localized error message when the URL is invalid/unreachable.
  Future<String?> submitBaseUrl(String rawInput) async {
    final candidates = _candidateBaseUrls(rawInput);
    if (candidates.isEmpty) {
      return 'Enter a valid API base URL, e.g. api.officehr.com.'.tr();
    }

    final previousState = state;
    state = const AsyncValue.loading();

    String? healthError;
    for (final baseUrl in candidates) {
      healthError = await _checkHealth(baseUrl);
      if (healthError == null) {
        await ref.read(apiBaseUrlProvider.notifier).setBaseUrl(baseUrl);
        state = const AsyncValue.data(true);
        return null;
      }
    }

    state = previousState;
    return healthError;
  }

  /// Scheme-less input (e.g. `api.officehr.com` or `193.180.208.196:3001`)
  /// is probed as `https://` first, then `http://`, so the working scheme is
  /// picked automatically. Explicitly typed schemes are used as-is.
  static List<String> _candidateBaseUrls(String rawInput) {
    final value = rawInput.trim().replaceAll(RegExp(r'\s+'), '');
    if (value.isEmpty) return const [];

    final hasScheme =
        value.startsWith('http://') || value.startsWith('https://');
    final variants = hasScheme ? [value] : ['https://$value', 'http://$value'];

    return variants
        .map(ApiConfig.normalizeBaseUrl)
        .whereType<String>()
        .toList();
  }

  Future<String?> _checkHealth(String baseUrl) async {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: const {'Accept': 'application/json'},
      ),
    );

    try {
      final response = await dio.get<dynamic>(healthPath);
      if (response.statusCode == 200) return null;
      return '${'The server responded with an unexpected status.'.tr()} (HTTP ${response.statusCode})';
    } on DioException catch (error) {
      final status = error.response?.statusCode;
      if (status != null) {
        return '${'The API health check failed.'.tr()} (HTTP $status)';
      }
      return 'Could not reach the API. Check the URL and your internet connection, then try again.'
          .tr();
    } finally {
      dio.close(force: true);
    }
  }
}

@riverpod
bool isAuthenticated(Ref ref) {
  final token = ref.watch(authTokenProvider).value;
  return token != null && token.isNotEmpty;
}

/// The signed-in user's id, or `null` when logged out.
///
/// Per-user data providers (keepAlive caches such as leave balances/requests
/// or monthly attendance stats) MUST `ref.watch` this inside their `build()`
/// so their cache is discarded and refetched when a different account logs in.
/// Without it, a keepAlive provider returns the previous user's data after a
/// logout/login until the user manually refreshes.
@riverpod
String? currentUserId(Ref ref) {
  return ref.watch(currentUserProvider).value?.userId;
}
