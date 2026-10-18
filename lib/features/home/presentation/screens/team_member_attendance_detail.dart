import 'package:flutter/material.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/features/home/presentation/widgets/team_member_attendance_header.dart';
import 'package:office_hr/shared/date_formatter.dart';

class TeamMemberAttendanceDetailScreen extends StatelessWidget {
  const TeamMemberAttendanceDetailScreen({super.key, required this.attendance});

  final TeamAttendance attendance;

  @override
  Widget build(BuildContext context) {
    final scheduled = attendance.scheduled;
    final actual = attendance.actual;
    final hasLeaveType = attendance.leaveType?.trim().isNotEmpty ?? false;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Attendance Details'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          TeamMemberAttendanceHeader(attendance: attendance),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Attendance',
            icon: Icons.event_available_rounded,
            children: [
              DetailRow(
                label: 'Status',
                value: attendanceStatusLabel(attendance.status),
              ),
              DetailRow(
                label: 'Scheduled',
                value: _range(scheduled?.clockIn, scheduled?.clockOut),
              ),
              DetailRow(
                label: 'Actual',
                value: _range(actual?.clockIn, actual?.clockOut),
              ),
              DetailRow(
                label: 'Work duration',
                value: _duration(attendance.workDuration),
              ),
              DetailRow(
                label: 'Break duration',
                value: _duration(attendance.breakDuration),
              ),
              DetailRow(label: 'Late', value: _minutes(attendance.lateMinutes)),
              DetailRow(
                label: 'Early leave',
                value: _minutes(attendance.earlyLeaveMinutes),
              ),
              DetailRow(
                label: 'Overtime',
                value: _minutes(attendance.overtimeMinutes),
              ),
              DetailRow(
                label: 'Half day',
                value: attendance.isHalfDay ? 'Yes' : 'No',
              ),
              if (hasLeaveType)
                DetailRow(label: 'Leave type', value: attendance.leaveType!),
              DetailRow(
                label: 'Holiday',
                value: attendance.isHoliday ? 'Yes' : 'No',
              ),
              if (attendance.notes.trim().isNotEmpty)
                DetailRow(
                  label: 'Notes',
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
