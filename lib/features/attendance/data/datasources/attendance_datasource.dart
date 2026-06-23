import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/attendance/data/models/attendance_model.dart';

abstract class AttendanceDatasource {
  Future<AttendanceModel> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String desc = "",
  });

  Future<List<AttendanceModel>> getTodayClockIn({required String date});
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
  Future<List<AttendanceModel>> getTodayClockIn({required String date}) async {
    final response = await _apiService.get<List<AttendanceModel>>(
      '/api/v1/users/todayclockin',
      data: {"date": date},
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
}

/// Sanitizes a raw attendance JSON map before passing it to [AttendanceModel.fromJson].
/// Some API responses return reference fields (e.g. `status`) as a plain String
/// ObjectId instead of a fully populated object. This guard nulls them out so
/// the Freezed-generated parser doesn't throw a cast error.
Map<String, dynamic> _sanitizeAttendance(Map<String, dynamic> json) {
  final copy = Map<String, dynamic>.from(json);
  // If status is not a full object Map, treat it as absent
  if (copy['status'] is! Map) {
    copy['status'] = null;
  }
  return copy;
}
