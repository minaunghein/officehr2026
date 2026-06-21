// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userRemoteDataSource)
final userRemoteDataSourceProvider = UserRemoteDataSourceProvider._();

final class UserRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          UserRemoteDataSource,
          UserRemoteDataSource,
          UserRemoteDataSource
        >
    with $Provider<UserRemoteDataSource> {
  UserRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<UserRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserRemoteDataSource create(Ref ref) {
    return userRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserRemoteDataSource>(value),
    );
  }
}

String _$userRemoteDataSourceHash() =>
    r'2aed083f6d4099b3825eb3a785a585782e3a1bc9';

@ProviderFor(userRepository)
final userRepositoryProvider = UserRepositoryProvider._();

final class UserRepositoryProvider
    extends $FunctionalProvider<UserRepository, UserRepository, UserRepository>
    with $Provider<UserRepository> {
  UserRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRepositoryHash();

  @$internal
  @override
  $ProviderElement<UserRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserRepository create(Ref ref) {
    return userRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserRepository>(value),
    );
  }
}

String _$userRepositoryHash() => r'bcdf0718d6e048bec2e3321db1595c5263baa8d2';

@ProviderFor(getUserDetailsUseCase)
final getUserDetailsUseCaseProvider = GetUserDetailsUseCaseProvider._();

final class GetUserDetailsUseCaseProvider
    extends
        $FunctionalProvider<
          GetUserDetailsUseCase,
          GetUserDetailsUseCase,
          GetUserDetailsUseCase
        >
    with $Provider<GetUserDetailsUseCase> {
  GetUserDetailsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUserDetailsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUserDetailsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUserDetailsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUserDetailsUseCase create(Ref ref) {
    return getUserDetailsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUserDetailsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUserDetailsUseCase>(value),
    );
  }
}

String _$getUserDetailsUseCaseHash() =>
    r'6f319ace75fc4a0f24cfcfd2a2f594d1f13d50a8';

@ProviderFor(getShiftUseCase)
final getShiftUseCaseProvider = GetShiftUseCaseProvider._();

final class GetShiftUseCaseProvider
    extends
        $FunctionalProvider<GetShiftUseCase, GetShiftUseCase, GetShiftUseCase>
    with $Provider<GetShiftUseCase> {
  GetShiftUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getShiftUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getShiftUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetShiftUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetShiftUseCase create(Ref ref) {
    return getShiftUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetShiftUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetShiftUseCase>(value),
    );
  }
}

String _$getShiftUseCaseHash() => r'91b25a5f3554bbf16c9bc6de0eb9fe9b2ac61b79';

@ProviderFor(getBranchUseCase)
final getBranchUseCaseProvider = GetBranchUseCaseProvider._();

final class GetBranchUseCaseProvider
    extends
        $FunctionalProvider<
          GetBranchUseCase,
          GetBranchUseCase,
          GetBranchUseCase
        >
    with $Provider<GetBranchUseCase> {
  GetBranchUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBranchUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBranchUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetBranchUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetBranchUseCase create(Ref ref) {
    return getBranchUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBranchUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBranchUseCase>(value),
    );
  }
}

String _$getBranchUseCaseHash() => r'00f1f1ac83f02e7a7a0eb19e27ea9b69651b878d';

@ProviderFor(UserDetailsNotifier)
final userDetailsProvider = UserDetailsNotifierProvider._();

final class UserDetailsNotifierProvider
    extends $AsyncNotifierProvider<UserDetailsNotifier, UserDetails?> {
  UserDetailsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userDetailsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userDetailsNotifierHash();

  @$internal
  @override
  UserDetailsNotifier create() => UserDetailsNotifier();
}

String _$userDetailsNotifierHash() =>
    r'e10f395717590689b39ea504da52ba14c8d3a0f9';

abstract class _$UserDetailsNotifier extends $AsyncNotifier<UserDetails?> {
  FutureOr<UserDetails?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserDetails?>, UserDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserDetails?>, UserDetails?>,
              AsyncValue<UserDetails?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(ShiftNotifier)
final shiftProvider = ShiftNotifierProvider._();

final class ShiftNotifierProvider
    extends $AsyncNotifierProvider<ShiftNotifier, Shift?> {
  ShiftNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shiftProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shiftNotifierHash();

  @$internal
  @override
  ShiftNotifier create() => ShiftNotifier();
}

String _$shiftNotifierHash() => r'4e831ef52d6baef2ef300de6442d1e93194cc0a9';

abstract class _$ShiftNotifier extends $AsyncNotifier<Shift?> {
  FutureOr<Shift?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Shift?>, Shift?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Shift?>, Shift?>,
              AsyncValue<Shift?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(BranchNotifier)
final branchProvider = BranchNotifierProvider._();

final class BranchNotifierProvider
    extends $AsyncNotifierProvider<BranchNotifier, Branch?> {
  BranchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'branchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchNotifierHash();

  @$internal
  @override
  BranchNotifier create() => BranchNotifier();
}

String _$branchNotifierHash() => r'f324fb55895b418cec22028d42f0dbbe50dc4d60';

abstract class _$BranchNotifier extends $AsyncNotifier<Branch?> {
  FutureOr<Branch?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Branch?>, Branch?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Branch?>, Branch?>,
              AsyncValue<Branch?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
