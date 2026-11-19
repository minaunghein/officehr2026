import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

abstract class OvertimeRepository {
  Future<List<OvertimeRequest>> getOvertimeRequests();

  Future<List<OvertimeRequest>> getAllOvertimeRequests();

  Future<OvertimeRequest> createOvertimeRequest({
    required String userId,
    required DateTime date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  });

  Future<OvertimeRequest> updateOvertimeStatus(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  });
}
