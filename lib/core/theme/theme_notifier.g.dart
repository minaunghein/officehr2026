// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemeNotifier)
final themeProvider = ThemeNotifierProvider._();

final class ThemeNotifierProvider
    extends $NotifierProvider<ThemeNotifier, OfficeHrTheme> {
  ThemeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeNotifierHash();

  @$internal
  @override
  ThemeNotifier create() => ThemeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OfficeHrTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OfficeHrTheme>(value),
    );
  }
}

String _$themeNotifierHash() => r'212dc6938bfeb966f7791b37dd377388abf7e873';

abstract class _$ThemeNotifier extends $Notifier<OfficeHrTheme> {
  OfficeHrTheme build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<OfficeHrTheme, OfficeHrTheme>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OfficeHrTheme, OfficeHrTheme>,
              OfficeHrTheme,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
