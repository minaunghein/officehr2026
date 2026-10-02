import 'package:office_hr/features/leave/domain/entities/leave_type.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class GetLeaveTypesUsecase {
  final LeaveRepository _repository;

  GetLeaveTypesUsecase(this._repository);

  Future<List<LeaveType>> call() {
    return _repository.getLeaveTypes();
  }
}
