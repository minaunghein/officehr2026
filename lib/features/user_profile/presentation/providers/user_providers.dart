import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/user_profile/data/datasources/user_remote_datasource.dart';
import 'package:office_hr/features/user_profile/data/repositories/user_repository_impl.dart';
import 'package:office_hr/features/user_profile/domain/entities/user_details.dart';
import 'package:office_hr/features/user_profile/domain/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_providers.g.dart';

@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  return UserRemoteDataSourceImpl(ref.watch(apiServiceProvider));
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(ref.watch(userRemoteDataSourceProvider));
}

@riverpod
Future<UserDetails> userById(Ref ref, String id) {
  return ref.watch(userRepositoryProvider).getUserById(id);
}

@Riverpod(keepAlive: true)
class UserDetailsNotifier extends _$UserDetailsNotifier {
  @override
  FutureOr<AuthSession?> build() {
    return ref.watch(currentUserProvider).value;
  }

  Future<void> fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(currentUserProvider.notifier).loadSession();
    });
  }

  void clear() {
    state = const AsyncData(null);
  }
}
