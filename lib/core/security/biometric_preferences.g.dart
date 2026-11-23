// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_preferences.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Persisted biometric preferences, shared by every gate and the settings UI.

@ProviderFor(BiometricPreferences)
final biometricPreferencesProvider = BiometricPreferencesProvider._();

/// Persisted biometric preferences, shared by every gate and the settings UI.
final class BiometricPreferencesProvider
    extends $NotifierProvider<BiometricPreferences, BiometricPreference> {
  /// Persisted biometric preferences, shared by every gate and the settings UI.
  BiometricPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'biometricPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$biometricPreferencesHash();

  @$internal
  @override
  BiometricPreferences create() => BiometricPreferences();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BiometricPreference value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BiometricPreference>(value),
    );
  }
}

String _$biometricPreferencesHash() =>
    r'dc798c4cae13f39a019ad63eef65bd41a32ce048';

/// Persisted biometric preferences, shared by every gate and the settings UI.

abstract class _$BiometricPreferences extends $Notifier<BiometricPreference> {
  BiometricPreference build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<BiometricPreference, BiometricPreference>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BiometricPreference, BiometricPreference>,
              BiometricPreference,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
