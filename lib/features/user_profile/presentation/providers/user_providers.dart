import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
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
class UpdateProfileImageNotifier extends _$UpdateProfileImageNotifier {
  @override
  FutureOr<void> build() {}

  Future<void> submit({
    required String filePath,
    required String fileName,
  }) async {
    if (state.isLoading) return;
    final session = ref.read(currentUserProvider).value;
    if (session == null) {
      throw StateError('No signed-in user is available.');
    }
    final upload = ref.read(uploadFileUsecaseProvider);
    final repository = ref.read(userRepositoryProvider);
    state = const AsyncLoading();

    try {
      final uploaded = await upload(filePath: filePath, fileName: fileName);
      await repository.updateProfileImage(
        userId: session.userId,
        email: session.email,
        profileImgId: uploaded.id,
      );
      if (!ref.mounted) return;

      final currentSession = ref.read(currentUserProvider).value;
      if (currentSession?.userId == session.userId) {
        await ref
            .read(currentUserProvider.notifier)
            .setSession(
              currentSession!.copyWith(
                user: currentSession.user.copyWith(profileImgId: uploaded.id),
              ),
            );
      }
      ref.invalidate(userByIdProvider(session.userId));
      state = const AsyncData(null);
    } catch (error, stack) {
      if (ref.mounted) state = AsyncError(error, stack);
      rethrow;
    }
  }
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
