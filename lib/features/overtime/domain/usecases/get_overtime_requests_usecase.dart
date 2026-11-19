import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';

class GetOvertimeRequestsUsecase {
  final OvertimeRepository _repository;

  GetOvertimeRequestsUsecase(this._repository);

  Future<List<OvertimeRequest>> call() {
    return _repository.getOvertimeRequests();
  }
}
