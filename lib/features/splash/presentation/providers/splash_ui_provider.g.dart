// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_ui_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(splashUiData)
final splashUiDataProvider = SplashUiDataProvider._();

final class SplashUiDataProvider
    extends $FunctionalProvider<SplashUiData, SplashUiData, SplashUiData>
    with $Provider<SplashUiData> {
  SplashUiDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashUiDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashUiDataHash();

  @$internal
  @override
  $ProviderElement<SplashUiData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SplashUiData create(Ref ref) {
    return splashUiData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashUiData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashUiData>(value),
    );
  }
}

String _$splashUiDataHash() => r'8c75ba98b70d54927fb3f90281855bf8b9447bb9';
