import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class UpdateLeaveRequestStatusUsecase {
  final LeaveRepository _repository;

  UpdateLeaveRequestStatusUsecase(this._repository);

  Future<LeaveRequest> call(
    String id, {
    required LeaveDecision decision,
    String? reason,
  }) {
    return _repository.updateLeaveRequestStatus(
      id,
      decision: decision,
      reason: reason,
    );
  }
}
