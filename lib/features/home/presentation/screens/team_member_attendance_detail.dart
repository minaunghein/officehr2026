import 'package:flutter/material.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/features/home/presentation/widgets/team_member_attendance_header.dart';
import 'package:office_hr/shared/date_formatter.dart';

import 'package:easy_localization/easy_localization.dart';

class TeamMemberAttendanceDetailScreen extends StatelessWidget {
  const TeamMemberAttendanceDetailScreen({super.key, required this.attendance});

  final TeamAttendance attendance;

  @override
  Widget build(BuildContext context) {
    final scheduled = attendance.scheduled;
    final actual = attendance.actual;
    final hasLeaveType = attendance.leaveType?.trim().isNotEmpty ?? false;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Attendance Details'.tr())),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          TeamMemberAttendanceHeader(attendance: attendance),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Attendance'.tr(),
            icon: Icons.event_available_rounded,
            children: [
              DetailRow(
                label: 'Status'.tr(),
                value: attendanceStatusLabel(attendance.status),
              ),
              DetailRow(
                label: 'Scheduled'.tr(),
                value: _range(scheduled?.clockIn, scheduled?.clockOut),
              ),
              DetailRow(
                label: 'Actual'.tr(),
                value: _range(actual?.clockIn, actual?.clockOut),
              ),
              DetailRow(
                label: 'Work duration'.tr(),
                value: _duration(attendance.workDuration),
              ),
              DetailRow(
                label: 'Break duration'.tr(),
                value: _duration(attendance.breakDuration),
              ),
              DetailRow(
                label: 'Late'.tr(),
                value: _minutes(attendance.lateMinutes),
              ),
              DetailRow(
                label: 'Early leave'.tr(),
                value: _minutes(attendance.earlyLeaveMinutes),
              ),
              DetailRow(
                label: 'Overtime'.tr(),
                value: _minutes(attendance.overtimeMinutes),
              ),
              DetailRow(
                label: 'Half day'.tr(),
                value: attendance.isHalfDay ? 'Yes'.tr() : 'No'.tr(),
              ),
              if (hasLeaveType)
                DetailRow(
                  label: 'Leave type'.tr(),
                  value: attendance.leaveType!,
                ),
              DetailRow(
                label: 'Holiday'.tr(),
                value: attendance.isHoliday ? 'Yes'.tr() : 'No'.tr(),
              ),
              if (attendance.notes.trim().isNotEmpty)
                DetailRow(
                  label: 'Notes'.tr(),
                  value: attendance.notes,
                  multiline: true,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

String _range(String? start, String? end) {
  if ((start?.trim().isEmpty ?? true) && (end?.trim().isEmpty ?? true)) {
    return '--:--';
  }
  return '${formatAttendanceTime(start)} - ${formatAttendanceTime(end)}';
}

String _duration(int minutes) {
  if (minutes <= 0) return '--';
  return formatDurationText(Duration(minutes: minutes));
}

String _minutes(int minutes) => minutes <= 0 ? '--' : '${minutes}m';
