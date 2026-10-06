import 'package:office_hr/features/home/domain/entities/clock_attendance_response.dart';
import 'package:office_hr/features/home/domain/entities/attendance_stats.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';

abstract class AttendanceRepository {
  Future<ClockAttendanceResponse> clockIn([ClockAttendanceParams? params]);
  Future<ClockAttendanceResponse> clockOut([ClockAttendanceParams? params]);
  Future<ClockAttendanceResponse> breakStart([ClockAttendanceParams? params]);
  Future<ClockAttendanceResponse> breakEnd([ClockAttendanceParams? params]);
  Future<TodayAttendance> getTodayAttendance();
  Future<List<TodayAttendance>> getMyAttendance({
    DateTime? date,
    DateTime? start,
    DateTime? end,
  });
  Future<AttendanceStats> getAttendanceStats({
    required DateTime start,
    required DateTime end,
  });
}
