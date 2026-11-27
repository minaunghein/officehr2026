import 'package:flutter/foundation.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'biometric_preferences.g.dart';

/// User-controlled behaviour of the BiometricGate protected screens.
@immutable
class BiometricPreference {
  const BiometricPreference({
    required this.screensEnabled,
    required this.lockOnResume,
    required this.allowDeviceCredential,
  });

  /// Whether sensitive screens ask for local authentication at all.
  final bool screensEnabled;

  /// Whether the screen locks again when the app returns to the foreground.
  final bool lockOnResume;

  /// Whether a device PIN/pattern/passcode can be used instead of biometrics.
  final bool allowDeviceCredential;
}

/// Persisted biometric preferences, shared by every gate and the settings UI.
@riverpod
class BiometricPreferences extends _$BiometricPreferences {
  static const _screensKey = 'biometric_screens_enabled';
  static const _resumeKey = 'biometric_lock_on_resume';
  static const _credentialKey = 'biometric_allow_device_credential';

  @override
  BiometricPreference build() => BiometricPreference(
    screensEnabled: _read(_screensKey, defaultValue: true),
    lockOnResume: _read(_resumeKey, defaultValue: true),
    allowDeviceCredential: _read(_credentialKey, defaultValue: true),
  );

  void setScreensEnabled(bool value) => _write(
    _screensKey,
    value,
    (current) => current.copyWith(screensEnabled: value),
  );

  void setLockOnResume(bool value) => _write(
    _resumeKey,
    value,
    (current) => current.copyWith(lockOnResume: value),
  );

  void setAllowDeviceCredential(bool value) => _write(
    _credentialKey,
    value,
    (current) => current.copyWith(allowDeviceCredential: value),
  );

  bool _read(String key, {required bool defaultValue}) {
    final value = HiveService.settingsBox.get(key);
    return value is bool ? value : defaultValue;
  }

  void _write(
    String key,
    bool value,
    BiometricPreference Function(BiometricPreference current) apply,
  ) {
    state = apply(state);
    // Local writes are fire-and-forget, like the theme preference.
    HiveService.settingsBox.put(key, value);
  }
}

extension on BiometricPreference {
  BiometricPreference copyWith({
    bool? screensEnabled,
    bool? lockOnResume,
    bool? allowDeviceCredential,
  }) => BiometricPreference(
    screensEnabled: screensEnabled ?? this.screensEnabled,
    lockOnResume: lockOnResume ?? this.lockOnResume,
    allowDeviceCredential: allowDeviceCredential ?? this.allowDeviceCredential,
  );
}
