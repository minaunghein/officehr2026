import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/params/attendance_history_query.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_calendar.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_day_detail.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_range_list.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';

enum AttendanceViewMode { day, range }

class AttendanceScreen extends HookConsumerWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final today = useMemoized(() {
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day);
    });

    final selectedDate = useState(today);
    final focusedMonth = useState(DateTime(today.year, today.month));
    final mode = useState(AttendanceViewMode.day);
    final rangeStart = useState(DateTime(today.year, today.month, 1));
    final rangeEnd = useState(today);

    final monthStart = DateTime(
      focusedMonth.value.year,
      focusedMonth.value.month,
    );
    final monthEnd = DateTime(
      focusedMonth.value.year,
      focusedMonth.value.month + 1,
      0,
    );

    final dayQuery = AttendanceHistoryQuery(date: selectedDate.value);
    final monthQuery = AttendanceHistoryQuery(start: monthStart, end: monthEnd);
    final rangeQuery = AttendanceHistoryQuery(
      start: rangeStart.value,
      end: rangeEnd.value,
    );

    final monthAsync = ref.watch(attendanceHistoryProvider(monthQuery));
    final isDayMode = mode.value == AttendanceViewMode.day;
    final dayAsync = isDayMode
        ? ref.watch(attendanceHistoryProvider(dayQuery))
        : null;
    final rangeAsync = isDayMode
        ? null
        : ref.watch(attendanceHistoryProvider(rangeQuery));

    final markers = <String, Color>{};
    for (final record in monthAsync.value ?? const <TodayAttendance>[]) {
      final date = record.date;
      if (date == null) continue;
      markers[formatApiDate(date)] = resolvedAttendanceStatusColor(
        record,
        theme,
      );
    }

    Future<void> refresh() async {
      ref.invalidate(attendanceHistoryProvider(dayQuery));
      ref.invalidate(attendanceHistoryProvider(monthQuery));
      ref.invalidate(attendanceHistoryProvider(rangeQuery));
      await Future.wait([
        ref.read(attendanceHistoryProvider(dayQuery).future),
        ref.read(attendanceHistoryProvider(monthQuery).future),
      ]);
    }

    Future<void> pickRange() async {
      final picked = await showDateRangePicker(
        context: context,
        initialDateRange: DateTimeRange(
          start: rangeStart.value,
          end: rangeEnd.value,
        ),
        firstDate: DateTime(today.year - 2),
        lastDate: DateTime(today.year + 1, 12, 31),
        helpText: 'Select attendance range',
      );
      if (picked == null) return;
      rangeStart.value = picked.start;
      rangeEnd.value = picked.end;
      focusedMonth.value = DateTime(picked.end.year, picked.end.month);
    }

    return RefreshIndicator(
      onRefresh: refresh,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          _Header(
            mode: mode.value,
            onModeChanged: (value) => mode.value = value,
            onTodayTap: () {
              selectedDate.value = today;
              focusedMonth.value = DateTime(today.year, today.month);
            },
            onRequestTap: () => context.push(AppRoutes.attendanceRequests),
            showTodayButton:
                mode.value == AttendanceViewMode.day &&
                formatApiDate(selectedDate.value) != formatApiDate(today),
          ),
          const SizedBox(height: 16),
          if (mode.value == AttendanceViewMode.day) ...[
            AttendanceCalendar(
              focusedMonth: focusedMonth.value,
              selectedDate: selectedDate.value,
              markers: markers,
              onSelectDate: (date) {
                selectedDate.value = date;
                if (date.month != focusedMonth.value.month ||
                    date.year != focusedMonth.value.year) {
                  focusedMonth.value = DateTime(date.year, date.month);
                }
              },
              onPreviousMonth: () => focusedMonth.value = DateTime(
                focusedMonth.value.year,
                focusedMonth.value.month - 1,
              ),
              onNextMonth: () => focusedMonth.value = DateTime(
                focusedMonth.value.year,
                focusedMonth.value.month + 1,
              ),
            ),
            const SizedBox(height: 12),
            const _CalendarLegend(),
            const SizedBox(height: 24),
            dayAsync!.when(
              data: (records) => AttendanceDayDetail(
                date: selectedDate.value,
                attendance: records.isNotEmpty ? records.first : null,
              ),
              loading: () => const _DetailSkeleton(),
              error: (error, stack) => _ErrorView(
                message: getUserFriendlyError(error),
                onRetry: () =>
                    ref.invalidate(attendanceHistoryProvider(dayQuery)),
              ),
            ),
          ] else ...[
            _RangeSelector(
              start: rangeStart.value,
              end: rangeEnd.value,
              onTap: pickRange,
            ),
            const SizedBox(height: 20),
            rangeAsync!.when(
              data: (records) => AttendanceRangeList(records: records),
              loading: () => const _RangeSkeleton(),
              error: (error, stack) => _ErrorView(
                message: getUserFriendlyError(error),
                onRetry: () =>
                    ref.invalidate(attendanceHistoryProvider(rangeQuery)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.mode,
    required this.onModeChanged,
    required this.onTodayTap,
    required this.onRequestTap,
    required this.showTodayButton,
  });

  final AttendanceViewMode mode;
  final ValueChanged<AttendanceViewMode> onModeChanged;
  final VoidCallback onTodayTap;
  final VoidCallback onRequestTap;
  final bool showTodayButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Attendance',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Pick a date to view your records',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (showTodayButton)
              IconButton(
                onPressed: onTodayTap,
                tooltip: 'Today',
                icon: const Icon(Icons.today_rounded),
              ),
            const SizedBox(width: 4),
            FilledButton.tonalIcon(
              onPressed: onRequestTap,
              icon: const Icon(Icons.edit_calendar_rounded, size: 18),
              label: const Text('Request'),
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        SegmentedButton<AttendanceViewMode>(
          segments: const [
            ButtonSegment(
              value: AttendanceViewMode.day,
              icon: Icon(Icons.calendar_today_rounded, size: 16),
              label: Text('Day'),
            ),
            ButtonSegment(
              value: AttendanceViewMode.range,
              icon: Icon(Icons.date_range_rounded, size: 16),
              label: Text('Range'),
            ),
          ],
          selected: {mode},
          showSelectedIcon: false,
          onSelectionChanged: (selection) => onModeChanged(selection.first),
        ),
      ],
    );
  }
}

