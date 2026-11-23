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
    extends $NotifierProvider<ThemeNotifier, OfficeHrThemeMode> {
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
  Override overrideWithValue(OfficeHrThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OfficeHrThemeMode>(value),
    );
  }
}

String _$themeNotifierHash() => r'7d6c9ecdd14fc55cc4a5eb641429ee9784982858';

abstract class _$ThemeNotifier extends $Notifier<OfficeHrThemeMode> {
  OfficeHrThemeMode build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<OfficeHrThemeMode, OfficeHrThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OfficeHrThemeMode, OfficeHrThemeMode>,
              OfficeHrThemeMode,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
