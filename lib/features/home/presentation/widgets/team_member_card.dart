import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/features/home/presentation/widgets/team_member_avatar.dart';
import 'package:office_hr/shared/date_formatter.dart';

class TeamMemberCard extends StatelessWidget {
  const TeamMemberCard({super.key, required this.attendance, this.onTap});

  final TeamAttendance attendance;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheduled = attendance.scheduled;
    final actual = attendance.actual;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      constraints: const BoxConstraints(minHeight: 120),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TeamMemberAvatar(name: attendance.fullName),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            attendance.fullName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (attendance.employeeCode.isNotEmpty)
                            Text(
                              attendance.employeeCode,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.55,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    AttendanceStatusChip(
                      status: attendance.status,
                      dense: true,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _TimeBlock(
                      label: 'Scheduled',
                      value: _range(scheduled?.clockIn, scheduled?.clockOut),
                    ),
                    _TimeBlock(
                      label: 'Actual',
                      value: _range(actual?.clockIn, actual?.clockOut),
                    ),
                  ],
                ),
                if (attendance.notes.trim().isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Text(
                    attendance.notes,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  static String _range(String? start, String? end) {
    if ((start?.trim().isEmpty ?? true) && (end?.trim().isEmpty ?? true)) {
      return '--:--';
    }
    return '${formatAttendanceTime(start)} - ${formatAttendanceTime(end)}';
  }
}

class _TimeBlock extends StatelessWidget {
  const _TimeBlock({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
