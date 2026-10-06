import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';

abstract class LeaveRepository {
  Future<List<LeaveBalance>> getLeaveBalances();

  Future<List<LeaveRequest>> getLeaveRequests();

  Future<List<LeaveType>> getLeaveTypes();

  Future<LeaveRequest> createLeaveRequest({
    required String leaveTypeId,
    required String employeeId,
    required DateTime startDate,
    required DateTime endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  });

  Future<UploadedFile> uploadFile({
    required String filePath,
    required String fileName,
  });
}
