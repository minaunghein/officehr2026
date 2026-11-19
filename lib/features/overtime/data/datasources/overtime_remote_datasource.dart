import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/overtime/data/models/overtime_json.dart';
import 'package:office_hr/features/overtime/data/models/overtime_request_model.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

abstract class OvertimeRemoteDataSource {
  Future<List<OvertimeRequestModel>> getOvertimeRequests();

  Future<List<OvertimeRequestModel>> getAllOvertimeRequests();

  Future<OvertimeRequestModel> createOvertimeRequest({
    required String userId,
    required String date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  });

  Future<OvertimeRequestModel> updateOvertimeStatus(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  });
}

class OvertimeRemoteDataSourceImpl implements OvertimeRemoteDataSource {
  OvertimeRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<OvertimeRequestModel>> getOvertimeRequests() {
    return _apiService.get<List<OvertimeRequestModel>>(
      '/api/v1/overtime-requests',
      parser: _parseList,
    );
  }

  @override
  Future<List<OvertimeRequestModel>> getAllOvertimeRequests() {
    return _apiService.get<List<OvertimeRequestModel>>(
      '/api/v1/overtime-requests/all',
      parser: _parseList,
    );
  }

  @override
  Future<OvertimeRequestModel> createOvertimeRequest({
    required String userId,
    required String date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  }) async {
    final trimmedReason = reason?.trim();
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/overtime-requests',
      data: {
        'user_id': userId,
        'date': date,
        'start_time': startTime,
        'end_time': endTime,
        'ot_type': otType.value,
        if (trimmedReason != null && trimmedReason.isNotEmpty)
          'reason': trimmedReason,
      },
      parser: (data) => readEnvelope(data),
    );

    return OvertimeRequestModel.fromJson(response);
  }

  @override
  Future<OvertimeRequestModel> updateOvertimeStatus(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  }) async {
    final trimmedReason = reason?.trim();
    final response = await _apiService.patch<Map<String, dynamic>>(
      '/api/v1/overtime-requests/$id/status',
      data: {
        'action': decision.value,
        if (decision == OvertimeDecision.approved && approvedHours != null)
          'approved_hours': approvedHours,
        if (trimmedReason != null && trimmedReason.isNotEmpty)
          'reason': trimmedReason,
      },
      parser: (data) => readEnvelope(data),
    );

    return OvertimeRequestModel.fromJson(response);
  }

  List<OvertimeRequestModel> _parseList(dynamic data) {
    try {
      return readListEnvelope(data)
          .whereType<Map<String, dynamic>>()
          .map(OvertimeRequestModel.fromJson)
          .toList();
    } catch (e, stack) {
      AppLogger.e(
        'Error parsing overtime requests: $e',
        error: e,
        stack: stack,
      );
      rethrow;
    }
  }
}
