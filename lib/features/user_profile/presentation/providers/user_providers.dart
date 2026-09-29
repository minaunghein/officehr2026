import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_providers.g.dart';

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
