import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';

final reminderServiceProvider = Provider<ReminderService>(
  (ref) => ReminderService.instance,
);
