import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';

class CreateOvertimeRequestUsecase {
  final OvertimeRepository _repository;

  CreateOvertimeRequestUsecase(this._repository);

  Future<OvertimeRequest> call({
    required String userId,
    required DateTime date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  }) {
    return _repository.createOvertimeRequest(
      userId: userId,
      date: date,
      startTime: startTime,
      endTime: endTime,
      otType: otType,
      reason: reason,
    );
  }
}
