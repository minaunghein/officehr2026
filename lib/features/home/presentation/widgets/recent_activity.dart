import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/home/domain/entities/attendance_punch.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/shared/date_formatter.dart';

class RecentActivity extends ConsumerWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceState = ref.watch(attendanceProvider);
    final attendances = attendanceState.value?.todayAttendance?.punches ?? [];
    final isLoading = attendanceState.isLoading;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TODAY\'S ACTIVITY',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
            if (attendances.isNotEmpty)
              Text(
                '${attendances.length} record${attendances.length > 1 ? 's' : ''}',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        if (isLoading && attendances.isEmpty)
          const _ActivitySkeleton()
        else if (attendances.isEmpty)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              side: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                children: [
                  Icon(
                    Icons.history_rounded,
                    size: 40,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'No activity today',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.45,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              side: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                for (int i = 0; i < attendances.length; i++) ...[
                  _AttendanceActivityTile(
                    attendance: attendances[i],
                    // isFirst: i == 0,
                  ),
                  if (i < attendances.length - 1)
                    Divider(
                      height: 1,
                      indent: 60,
                      endIndent: 0,
                      color: theme.colorScheme.outline.withValues(alpha: 0.12),
                    ),
                ],
              ],
            ),
          ),
      ],
    );
  }
}

class _ActivitySkeleton extends StatelessWidget {
  const _ActivitySkeleton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        children: [
          for (int i = 0; i < 3; i++) ...[
            Row(
              children: [
                ContainerShimmer(
                  width: 44,
                  height: 44,
                  borderRadius: BorderRadius.circular(12),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContainerShimmer(width: 150, height: 14),
                      const SizedBox(height: 8),
                      ContainerShimmer(width: 100, height: 11),
                    ],
                  ),
                ),
              ],
            ),
            if (i < 2) const SizedBox(height: 18),
          ],
        ],
      ),
    );
  }
}

class _AttendanceActivityTile extends StatelessWidget {
  const _AttendanceActivityTile({
    required this.attendance,
    // required this.isFirst,
  });

  final AttendancePunch attendance;
  // final bool isFirst;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final type = attendance.punchType.toLowerCase().replaceAll('_', '-');
    final isClockIn = type == 'clock-in';
    final isClockOut = type == 'clock-out';
    final isBreakStart = type == 'break-start';
    final isPositive = isClockIn || isBreakStart;
    final Color iconBgColor = isPositive
        ? const Color(0xFF1565C0).withValues(alpha: 0.1)
        : const Color(0xFFC62828).withValues(alpha: 0.1);
    final Color iconColor = isPositive
        ? const Color(0xFF1565C0)
        : const Color(0xFFC62828);
    final IconData icon = isClockIn
        ? Icons.login_rounded
        : isClockOut
        ? Icons.logout_rounded
        : isBreakStart
        ? Icons.free_breakfast_rounded
        : Icons.done_rounded;
    final String label = isClockIn
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
              color: iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$label  ${formatAttendanceTime(attendance.punchTime)}',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    // if (isFirst) ...[
                    //   const SizedBox(width: 8),
                    //   Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 7,
                    //       vertical: 2,
                    //     ),
                    //     decoration: BoxDecoration(
                    //       color: theme.colorScheme.primary.withValues(
                    //         alpha: 0.1,
                    //       ),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Text(
                    //       'Latest',
                    //       style: theme.textTheme.labelSmall?.copyWith(
                    //         color: theme.colorScheme.primary,
                    //         fontWeight: FontWeight.w700,
                    //         fontSize: 10,
                    //       ),
                    //     ),
                    //   ),
                    // ],
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  attendance.isManual ? 'Manual entry' : 'Recorded by device',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
