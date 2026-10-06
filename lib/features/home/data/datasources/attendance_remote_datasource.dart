import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
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

  /// Fetches attendance for a single [date] or a [start]/[end] range.
  /// All dates are sent as `YYYY-MM-DD` query parameters.
  Future<List<TodayAttendanceModel>> getMyAttendance({
    DateTime? date,
    DateTime? start,
    DateTime? end,
  });

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
  Future<List<TodayAttendanceModel>> getMyAttendance({
    DateTime? date,
    DateTime? start,
    DateTime? end,
  }) async {
    final queryParameters = <String, dynamic>{
      if (date != null)
        'date': formatApiDate(date)
      else if (start != null && end != null) ...{
        'start': formatApiDate(start),
        'end': formatApiDate(end),
      },
    };

    return _apiService.get<List<TodayAttendanceModel>>(
      '/api/v1/attendance/my-attendance',
      queryParameters: queryParameters.isEmpty ? null : queryParameters,
      parser: _parseAttendanceList,
    );
  }

  List<TodayAttendanceModel> _parseAttendanceList(dynamic data) {
    try {
      final payload = data is Map<String, dynamic>
          ? data['data'] ?? data
          : data;
      if (payload is List) {
        return payload
            .whereType<Map<String, dynamic>>()
            .map(TodayAttendanceModel.fromJson)
            .toList();
      }
      if (payload is Map<String, dynamic>) {
        return [TodayAttendanceModel.fromJson(payload)];
      }
      return const [];
    } catch (e, stack) {
      AppLogger.e(
        'Error parsing attendance history: $e',
        error: e,
        stack: stack,
      );
      rethrow;
    }
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
