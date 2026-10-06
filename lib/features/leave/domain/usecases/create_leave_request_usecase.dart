import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class CreateLeaveRequestUsecase {
  final LeaveRepository _repository;

  CreateLeaveRequestUsecase(this._repository);

  Future<LeaveRequest> call({
    required String leaveTypeId,
    required String employeeId,
    required DateTime startDate,
    required DateTime endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  }) {
    return _repository.createLeaveRequest(
      leaveTypeId: leaveTypeId,
      employeeId: employeeId,
      startDate: startDate,
      endDate: endDate,
      isHalfDay: isHalfDay,
      halfDayPeriod: halfDayPeriod,
      reason: reason,
      attachmentUrl: attachmentUrl,
    );
  }
}
