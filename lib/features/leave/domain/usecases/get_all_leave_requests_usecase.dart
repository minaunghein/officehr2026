import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class GetAllLeaveRequestsUsecase {
  final LeaveRepository _repository;

  GetAllLeaveRequestsUsecase(this._repository);

  Future<List<LeaveRequest>> call() {
    return _repository.getAllLeaveRequests();
  }
}
