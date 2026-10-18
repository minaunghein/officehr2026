import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';

class TeamAttendanceSummary extends StatelessWidget {
  const TeamAttendanceSummary({
    super.key,
    required this.records,
    required this.departmentTitle,
  });

  final List<TeamAttendance> records;
  final String departmentTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradient = theme.extension<OfficeHrThemeExtension>()?.gradient;

    var present = 0;
    var onLeave = 0;
    var absent = 0;
    for (final record in records) {
      switch (record.status.toUpperCase()) {
        case 'PRESENT':
        case 'LATE':
        case 'HALF_DAY':
          present++;
        case 'ON_LEAVE':
          onLeave++;
        case 'ABSENT':
          absent++;
        default:
          break;
      }
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: 0.25),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.groups_2_rounded,
                size: 18,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  departmentTitle.isEmpty ? 'Department' : departmentTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            'Today at a glance',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${records.length}',
                style: theme.textTheme.displayMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
              const SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  records.length == 1 ? 'team member' : 'team members',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.85),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              _Stat(
                label: 'Present',
                value: present,
                color: theme.colorScheme.onPrimary,
              ),
              _Stat(
                label: 'On Leave',
                value: onLeave,
                color: theme.colorScheme.onPrimary,
              ),
              _Stat(
                label: 'Absent',
                value: absent,
                color: theme.colorScheme.onPrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value, required this.color});

  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$value',
            style: theme.textTheme.titleLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: color.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
