import 'package:office_hr/core/network/api_service.dart';

class AttendanceRepository {
  final ApiService _apiService;

  AttendanceRepository(this._apiService);

  Future<Map<String, dynamic>> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String desc = "Test",
  }) async {
    final response = await _apiService.post(
      '/api/v1/users/clockin',
      data: {
        "clockinby": "Mobile",
        "needapproval": needApproval,
        "lat": lat,
        "long": long,
        "desc": desc,
      },
    );
    return response as Map<String, dynamic>;
  }
}
