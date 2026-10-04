import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/home/data/models/attendance_amendment_model.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';

abstract class AttendanceAmendmentRemoteDatasource {
  Future<List<AttendanceAmendmentModel>> getAmendments({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  });

  Future<AttendanceAmendmentModel> getAmendmentById(String id);

  Future<AttendanceAmendmentModel> createAmendment(
    CreateAmendmentParams params,
  );

  Future<AttendanceAmendmentModel> updateAmendmentStatus(
    String id, {
    required String status,
    String? rejectionReason,
  });
}

class AttendanceAmendmentRemoteDatasourceImpl
    implements AttendanceAmendmentRemoteDatasource {
  AttendanceAmendmentRemoteDatasourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<AttendanceAmendmentModel>> getAmendments({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  }) async {
    final queryParameters = <String, dynamic>{
      if (start != null) 'start': formatApiDate(start),
      if (end != null) 'end': formatApiDate(end),
      if (statuses.isNotEmpty) 'status': statuses.join(','),
    };

    return _apiService.get<List<AttendanceAmendmentModel>>(
      '/api/v1/amendments',
      queryParameters: queryParameters.isEmpty ? null : queryParameters,
      parser: _parseAmendmentList,
    );
  }

  @override
  Future<AttendanceAmendmentModel> getAmendmentById(String id) async {
    final response = await _apiService.get<Map<String, dynamic>>(
      '/api/v1/amendments/$id',
      parser: (data) => data as Map<String, dynamic>,
    );

    return AttendanceAmendmentModel.fromJson(_unwrap(response));
  }

  @override
  Future<AttendanceAmendmentModel> createAmendment(
    CreateAmendmentParams params,
  ) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/amendments',
      data: params.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return AttendanceAmendmentModel.fromJson(_unwrap(response));
  }

  @override
  Future<AttendanceAmendmentModel> updateAmendmentStatus(
    String id, {
    required String status,
    String? rejectionReason,
  }) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/amendments/$id/status',
      data: {
        'status': status,
        if (rejectionReason != null && rejectionReason.trim().isNotEmpty)
          'rejection_reason': rejectionReason.trim(),
      },
      parser: (data) => data as Map<String, dynamic>,
    );

    return AttendanceAmendmentModel.fromJson(_unwrap(response));
  }

  List<AttendanceAmendmentModel> _parseAmendmentList(dynamic data) {
    try {
      final payload = data is Map<String, dynamic>
          ? data['data'] ?? data
          : data;
      if (payload is List) {
        return payload
            .whereType<Map<String, dynamic>>()
            .map(AttendanceAmendmentModel.fromJson)
            .toList();
      }
      if (payload is Map<String, dynamic>) {
        return [AttendanceAmendmentModel.fromJson(payload)];
      }
      return const [];
    } catch (e, stack) {
      AppLogger.e(
        'Error parsing attendance amendments: $e',
        error: e,
        stack: stack,
      );
      rethrow;
    }
  }

  Map<String, dynamic> _unwrap(Map<String, dynamic> json) {
    final data = json['data'];
    return data is Map<String, dynamic> ? data : json;
  }
}
