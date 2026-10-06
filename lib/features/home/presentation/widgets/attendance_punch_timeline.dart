import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/attendance_punch.dart';
import 'package:office_hr/shared/date_formatter.dart';

/// A reusable, carded timeline of attendance punches.
class AttendancePunchTimeline extends StatelessWidget {
  const AttendancePunchTimeline({
    super.key,
    required this.punches,
    this.emptyMessage = 'No punches recorded',
  });

  final List<AttendancePunch> punches;
  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (punches.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 28),
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
              Icons.history_toggle_off_rounded,
              size: 34,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
            ),
            const SizedBox(height: 8),
            Text(
              emptyMessage,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          for (int i = 0; i < punches.length; i++) ...[
            AttendancePunchTile(punch: punches[i]),
            if (i < punches.length - 1)
              Divider(
                height: 1,
                indent: 60,
                color: theme.colorScheme.outline.withValues(alpha: 0.12),
              ),
          ],
        ],
      ),
    );
  }
}

class AttendancePunchTile extends StatelessWidget {
  const AttendancePunchTile({super.key, required this.punch});

  final AttendancePunch punch;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final type = punch.punchType.toLowerCase().replaceAll('_', '-');
    final isClockIn = type == 'clock-in';
    final isClockOut = type == 'clock-out';
    final isBreakStart = type == 'break-start';
    final isPositive = isClockIn || isBreakStart;

    final color = isPositive
        ? const Color(0xFF1565C0)
        : const Color(0xFFC62828);
    final icon = isClockIn
        ? Icons.login_rounded
        : isClockOut
        ? Icons.logout_rounded
        : isBreakStart
        ? Icons.free_breakfast_rounded
        : Icons.done_rounded;
    final label = isClockIn
        ? 'Clock In'
        : isClockOut
        ? 'Clock Out'
        : isBreakStart
        ? 'Break Start'
        : 'Break End';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  punch.isManual ? 'Manual entry' : 'Recorded by device',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),
          Text(
            formatAttendanceTime(punch.punchTime),
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
