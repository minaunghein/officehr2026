import 'package:office_hr/features/leave/data/datasources/leave_remote_datasource.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class LeaveRepositoryImpl implements LeaveRepository {
  LeaveRepositoryImpl(this._remoteDataSource);

  final LeaveRemoteDataSource _remoteDataSource;

  @override
  Future<List<LeaveBalance>> getLeaveBalances() async {
    final models = await _remoteDataSource.getLeaveBalances();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<LeaveRequest>> getLeaveRequests() async {
    final models = await _remoteDataSource.getLeaveRequests();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<LeaveType>> getLeaveTypes() async {
    final models = await _remoteDataSource.getLeaveTypes();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<LeaveRequest> createLeaveRequest({
    required String leaveTypeId,
    required String employeeId,
    required DateTime startDate,
    required DateTime endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  }) async {
    final model = await _remoteDataSource.createLeaveRequest(
      leaveTypeId: leaveTypeId,
      employeeId: employeeId,
      startDate: startDate.toUtc().toIso8601String(),
      endDate: endDate.toUtc().toIso8601String(),
      isHalfDay: isHalfDay,
      halfDayPeriod: halfDayPeriod,
      reason: reason,
      attachmentUrl: attachmentUrl,
    );
    return model.toEntity();
  }

  @override
  Future<UploadedFile> uploadFile({
    required String filePath,
    required String fileName,
  }) async {
    final model = await _remoteDataSource.uploadFile(
      filePath: filePath,
      fileName: fileName,
    );
    return model.toEntity(_remoteDataSource.fileUrlFor(model.id));
  }
}
