import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/overtime/data/datasources/overtime_remote_datasource.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';

class OvertimeRepositoryImpl implements OvertimeRepository {
  OvertimeRepositoryImpl(this._remoteDataSource);

  final OvertimeRemoteDataSource _remoteDataSource;

  @override
  Future<List<OvertimeRequest>> getOvertimeRequests() async {
    final models = await _remoteDataSource.getOvertimeRequests();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<OvertimeRequest>> getAllOvertimeRequests() async {
    final models = await _remoteDataSource.getAllOvertimeRequests();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<OvertimeRequest> createOvertimeRequest({
    required String userId,
    required DateTime date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  }) async {
    final model = await _remoteDataSource.createOvertimeRequest(
      userId: userId,
      date: formatApiDate(date),
      startTime: startTime,
      endTime: endTime,
      otType: otType,
      reason: reason,
    );
    return model.toEntity();
  }

  @override
  Future<OvertimeRequest> updateOvertimeStatus(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  }) async {
    final model = await _remoteDataSource.updateOvertimeStatus(
      id,
      decision: decision,
      approvedHours: approvedHours,
      reason: reason,
    );
    return model.toEntity();
  }
}