class _RangeSelector extends StatelessWidget {
  const _RangeSelector({
    required this.start,
    required this.end,
    required this.onTap,
  });

  final DateTime start;
  final DateTime end;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.15),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.date_range_rounded,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_shortDate(start)}  -  ${_shortDate(end)}',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Tap to change range',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.35),
            ),
          ],
        ),
      ),
    );
  }
}

class _CalendarLegend extends StatelessWidget {
  const _CalendarLegend();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        _legendItem(theme, 'Present', const Color(0xFF16A34A)),
        _legendItem(theme, 'Late', const Color(0xFFD97706)),
        _legendItem(theme, 'Absent', const Color(0xFFDC2626)),
        _legendItem(theme, 'Leave', const Color(0xFF0284C7)),
      ],
    );
  }

  Widget _legendItem(ThemeData theme, String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _DetailSkeleton extends StatelessWidget {
  const _DetailSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerShimmer(height: 22, width: 180),
        const SizedBox(height: 16),
        ContainerShimmer(height: 150, borderRadius: BorderRadius.circular(16)),
        const SizedBox(height: 20),
        ContainerShimmer(height: 20, width: 140),
        const SizedBox(height: 12),
        ContainerShimmer(height: 140, borderRadius: BorderRadius.circular(16)),
      ],
    );
  }
}

class _RangeSkeleton extends StatelessWidget {
  const _RangeSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 4; i++) ...[
          ContainerShimmer(
            height: 96,
            width: double.infinity,
            borderRadius: BorderRadius.circular(16),
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.error_outline_rounded,
            size: 44,
            color: theme.colorScheme.error,
          ),
          const SizedBox(height: 12),
          Text(
            message,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

String _shortDate(DateTime date) {
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}
