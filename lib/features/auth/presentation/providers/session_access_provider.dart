import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/domain/session_access.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';

final sessionAccessProvider = Provider<SessionAccess>(
  (ref) => SessionAccess(ref.watch(currentUserProvider).value),
);

final canViewPunchesProvider = Provider<bool>(
  (ref) => ref.watch(sessionAccessProvider).viewPunches,
);
