import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_providers.g.dart';

enum SplashState { needsCompanySetup, unauthenticated, authenticated }

@riverpod
class SplashInitialization extends _$SplashInitialization {
  @override
  Future<SplashState> build() async {
    await ref.read(authTokenProvider.future);
    await ref.read(currentUserProvider.future);

    final hasCompletedSetup = await ref.read(companySetupProvider.future);
    if (!hasCompletedSetup) {
      return SplashState.needsCompanySetup;
    }

    final isAuthenticated = ref.read(isAuthenticatedProvider);
    if (!isAuthenticated) {
      return SplashState.unauthenticated;
    }

    await Future.wait([
      ref.read(userDetailsProvider.notifier).fetch(),
      ref.read(shiftProvider.notifier).fetch(),
      ref.read(branchProvider.notifier).fetch(),
    ]);

    return SplashState.authenticated;
  }
}
