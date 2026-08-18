// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authRemoteDataSource)
final authRemoteDataSourceProvider = AuthRemoteDataSourceProvider._();

final class AuthRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AuthRemoteDataSource,
          AuthRemoteDataSource,
          AuthRemoteDataSource
        >
    with $Provider<AuthRemoteDataSource> {
  AuthRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<AuthRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthRemoteDataSource create(Ref ref) {
    return authRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRemoteDataSource>(value),
    );
  }
}

String _$authRemoteDataSourceHash() =>
    r'2b77f87cd75420ffd8a80f03ef04bb7ea6bea0e0';

@ProviderFor(authRepository)
final authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'43e05b07a705006cf920b080f78421ecc8bab1d9';

@ProviderFor(loginUsecase)
final loginUsecaseProvider = LoginUsecaseProvider._();

final class LoginUsecaseProvider
    extends $FunctionalProvider<LoginUsecase, LoginUsecase, LoginUsecase>
    with $Provider<LoginUsecase> {
  LoginUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUsecaseHash();

  @$internal
  @override
  $ProviderElement<LoginUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUsecase create(Ref ref) {
    return loginUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUsecase>(value),
    );
  }
}

String _$loginUsecaseHash() => r'406312b4f824a6c7127408913113b94909c9c451';

@ProviderFor(getSessionUseCase)
final getSessionUseCaseProvider = GetSessionUseCaseProvider._();

final class GetSessionUseCaseProvider
    extends
        $FunctionalProvider<
          GetSessionUseCase,
          GetSessionUseCase,
          GetSessionUseCase
        >
    with $Provider<GetSessionUseCase> {
  GetSessionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getSessionUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getSessionUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetSessionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetSessionUseCase create(Ref ref) {
    return getSessionUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSessionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSessionUseCase>(value),
    );
  }
}

String _$getSessionUseCaseHash() => r'5baacbf87572499cc34c41a2d3107e0e9e0db77a';

@ProviderFor(CurrentUser)
final currentUserProvider = CurrentUserProvider._();

final class CurrentUserProvider
    extends $AsyncNotifierProvider<CurrentUser, AuthSession?> {
  CurrentUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserHash();

  @$internal
  @override
  CurrentUser create() => CurrentUser();
}

String _$currentUserHash() => r'6d0932d51a30d9c9548fd48e3ea619de0237e1e6';

abstract class _$CurrentUser extends $AsyncNotifier<AuthSession?> {
  FutureOr<AuthSession?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AuthSession?>, AuthSession?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthSession?>, AuthSession?>,
              AsyncValue<AuthSession?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(getSession)
final getSessionProvider = GetSessionProvider._();

final class GetSessionProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthSession>,
          AuthSession,
          FutureOr<AuthSession>
        >
    with $FutureModifier<AuthSession>, $FutureProvider<AuthSession> {
  GetSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getSessionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getSessionHash();

  @$internal
  @override
  $FutureProviderElement<AuthSession> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AuthSession> create(Ref ref) {
    return getSession(ref);
  }
}

String _$getSessionHash() => r'fafcaf8308ca4c1eb3ca9dce9243917415e1e102';

@ProviderFor(LoginNotifier)
final loginProvider = LoginNotifierProvider._();

final class LoginNotifierProvider
    extends $AsyncNotifierProvider<LoginNotifier, void> {
  LoginNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifierHash();

  @$internal
  @override
  LoginNotifier create() => LoginNotifier();
}

String _$loginNotifierHash() => r'90ee0195b2fa34bdaa3c138099bbaf05d11013f0';

abstract class _$LoginNotifier extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(CompanySetupNotifier)
final companySetupProvider = CompanySetupNotifierProvider._();

final class CompanySetupNotifierProvider
    extends $AsyncNotifierProvider<CompanySetupNotifier, bool> {
  CompanySetupNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'companySetupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$companySetupNotifierHash();

  @$internal
  @override
  CompanySetupNotifier create() => CompanySetupNotifier();
}

String _$companySetupNotifierHash() =>
    r'1d76fa048d5997e85f6572d4eec5d7340037088b';

abstract class _$CompanySetupNotifier extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(isAuthenticated)
final isAuthenticatedProvider = IsAuthenticatedProvider._();

final class IsAuthenticatedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsAuthenticatedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAuthenticatedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAuthenticatedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAuthenticated(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAuthenticatedHash() => r'83a1451973b29d9ff37548f4c8838b1f926ebb0b';
