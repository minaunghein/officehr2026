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
    r'e97aebaac71ca6b55bd6022c57a7d470beae1f12';

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

String _$userRepositoryHash() => r'78606b68c038a0b347d86931701bc33a28996c87';

@ProviderFor(userById)
final userByIdProvider = UserByIdFamily._();

final class UserByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserDetails>,
          UserDetails,
          FutureOr<UserDetails>
        >
    with $FutureModifier<UserDetails>, $FutureProvider<UserDetails> {
  UserByIdProvider._({
    required UserByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userByIdHash();

  @override
  String toString() {
    return r'userByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserDetails> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserDetails> create(Ref ref) {
    final argument = this.argument as String;
    return userById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userByIdHash() => r'172a6aef843c49de3c2f1b078acd458d656f2ad1';

final class UserByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserDetails>, String> {
  UserByIdFamily._()
    : super(
        retry: null,
        name: r'userByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserByIdProvider call(String id) =>
      UserByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'userByIdProvider';
}

@ProviderFor(UserDetailsNotifier)
final userDetailsProvider = UserDetailsNotifierProvider._();

final class UserDetailsNotifierProvider
    extends $AsyncNotifierProvider<UserDetailsNotifier, AuthSession?> {
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
    r'b149e5262e1b9b44a753225f412200690d68fb86';

abstract class _$UserDetailsNotifier extends $AsyncNotifier<AuthSession?> {
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
