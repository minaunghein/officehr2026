import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class GetLeaveBalancesUsecase {
  final LeaveRepository _repository;

  GetLeaveBalancesUsecase(this._repository);

  Future<List<LeaveBalance>> call() {
    return _repository.getLeaveBalances();
  }
}
