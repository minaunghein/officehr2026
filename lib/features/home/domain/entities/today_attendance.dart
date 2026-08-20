import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_punch.dart';
import 'package:office_hr/features/home/domain/entities/attendance_record.dart';

part 'today_attendance.freezed.dart';

@freezed
abstract class TodayAttendance with _$TodayAttendance {
  const factory TodayAttendance({
    DateTime? date,
    required bool clockedIn,
    required bool breakInProgress,
    String? lastClockIn,
    String? lastClockOut,
    String? clockIn,
    String? clockOut,
    String? breakStart,
    String? breakEnd,
    required int workDuration,
    required int breakDuration,
    required String status,
    required int totalSessions,
    required List<AttendancePunch> punches,
    AttendanceRecord? attendanceRecord,
  }) = _TodayAttendance;
}
