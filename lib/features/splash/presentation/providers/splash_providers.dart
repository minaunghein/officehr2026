import 'package:office_hr/core/network/api_exception.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_providers.g.dart';

enum SplashState { needsCompanySetup, unauthenticated, authenticated }

@riverpod
class SplashInitialization extends _$SplashInitialization {
  @override
  Future<SplashState> build() async {
    await ref.read(authTokenProvider.future);

    final hasCompletedSetup = await ref.read(companySetupProvider.future);
    if (!hasCompletedSetup) {
      return SplashState.needsCompanySetup;
    }

    final isAuthenticated = ref.read(isAuthenticatedProvider);
    if (!isAuthenticated) {
      return SplashState.unauthenticated;
    }

    try {
      await ref.read(currentUserProvider.notifier).loadSession();
    } on ApiException catch (error) {
      if (error.isUnauthorized) {
        return SplashState.unauthenticated;
      }
      rethrow;
    }

    return SplashState.authenticated;
  }
}
