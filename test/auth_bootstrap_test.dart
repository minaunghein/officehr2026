import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/splash/presentation/providers/splash_providers.dart';

void main() {
  test('auth bootstrap providers fail once instead of retrying forever', () {
    expect(getSessionProvider.isAutoDispose, isFalse);
    expect(splashInitializationProvider.isAutoDispose, isFalse);
  });
}
