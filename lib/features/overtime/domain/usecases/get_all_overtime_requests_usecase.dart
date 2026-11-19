import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';

class GetAllOvertimeRequestsUsecase {
  final OvertimeRepository _repository;

  GetAllOvertimeRequestsUsecase(this._repository);

  Future<List<OvertimeRequest>> call() {
    return _repository.getAllOvertimeRequests();
  }
}
