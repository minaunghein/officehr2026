import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/security/biometric_preferences.dart';
import 'package:office_hr/core/security/biometric_service.dart';
import 'package:office_hr/core/security/security_providers.dart';

import 'package:easy_localization/easy_localization.dart';

/// Wraps [child] behind a biometric / device-credential check.
///
/// The child is only revealed after a successful authentication. While locked,
/// a friendly unlock screen is shown. Authentication is attempted automatically
/// on first open (unless [autoPrompt] is false) and again when the app returns
/// to the foreground (unless [lockOnResume] is false).
///
/// Example:
/// ```dart
/// BiometricGate(
///   reason: 'Authenticate to view your payslips',
///   child: const PayslipList(),
/// )
/// ```
class BiometricGate extends HookConsumerWidget {
  const BiometricGate({
    super.key,
    required this.child,
    this.reason,
    this.title,
    this.description,
    this.biometricOnly = false,
    this.lockOnResume = true,
    this.autoPrompt = true,
    this.enabled = true,
  });

  /// The protected content, shown once authenticated.
  final Widget child;

  /// Message shown by the OS prompt.
  final String? reason;

  /// Heading for the in-app unlock screen.
  final String? title;

  /// Supporting text for the in-app unlock screen.
  final String? description;

  /// When true, device-credential (PIN/pattern/passcode) fallback is disabled.
  final bool biometricOnly;

  /// Re-lock and re-prompt when the app returns to the foreground.
  final bool lockOnResume;

  /// Automatically show the prompt when the gate is first shown.
  final bool autoPrompt;

  /// Set to false to bypass the gate entirely (e.g. a user setting).
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final service = ref.read(biometricServiceProvider);
    final preferences = ref.watch(biometricPreferencesProvider);
    // The user can switch local authentication off (or the resume lock off)
    // from Settings, so the widget flag alone does not decide.
    final gateEnabled = enabled && preferences.screensEnabled;
    final resumeLockEnabled = lockOnResume && preferences.lockOnResume;
    final unlocked = useState(false);
    final authenticating = useState(false);
    final availability = useState<BiometricAvailability?>(null);
    final message = useState<String?>(null);
    final leftApp = useRef(false);

    Future<void> authenticate() async {
      if (authenticating.value) return;
      authenticating.value = true;
      message.value = null;

      final result = await service.authenticate(
        reason: reason ?? 'Authenticate to continue'.tr(),
        biometricOnly: biometricOnly || !preferences.allowDeviceCredential,
      );
      if (!context.mounted) return;
      authenticating.value = false;

      switch (result) {
        case BiometricResult.success:
          unlocked.value = true;
        case BiometricResult.canceled:
          break;
        case BiometricResult.failed:
          message.value = 'Authentication failed. Please try again.'.tr();
        case BiometricResult.lockedOut:
          message.value =
              'Biometrics are temporarily locked. Unlock your device and try again.'
                  .tr();
        case BiometricResult.unavailable:
          availability.value = BiometricAvailability.unavailable;
          message.value = _unavailableMessage;
        case BiometricResult.error:
          message.value = 'Something went wrong. Please try again.'.tr();
      }
    }

    useEffect(() {
      if (!gateEnabled) return null;
      Future<void> prepare() async {
        final status = await service.checkAvailability();
        if (!context.mounted) return;
        availability.value = status;
        if (status == BiometricAvailability.available && autoPrompt) {
          await authenticate();
        }
      }

      prepare();
      return null;
    }, [gateEnabled]);

    useEffect(() {
      if (!gateEnabled || !resumeLockEnabled) return null;
      final listener = AppLifecycleListener(
        onHide: () => leftApp.value = true,
        onPause: () => leftApp.value = true,
        onResume: () {
          if (!leftApp.value) return;
          leftApp.value = false;
          if (unlocked.value) {
            unlocked.value = false;
            if (autoPrompt) authenticate();
          }
        },
      );
      return listener.dispose;
    }, [gateEnabled, resumeLockEnabled]);

    if (!gateEnabled || unlocked.value) return child;

    return _LockedView(
      title: title ?? 'Authentication required'.tr(),
      description:
          description ??
          'Verify your identity to view this protected content.'.tr(),
      message: message.value,
      availability: availability.value,
      authenticating: authenticating.value,
      onUnlock: authenticate,
    );
  }

  String get _unavailableMessage => biometricOnly
      ? 'No biometrics are enrolled. Add a fingerprint or face in your device settings and try again.'
            .tr()
      : 'No biometrics or device passcode is set up. Add a screen lock in your device settings and try again.'
            .tr();
}

class _LockedView extends StatelessWidget {
  const _LockedView({
    required this.title,
    required this.description,
    required this.message,
    required this.availability,
    required this.authenticating,
    required this.onUnlock,
  });

  final String title;
  final String description;
  final String? message;
  final BiometricAvailability? availability;
  final bool authenticating;
  final VoidCallback onUnlock;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUnavailable = availability == BiometricAvailability.unavailable;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isUnavailable
                    ? Icons.lock_outline_rounded
                    : Icons.fingerprint_rounded,
                size: 42,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            if (message != null) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.error.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  message!,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: authenticating ? null : onUnlock,
                icon: authenticating
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.lock_open_rounded),
                label: Text(
                  authenticating ? 'Verifying...'.tr() : 'Unlock'.tr(),
                ),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(52),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
