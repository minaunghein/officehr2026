import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:office_hr/features/settings/presentation/providers/reminder_service_provider.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';
import 'package:office_hr/features/settings/presentation/widgets/weekday_selector.dart';

import 'package:easy_localization/easy_localization.dart';

/// One reminder (clock in or clock out) with a switch, its time and the days
/// it repeats on. Expands so the details stay out of the way when it is off.
class ReminderSettingsCard extends HookConsumerWidget {
  const ReminderSettingsCard({super.key, required this.kind});

  final ReminderKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final service = ref.watch(reminderServiceProvider);
    final setting = useState<ReminderSetting?>(null);
    final loaded = useState(false);
    final busy = useState(false);
    final expanded = useState(false);
    final pendingDays = useRef<Set<int>?>(null);
    final dayWrite = useRef<Future<void>?>(null);

    Future<void> reload() async {
      final value = await service.get(kind);
      if (!context.mounted) return;
      setting.value = value;
      loaded.value = true;
    }

    useEffect(() {
      reload();
      return null;
    }, [kind]);

    void showSaveError({bool permissionDenied = false}) {
      SnackbarUtils.showError(
        permissionDenied
            ? 'Allow notifications in device settings to enable reminders.'.tr()
            : 'Could not save reminder. Please try again.'.tr(),
      );
    }

    Future<void> saveLatestDays(Set<int> confirmed) async {
      try {
        // Only one write at a time; any taps during that write replace the
        // queued selection with the most recent one.
        while (true) {
          final days = pendingDays.value;
          if (days == null) break;
          pendingDays.value = null;
          bool? permissionDenied;
          try {
            if (await service.save(kind, days: days)) {
              confirmed = days;
            } else {
              permissionDenied = true;
            }
          } catch (_) {
            permissionDenied = false;
          }
          if (permissionDenied != null &&
              pendingDays.value == null &&
              context.mounted) {
            setting.value = setting.value?.copyWith(days: confirmed);
            showSaveError(permissionDenied: permissionDenied);
          }
        }
      } finally {
        dayWrite.value = null;
      }
    }

    void editDays(Set<int> days) {
      final current = setting.value;
      if (current == null || busy.value) return;
      // An empty schedule uses the same fallback as the reminder service.
      final next = days.isEmpty
          ? ReminderSetting.allDays
          : Set<int>.unmodifiable(days);
      if (next.length == current.days.length &&
          next.containsAll(current.days)) {
        return;
      }
      setting.value = current.copyWith(days: next);
      pendingDays.value = next;
      dayWrite.value ??= saveLatestDays(current.days);
    }

    Future<bool> apply({TimeOfDay? time, bool? enabled}) async {
      if (busy.value) return false;
      busy.value = true;
      try {
        // Time and switch changes must merge with the latest saved days.
        await dayWrite.value;
        final saved = await service.save(kind, time: time, enabled: enabled);
        if (!saved && context.mounted) {
          showSaveError(permissionDenied: true);
        }
        await reload();
        return saved;
      } catch (_) {
        if (context.mounted) {
          showSaveError();
        }
        return false;
      } finally {
        if (context.mounted) busy.value = false;
      }
    }

    Future<void> editTime() async {
      final current = setting.value;
      final picked = await showTimePicker(
        context: context,
        initialTime:
            current?.time ?? TimeOfDay(hour: kind.defaultHour, minute: 0),
        helpText: kind.titleKey.tr(),
      );
      if (picked == null || !context.mounted) return;
      await apply(time: picked);
    }

    Future<void> sendTest() async {
      busy.value = true;
      try {
        final sent = await service.sendTest(kind);
        if (!context.mounted) return;
        if (sent) {
          SnackbarUtils.showSuccess('Test notification sent.'.tr());
        } else {
          SnackbarUtils.showError(
            'Allow notifications in device settings to enable reminders.'.tr(),
          );
        }
      } catch (_) {
        if (context.mounted) {
          SnackbarUtils.showError('Could not send the test notification.'.tr());
        }
      } finally {
        if (context.mounted) busy.value = false;
      }
    }

    final current = setting.value;
    final enabled = current?.enabled ?? false;
    final interactive = loaded.value && !busy.value && service.supported;
    final summary = current == null
        ? (service.supported ? 'Off'.tr() : 'Not supported on this device'.tr())
        : enabled
        ? '${current.daysLabel} · ${current.time.format(context)}'
        : 'Paused'.tr();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingsTile(
          icon: kind == ReminderKind.clockIn
              ? Icons.login_rounded
              : Icons.logout_rounded,
          title: kind.titleKey.tr(),
          subtitle: summary,
          onTap: interactive && current != null
              ? () => expanded.value = !expanded.value
              : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (current != null)
                AnimatedRotation(
                  turns: expanded.value ? 0.5 : 0,
                  duration: const Duration(milliseconds: 160),
                  child: Icon(
                    Icons.expand_more_rounded,
                    color: theme.detailMuted,
                    size: 18,
                  ),
                ),
              SettingsToggle(
                value: enabled,
                onChanged: !interactive
                    ? null
                    : (value) async {
                        if (value) {
                          final saved = await apply(enabled: true);
                          if (saved && context.mounted) expanded.value = true;
                        } else {
                          await apply(enabled: false);
                        }
                      },
              ),
            ],
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeInOut,
          alignment: Alignment.topCenter,
          child: expanded.value && current != null
              ? _Details(
                  setting: current,
                  enabled: interactive,
                  onTime: editTime,
                  onDays: editDays,
                  onTest: sendTest,
                )
              : const SizedBox(width: double.infinity),
        ),
      ],
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    required this.setting,
    required this.enabled,
    required this.onTime,
    required this.onDays,
    required this.onTest,
  });

  final ReminderSetting setting;
  final bool enabled;
  final VoidCallback onTime;
  final ValueChanged<Set<int>> onDays;
  final VoidCallback onTest;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: AppSizes.iconMd + AppSizes.sm,
        bottom: AppSizes.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Time'.tr(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Flexible(
                child: Tooltip(
                  message: 'Change'.tr(),
                  child: TextButton(
                    onPressed: enabled ? onTime : null,
                    child: Text(setting.time.format(context)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.xs),
          Text(
            'Repeat on'.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppSizes.sm),
          WeekdaySelector(
            selected: setting.days,
            enabled: enabled,
            onChanged: onDays,
          ),
          const SizedBox(height: AppSizes.md),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton.icon(
              onPressed: enabled ? onTest : null,
              icon: const Icon(Icons.notifications_active_outlined, size: 18),
              label: Text('Send a test notification'.tr()),
            ),
          ),
        ],
      ),
    );
  }
}
