import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/features/home/presentation/widgets/team_member_avatar.dart';

class TeamMemberAttendanceHeader extends StatelessWidget {
  const TeamMemberAttendanceHeader({super.key, required this.attendance});

  final TeamAttendance attendance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Column(
        children: [
          TeamMemberAvatar(name: attendance.fullName, size: 64),
          const SizedBox(height: 14),
          Text(
            attendance.fullName,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          if (attendance.employeeCode.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              attendance.employeeCode,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
              ),
            ),
          ],
          const SizedBox(height: 14),
          AttendanceStatusChip(status: attendance.status),
        ],
      ),
    );
  }
}
