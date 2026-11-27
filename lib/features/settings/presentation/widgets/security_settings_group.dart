import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/security/biometric_preferences.dart';
import 'package:office_hr/core/security/biometric_service.dart';
import 'package:office_hr/core/security/security_providers.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';

import 'package:easy_localization/easy_localization.dart';

/// Biometric protection switches. Turning protection on requires one
/// successful authentication so the user always knows it works.
class SecuritySettingsGroup extends HookConsumerWidget {
  const SecuritySettingsGroup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(biometricPreferencesProvider);
    final verifying = useState(false);

    Future<void> setScreensEnabled(bool value) async {
      final notifier = ref.read(biometricPreferencesProvider.notifier);
      if (!value) {
        notifier.setScreensEnabled(false);
        return;
      }

      final service = ref.read(biometricServiceProvider);
      verifying.value = true;
      try {
        final availability = await service.checkAvailability();
        if (availability != BiometricAvailability.available) {
          if (!context.mounted) return;
          SnackbarUtils.showError(
            'Add a fingerprint, face unlock or device passcode in your system settings first.'
                .tr(),
          );
          return;
        }

        final result = await service.authenticate(
          reason: 'Confirm your identity to turn on screen protection.'.tr(),
          biometricOnly: !preferences.allowDeviceCredential,
        );
        if (!context.mounted) return;

        switch (result) {
          case BiometricResult.success:
            notifier.setScreensEnabled(true);
            SnackbarUtils.showSuccess('Screen protection enabled.'.tr());
          case BiometricResult.canceled:
            break;
          case BiometricResult.failed:
            SnackbarUtils.showError(
              'Authentication failed. Please try again.'.tr(),
            );
          case BiometricResult.lockedOut:
            SnackbarUtils.showError(
              'Biometrics are temporarily locked. Unlock your device and try again.'
                  .tr(),
            );
          case BiometricResult.unavailable:
            SnackbarUtils.showError(
              'No biometrics or device passcode is set up on this device.'.tr(),
            );
          case BiometricResult.error:
            SnackbarUtils.showError(
              'Something went wrong. Please try again.'.tr(),
            );
        }
      } finally {
        if (context.mounted) verifying.value = false;
      }
    }

    return SettingsGroup(
      title: 'Security'.tr(),
      children: [
        SettingsTile(
          icon: Icons.fingerprint_rounded,
          title: 'Protect sensitive screens'.tr(),
          subtitle: 'Require biometrics to open protected content.'.tr(),
          accessory: SettingsTileAccessory.none,
          trailing: verifying.value
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2.2),
                )
              : SettingsToggle(
                  value: preferences.screensEnabled,
                  onChanged: setScreensEnabled,
                ),
          onTap: verifying.value
              ? null
              : () => setScreensEnabled(!preferences.screensEnabled),
        ),
        SettingsSwitchTile(
          icon: Icons.lock_clock_rounded,
          title: 'Lock when returning to the app'.tr(),
          subtitle: 'Ask again after the app has been in the background.'.tr(),
          value: preferences.lockOnResume,
          enabled: preferences.screensEnabled,
          onChanged: (value) => ref
              .read(biometricPreferencesProvider.notifier)
              .setLockOnResume(value),
        ),
        SettingsSwitchTile(
          icon: Icons.dialpad_rounded,
          title: 'Allow device PIN or passcode'.tr(),
          subtitle: 'Fall back to the device lock when biometrics fail.'.tr(),
          value: preferences.allowDeviceCredential,
          enabled: preferences.screensEnabled,
          onChanged: (value) => ref
              .read(biometricPreferencesProvider.notifier)
              .setAllowDeviceCredential(value),
        ),
      ],
    );
  }
}
