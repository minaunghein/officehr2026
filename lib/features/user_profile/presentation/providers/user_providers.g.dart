// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
