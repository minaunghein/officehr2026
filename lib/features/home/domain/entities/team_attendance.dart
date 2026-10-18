import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_record.dart';

part 'team_attendance.freezed.dart';

@freezed
abstract class TeamAttendance with _$TeamAttendance {
  const TeamAttendance._();

  const factory TeamAttendance({
    required String id,
    @Default('') String userId,
    @Default('') String employeeId,
    @Default('') String employeeCode,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String positionId,
    @Default('') String departmentId,
    @Default('') String dateId,
    AttendanceTimeRange? scheduled,
    AttendanceTimeRange? actual,
    @Default(0) int workDuration,
    @Default(0) int breakDuration,
    @Default(0) int lateMinutes,
    @Default(0) int earlyLeaveMinutes,
    @Default(0) int overtimeMinutes,
    @Default('') String status,
    @Default(false) bool isHalfDay,
    @Default(false) bool isHoliday,
    String? leaveType,
    @Default('') String notes,
  }) = _TeamAttendance;

  String get fullName {
    final name = [
      firstName.trim(),
      lastName.trim(),
    ].where((part) => part.isNotEmpty).join(' ').trim();
    return name.isEmpty ? 'Unknown' : name;
  }
}
