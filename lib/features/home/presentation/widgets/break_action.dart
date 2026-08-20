import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/state/attendance_state.dart';
import 'package:office_hr/shared/date_formatter.dart';

class BreakActions extends ConsumerWidget {
  const BreakActions({super.key, required this.shift});

  final Shift? shift;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceState =
        ref.watch(attendanceProvider).value ?? const AttendanceState();
    final breakLateDurationText = _getBreakLateDurationText(attendanceState);
    final breakDurationText = _getBreakDurationText(attendanceState);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          _getBreakTimeText(attendanceState),
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            fontWeight: FontWeight.w600,
          ),
        ),
        if (breakLateDurationText.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            'Break late ($breakLateDurationText)',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: const Color(0xFFD32F2F),
            ),
          ),
        ],
        if (breakDurationText != null) ...[
          const SizedBox(height: 4),
          Text(
            breakDurationText,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: attendanceState.canBreakStart
                    ? () => _runBreakAction(
                        context,
                        ref,
                        (params) => ref
                            .read(attendanceProvider.notifier)
                            .breakStart(params),
                      )
                    : null,
                icon: attendanceState.isBreakStartLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.free_breakfast_rounded),
                label: const Text('Break Start'),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: attendanceState.canBreakEnd
                    ? () => _runBreakAction(
                        context,
                        ref,
                        (params) => ref
                            .read(attendanceProvider.notifier)
                            .breakEnd(params),
                      )
                    : null,
                icon: attendanceState.isBreakEndLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.done_rounded),
                label: const Text('Break End'),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _getBreakTimeText(AttendanceState attendanceState) {
    final breakStartTime = attendanceState.breakStartTime;
    final breakEndTime = attendanceState.breakEndTime;

    if (attendanceState.isBreakInProgress) {
      return 'Break started at ${formatAttendanceTime(breakStartTime)}';
    }
    if (breakStartTime != null && breakStartTime.isNotEmpty) {
      return 'Last break: ${formatAttendanceTime(breakStartTime)} - ${formatAttendanceTime(breakEndTime)}';
    }
    return 'No break started yet';
  }

  String _getBreakLateDurationText(AttendanceState attendanceState) {
    final currentShift = shift;
    final breakEnd = parseAttendanceTime(attendanceState.breakEndTime);
    if (currentShift == null || breakEnd == null) return '';

    final shiftDay = getShiftDayForDate(currentShift, breakEnd);
    if (shiftDay == null || !shiftDay.isWorkingDay || shiftDay.isOffDay) {
      return '';
    }

    final restEnd = parseTimeOnDate(shiftDay.restEnd, breakEnd);
    if (restEnd == null || !breakEnd.isAfter(restEnd)) return '';

    return formatDurationText(breakEnd.difference(restEnd));
  }

  String? _getBreakDurationText(AttendanceState attendanceState) {
    final breakStart = parseAttendanceTime(attendanceState.breakStartTime);
    final breakEnd = parseAttendanceTime(attendanceState.breakEndTime);
    if (breakStart == null || breakEnd == null) return null;

    final duration = breakEnd.difference(breakStart);
    if (duration.isNegative) return null;

    return 'Total break: ${formatDurationText(duration)}';
  }

  Future<void> _runBreakAction(
    BuildContext context,
    WidgetRef ref,
    Future<void> Function(ClockAttendanceParams? params) action,
  ) async {
    final location = ref.read(currentLocationProvider).value;
    if (location == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please wait for location to be available'),
        ),
      );
      return;
    }

    try {
      await action(
        ClockAttendanceParams(
          location: AttendanceLocation(
            latitude: location.latitude,
            longitude: location.longitude,
            accuracy: location.accuracy,
          ),
        ),
      );
    } catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(getUserFriendlyError(error))));
    }
  }
}
