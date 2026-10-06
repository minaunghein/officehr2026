import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_punch.dart';
import 'package:office_hr/features/home/domain/entities/attendance_record.dart';

part 'clock_attendance_response.freezed.dart';

@freezed
abstract class ClockAttendanceResponse with _$ClockAttendanceResponse {
  const factory ClockAttendanceResponse({
    required AttendancePunch punch,
    AttendanceRecord? attendanceRecord,
  }) = _ClockAttendanceResponse;
}
