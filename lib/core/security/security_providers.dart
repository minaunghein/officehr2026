import 'package:office_hr/core/security/biometric_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'security_providers.g.dart';

/// Shared [BiometricService] instance used by all biometric gates.
@Riverpod(keepAlive: true)
BiometricService biometricService(Ref ref) => LocalAuthBiometricService();
