import 'dart:convert';

import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:office_hr/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:office_hr/features/auth/domain/entities/auth_user.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';
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

// ==================== State Management ====================

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  static const _userKey = 'auth_user';

  @override
  Future<AuthUser?> build() async {
    final storage = ref.read(secureStorageProvider);
    final raw = await storage.read(key: _userKey);
    if (raw == null || raw.isEmpty) return null;

    try {
      final user = AuthUser.fromJson(jsonDecode(raw) as Map<String, dynamic>);
      if (user.isTokenValid) return user;
      await storage.delete(key: _userKey);
      return null;
    } catch (_) {
      await storage.delete(key: _userKey);
      return null;
    }
  }

  Future<void> setUser(AuthUser user, {bool persist = true}) async {
    final storage = ref.read(secureStorageProvider);
    if (persist) {
      await storage.write(key: _userKey, value: jsonEncode(user.toJson()));
    } else {
      await storage.delete(key: _userKey);
    }
    state = AsyncData(user);
  }

  Future<void> clear() async {
    final storage = ref.read(secureStorageProvider);
    await storage.delete(key: _userKey);
    state = const AsyncData(null);
  }
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

    state = await AsyncValue.guard(() async {
      final user = await loginUsecase(username: username, password: password);
      await ref.read(currentUserProvider.notifier).setUser(user, persist: true);
      await ref.read(authTokenProvider.notifier).setToken(user.accessToken, persist: true);
    });
  }

  Future<void> logout() async {
    await ref.read(currentUserProvider.notifier).clear();
    await ref.read(authTokenProvider.notifier).setToken(null);
    state = const AsyncValue.data(null);
  }
}

@Riverpod(keepAlive: true)
class CompanySetupNotifier extends _$CompanySetupNotifier {
  static const _key = 'company_setup_completed';

  @override
  Future<bool> build() async {
    final storage = ref.read(secureStorageProvider);
    final val = await storage.read(key: _key);
    return val == 'true';
  }

  Future<void> completeSetup() async {
    final storage = ref.read(secureStorageProvider);
    await storage.write(key: _key, value: 'true');
    state = const AsyncData(true);
  }
}

@riverpod
bool isAuthenticated(Ref ref) {
  final user = ref.watch(currentUserProvider).value;
  return user != null && user.isTokenValid;
}
