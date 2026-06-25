import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/attendance/data/models/attendance_model.dart';
import 'package:office_hr/features/attendance/data/models/department_attendances.dart';

abstract class AttendanceDatasource {
  Future<AttendanceModel> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String desc = "",
  });

  Future<List<AttendanceModel>> getTodayClockIn();
  Future<List<DepartmentAttendanceModel>> getDepartmentAttendances();
}

class AttendanceDatasourceImpl implements AttendanceDatasource {
  AttendanceDatasourceImpl(this._apiService);
  final ApiService _apiService;

  @override
  Future<AttendanceModel> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String desc = "",
  }) async {
    final response = await _apiService.post<AttendanceModel>(
      '/api/v1/users/clockin',
      data: {
        "clockinby": "Mobile",
        "needapproval": needApproval,
        "lat": lat,
        "long": long,
        "desc": desc,
      },
      parser: (data) {
        final raw = (data is Map) ? data : <String, dynamic>{};
        final jsonData =
            (raw['data'] is Map ? raw['data'] : raw) as Map<String, dynamic>;
        return AttendanceModel.fromJson(jsonData);
      },
    );
    return response;
  }

  @override
  Future<List<AttendanceModel>> getTodayClockIn() async {
    final response = await _apiService.get<List<AttendanceModel>>(
      '/api/v1/users/todayclockin',
      parser: (data) {
        if (data == null) return [];
        final dynamic listData = data is List
            ? data
            : (data is Map ? data['data'] : null);
        if (listData == null || listData is! List) return [];
        return listData
            .whereType<Map<String, dynamic>>()
            .map((e) => AttendanceModel.fromJson(_sanitizeAttendance(e)))
            .toList();
      },
    );
    return response;
  }

  @override
  Future<List<DepartmentAttendanceModel>> getDepartmentAttendances() async {
    final response = await _apiService.get<List<DepartmentAttendanceModel>>(
      '/api/v1/users/departmenttempclockin',
      parser: (data) {
        if (data == null) return [];
        final dynamic listData = data is List
            ? data
            : (data is Map ? data['data'] : null);
        if (listData == null || listData is! List) return [];

        final result = <DepartmentAttendanceModel>[];
        for (final e in listData.whereType<Map<String, dynamic>>()) {
          try {
            result.add(
              DepartmentAttendanceModel.fromJson(_sanitizeAttendance(e)),
            );
          } catch (err) {
            print('Skipping malformed record: $err');
            print('JSON: $e');
          }
        }
        return result;
      },
    );
    return response;
  }
}

Map<String, dynamic> _sanitizeAttendance(Map<String, dynamic> json) {
  final copy = Map<String, dynamic>.from(json);

  void sanitizeSingle(Map<String, dynamic>? attendance) {
    if (attendance != null &&
        attendance['status'] != null &&
        attendance['status'] is! Map) {
      attendance['status'] = null;
    }
  }

  sanitizeSingle(copy);

  if (copy['sod'] is Map<String, dynamic>) sanitizeSingle(copy['sod']);
  if (copy['eod'] is Map<String, dynamic>) sanitizeSingle(copy['eod']);

  if (copy['clockins'] is List) {
    final list = copy['clockins'] as List;
    for (var i = 0; i < list.length; i++) {
      if (list[i] is Map<String, dynamic>) {
        sanitizeSingle(list[i]);
      }
    }
  }

  return copy;
}
