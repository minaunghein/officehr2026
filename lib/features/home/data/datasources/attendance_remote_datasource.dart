import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/home/data/models/attendance_stats_model.dart';
import 'package:office_hr/features/home/data/models/clock_attendance_response_model.dart';
import 'package:office_hr/features/home/data/models/today_attendance_model.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';

abstract class AttendanceRemoteDatasource {
  Future<ClockAttendanceResponseModel> clockIn([ClockAttendanceParams? params]);
  Future<ClockAttendanceResponseModel> clockOut([
    ClockAttendanceParams? params,
  ]);
  Future<ClockAttendanceResponseModel> breakStart([
    ClockAttendanceParams? params,
  ]);
  Future<ClockAttendanceResponseModel> breakEnd([
    ClockAttendanceParams? params,
  ]);
  Future<TodayAttendanceModel> getTodayAttendance();
  Future<AttendanceStatsModel> getAttendanceStats({
    required DateTime start,
    required DateTime end,
  });
}

class AttendanceRemoteDatasourceImpl implements AttendanceRemoteDatasource {
  AttendanceRemoteDatasourceImpl({required this._apiService});
  final ApiService _apiService;

  @override
  Future<ClockAttendanceResponseModel> clockIn([
    ClockAttendanceParams? params,
  ]) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/attendance/clock-in',
      data: params?.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockAttendanceResponseModel.fromJson(response);
  }

  @override
  Future<ClockAttendanceResponseModel> clockOut([
    ClockAttendanceParams? params,
  ]) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/attendance/clock-out',
      data: params?.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockAttendanceResponseModel.fromJson(response);
  }

  @override
  Future<ClockAttendanceResponseModel> breakStart([
    ClockAttendanceParams? params,
  ]) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/attendance/break-start',
      data: params?.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockAttendanceResponseModel.fromJson(response);
  }

  @override
  Future<ClockAttendanceResponseModel> breakEnd([
    ClockAttendanceParams? params,
  ]) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/attendance/break-end',
      data: params?.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockAttendanceResponseModel.fromJson(response);
  }

  @override
  Future<TodayAttendanceModel> getTodayAttendance() async {
    final response = await _apiService.get<Map<String, dynamic>>(
      '/api/v1/attendance/my-attendance',
      parser: (data) => data as Map<String, dynamic>,
    );

    return TodayAttendanceModel.fromJson(response);
  }

  @override
  Future<AttendanceStatsModel> getAttendanceStats({
    required DateTime start,
    required DateTime end,
  }) async {
    final response = await _apiService.get<Map<String, dynamic>>(
      '/api/v1/attendance/stats',
      queryParameters: {
        'start': start.toUtc().toIso8601String(),
        'end': end.toUtc().toIso8601String(),
      },
      parser: (data) => data as Map<String, dynamic>,
    );

    return AttendanceStatsModel.fromJson(response);
  }
}
