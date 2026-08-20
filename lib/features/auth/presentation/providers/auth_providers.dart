import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:office_hr/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';
import 'package:office_hr/features/auth/domain/usecases/get_session.dart';
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

// ==================== State Management ====================

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  @override
  Future<AuthSession?> build() async => null;

  Future<AuthSession> loadSession() async {
    state = const AsyncValue.loading();
    final getSessionUseCase = ref.read(getSessionUseCaseProvider);
    try {
      final session = await getSessionUseCase();
      state = AsyncData(session);
      return session;
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  void refresh() {
    ref.invalidateSelf();
  }

  Future<void> setSession(AuthSession session) async {
    state = AsyncData(session);
  }

  Future<void> clear() async {
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

@riverpod
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
class CompanySetupNotifier extends _$CompanySetupNotifier {
  static const _key = 'company_setup_completed';

  @override
  Future<bool> build() async {
    final storage = ref.read(secureStorageProvider);
    final val = await readStoredValue(storage, _key);
    return val == 'true';
  }

  Future<void> completeSetup() async {
    final storage = ref.read(secureStorageProvider);
    await writeStoredValue(storage, _key, 'true');
    state = const AsyncData(true);
  }
}

@riverpod
bool isAuthenticated(Ref ref) {
  final token = ref.watch(authTokenProvider).value;
  return token != null && token.isNotEmpty;
}
