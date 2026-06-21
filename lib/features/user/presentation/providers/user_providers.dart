import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/user/data/datasources/user_remote_datasource.dart';
import 'package:office_hr/features/user/data/repositories/user_repository_impl.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/repository/user_repository.dart';
import 'package:office_hr/features/user/domain/usecases/get_branch.dart';
import 'package:office_hr/features/user/domain/usecases/get_shift.dart';
import 'package:office_hr/features/user/domain/usecases/get_user_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_providers.g.dart';

// ==================== Remote Data Source ====================
@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return UserRemoteDataSourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
UserRepository userRepository(Ref ref) {
  final remoteDataSource = ref.watch(userRemoteDataSourceProvider);
  return UserRepositoryImpl(remoteDataSource);
}

// ==================== Use Cases ====================
@riverpod
GetUserDetailsUseCase getUserDetailsUseCase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return GetUserDetailsUseCase(repository);
}

@riverpod
GetShiftUseCase getShiftUseCase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return GetShiftUseCase(repository);
}

@riverpod
GetBranchUseCase getBranchUseCase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return GetBranchUseCase(repository);
}

// ==================== State Management ====================

@Riverpod(keepAlive: true)
class UserDetailsNotifier extends _$UserDetailsNotifier {
  @override
  FutureOr<UserDetails?> build() {
    return null;
  }

  Future<void> fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getUserDetailsUseCaseProvider);
      return await usecase();
    });
  }

  void clear() {
    state = const AsyncData(null);
  }
}

@Riverpod(keepAlive: true)
class ShiftNotifier extends _$ShiftNotifier {
  @override
  FutureOr<Shift?> build() {
    return null;
  }

  Future<void> fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getShiftUseCaseProvider);
      return await usecase();
    });
  }

  void clear() {
    state = const AsyncData(null);
  }
}

@Riverpod(keepAlive: true)
class BranchNotifier extends _$BranchNotifier {
  @override
  FutureOr<Branch?> build() {
    return null;
  }

  Future<void> fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(getBranchUseCaseProvider);
      return await usecase();
    });
  }

  void clear() {
    state = const AsyncData(null);
  }
}
