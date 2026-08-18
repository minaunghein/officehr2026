// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SplashInitialization)
final splashInitializationProvider = SplashInitializationProvider._();

final class SplashInitializationProvider
    extends $AsyncNotifierProvider<SplashInitialization, SplashState> {
  SplashInitializationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashInitializationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashInitializationHash();

  @$internal
  @override
  SplashInitialization create() => SplashInitialization();
}

String _$splashInitializationHash() =>
    r'0f5f384d2fd4a173fd2263db7dcf24ecf8fc7362';

abstract class _$SplashInitialization extends $AsyncNotifier<SplashState> {
  FutureOr<SplashState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<SplashState>, SplashState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SplashState>, SplashState>,
              AsyncValue<SplashState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
