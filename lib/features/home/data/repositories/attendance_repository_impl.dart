import 'package:office_hr/features/home/data/datasources/attendance_remote_datasource.dart';
import 'package:office_hr/features/home/domain/entities/attendance_stats.dart';
import 'package:office_hr/features/home/domain/entities/clock_attendance_response.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRepositoryImpl({required this.datasource});
  final AttendanceRemoteDatasource datasource;

  @override
  Future<ClockAttendanceResponse> clockIn([
    ClockAttendanceParams? params,
  ]) async {
    final response = await datasource.clockIn(params);
    return response.toEntity();
  }

  @override
  Future<ClockAttendanceResponse> clockOut([
    ClockAttendanceParams? params,
  ]) async {
    final response = await datasource.clockOut(params);
    return response.toEntity();
  }

  @override
  Future<ClockAttendanceResponse> breakStart([
    ClockAttendanceParams? params,
  ]) async {
    final response = await datasource.breakStart(params);
    return response.toEntity();
  }

  @override
  Future<ClockAttendanceResponse> breakEnd([
    ClockAttendanceParams? params,
  ]) async {
    final response = await datasource.breakEnd(params);
    return response.toEntity();
  }

  @override
  Future<TodayAttendance> getTodayAttendance() async {
    final response = await datasource.getTodayAttendance();
    return response.toEntity();
  }

  @override
  Future<AttendanceStats> getAttendanceStats({
    required DateTime start,
    required DateTime end,
  }) async {
    final response = await datasource.getAttendanceStats(
      start: start,
      end: end,
    );
    return response.toEntity();
  }
}
