import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';

class UpdateOvertimeStatusUsecase {
  final OvertimeRepository _repository;

  UpdateOvertimeStatusUsecase(this._repository);

  Future<OvertimeRequest> call(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  }) {
    return _repository.updateOvertimeStatus(
      id,
      decision: decision,
      approvedHours: approvedHours,
      reason: reason,
    );
  }
}
