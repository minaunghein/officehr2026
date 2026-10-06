import 'package:local_auth/local_auth.dart';

/// Whether the device can perform a local authentication check.
enum BiometricAvailability {
  /// Biometrics or a device credential (PIN/pattern/passcode) can be used.
  available,

  /// No usable authentication is configured on the device.
  unavailable,
}

/// Outcome of a single authentication attempt.
enum BiometricResult {
  /// The user verified successfully.
  success,

  /// Verification ran but the user was not recognised.
  failed,

  /// The user dismissed the prompt or the system cancelled it.
  canceled,

  /// No usable authentication is configured on the device.
  unavailable,

  /// Too many failed attempts; biometrics are temporarily locked.
  lockedOut,

  /// An unexpected platform error occurred.
  error,
}

/// Thin, testable boundary around the platform biometric APIs.
///
/// UI code should depend on this abstraction instead of `local_auth` directly,
/// so the behaviour can be swapped or faked in tests.
abstract class BiometricService {
  /// Checks whether local authentication can be used on this device.
  Future<BiometricAvailability> checkAvailability();

  /// Prompts the user to authenticate.
  ///
  /// Set [biometricOnly] to `true` to forbid device-credential fallback.
  Future<BiometricResult> authenticate({
    required String reason,
    bool biometricOnly = false,
  });
}

/// `local_auth` backed implementation.
class LocalAuthBiometricService implements BiometricService {
  LocalAuthBiometricService({LocalAuthentication? localAuthentication})
    : _auth = localAuthentication ?? LocalAuthentication();

  final LocalAuthentication _auth;

  @override
  Future<BiometricAvailability> checkAvailability() async {
    try {
      // `isDeviceSupported` is true when biometrics *or* a device credential
      // (passcode, PIN, pattern) is configured, which is exactly what we can
      // fall back to during authentication.
      final isSupported = await _auth.isDeviceSupported();
      return isSupported
          ? BiometricAvailability.available
          : BiometricAvailability.unavailable;
    } on LocalAuthException catch (error) {
      return _availabilityFromException(error);
    } catch (_) {
      return BiometricAvailability.unavailable;
    }
  }

  @override
  Future<BiometricResult> authenticate({
    required String reason,
    bool biometricOnly = false,
  }) async {
    try {
      final didAuthenticate = await _auth.authenticate(
        localizedReason: reason,
        biometricOnly: biometricOnly,
        // Re-show the prompt if the app is backgrounded mid-authentication
        // (e.g. a phone call) instead of failing the attempt.
        persistAcrossBackgrounding: true,
      );
      return didAuthenticate ? BiometricResult.success : BiometricResult.failed;
    } on LocalAuthException catch (error) {
      return _resultFromException(error);
    } catch (_) {
      return BiometricResult.error;
    }
  }

  BiometricAvailability _availabilityFromException(LocalAuthException error) {
    switch (error.code) {
      case LocalAuthExceptionCode.noBiometricHardware:
      case LocalAuthExceptionCode.noBiometricsEnrolled:
      case LocalAuthExceptionCode.noCredentialsSet:
      case LocalAuthExceptionCode.biometricHardwareTemporarilyUnavailable:
        return BiometricAvailability.unavailable;
      default:
        return BiometricAvailability.unavailable;
    }
  }

  BiometricResult _resultFromException(LocalAuthException error) {
    switch (error.code) {
      case LocalAuthExceptionCode.userCanceled:
      case LocalAuthExceptionCode.systemCanceled:
      case LocalAuthExceptionCode.timeout:
      case LocalAuthExceptionCode.userRequestedFallback:
        return BiometricResult.canceled;
      case LocalAuthExceptionCode.temporaryLockout:
      case LocalAuthExceptionCode.biometricLockout:
        return BiometricResult.lockedOut;
      case LocalAuthExceptionCode.noBiometricHardware:
      case LocalAuthExceptionCode.noBiometricsEnrolled:
      case LocalAuthExceptionCode.noCredentialsSet:
      case LocalAuthExceptionCode.biometricHardwareTemporarilyUnavailable:
      case LocalAuthExceptionCode.uiUnavailable:
        return BiometricResult.unavailable;
      case LocalAuthExceptionCode.authInProgress:
      case LocalAuthExceptionCode.deviceError:
      case LocalAuthExceptionCode.unknownError:
        return BiometricResult.error;
    }
  }
}
