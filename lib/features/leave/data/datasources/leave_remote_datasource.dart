import 'package:dio/dio.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/leave/data/models/leave_balance_model.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';
import 'package:office_hr/features/leave/data/models/leave_request_model.dart';
import 'package:office_hr/features/leave/data/models/leave_type_model.dart';
import 'package:office_hr/features/leave/data/models/uploaded_file_model.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';

abstract class LeaveRemoteDataSource {
  Future<List<LeaveBalanceModel>> getLeaveBalances();

  Future<List<LeaveRequestModel>> getLeaveRequests();

  Future<List<LeaveTypeModel>> getLeaveTypes();

  Future<LeaveRequestModel> createLeaveRequest({
    required String leaveTypeId,
    required String employeeId,
    required String startDate,
    required String endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  });

  Future<UploadedFileModel> uploadFile({
    required String filePath,
    required String fileName,
  });

  String fileUrlFor(String id);
}

class LeaveRemoteDataSourceImpl implements LeaveRemoteDataSource {
  LeaveRemoteDataSourceImpl(this._apiService, this._baseUrl);

  final ApiService _apiService;
  final String _baseUrl;

  @override
  Future<List<LeaveBalanceModel>> getLeaveBalances() async {
    return _apiService.get<List<LeaveBalanceModel>>(
      '/api/v1/leave-balance',
      parser: (data) => readListEnvelope(data)
          .map((e) => LeaveBalanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<List<LeaveRequestModel>> getLeaveRequests() async {
    return _apiService.get<List<LeaveRequestModel>>(
      '/api/v1/leave-requests',
      parser: (data) => readListEnvelope(data)
          .map((e) => LeaveRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<List<LeaveTypeModel>> getLeaveTypes() async {
    return _apiService.get<List<LeaveTypeModel>>(
      '/api/v1/leave/types',
      parser: (data) => readListEnvelope(data)
          .map((e) => LeaveTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<LeaveRequestModel> createLeaveRequest({
    required String leaveTypeId,
    required String employeeId,
    required String startDate,
    required String endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  }) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/leave-requests',
      data: {
        'leave_type_id': leaveTypeId,
        'employee_id': employeeId,
        'start_date': startDate,
        'end_date': endDate,
        'is_half_day': isHalfDay,
        'half_day_period': halfDayPeriod.value,
        'reason': reason,
        if (attachmentUrl != null && attachmentUrl.isNotEmpty)
          'attachment_url': attachmentUrl,
      },
      parser: (data) => readEnvelope(data),
    );

    return LeaveRequestModel.fromJson(response);
  }

  @override
  Future<UploadedFileModel> uploadFile({
    required String filePath,
    required String fileName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath, filename: fileName),
      });

      final response = await _apiService.post<Map<String, dynamic>>(
        '/api/v1/files/upload',
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
        parser: (data) => readEnvelope(data),
      );

      final model = UploadedFileModel.fromJson(response);
      if (model.id.isEmpty) {
        throw StateError('Upload response did not contain a file id.');
      }
      return model;
    } catch (error, stack) {
      AppLogger.e('File upload failed: $error', error: error, stack: stack);
      rethrow;
    }
  }

  @override
  String fileUrlFor(String id) => '$_baseUrl/api/v1/files/$id';
}
