import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';

part 'leave_request.freezed.dart';

enum LeaveStatus {
  pending,
  approved,
  rejected,
  cancelled,
  unknown;

  static LeaveStatus fromValue(String? value) {
    switch (value?.trim().toUpperCase()) {
      case 'PENDING':
        return LeaveStatus.pending;
      case 'APPROVED':
        return LeaveStatus.approved;
      case 'REJECTED':
        return LeaveStatus.rejected;
      case 'CANCELLED':
      case 'CANCELED':
        return LeaveStatus.cancelled;
      default:
        return LeaveStatus.unknown;
    }
  }
}

enum HalfDayPeriod {
  am,
  pm;

  static HalfDayPeriod fromValue(String? value) {
    return value?.trim().toUpperCase() == 'PM' ? HalfDayPeriod.pm : HalfDayPeriod.am;
  }

  String get value => this == HalfDayPeriod.pm ? 'PM' : 'AM';

  String get label => this == HalfDayPeriod.pm ? 'Afternoon (PM)' : 'Morning (AM)';
}

@freezed
abstract class LeaveRequest with _$LeaveRequest {
  const LeaveRequest._();

  const factory LeaveRequest({
    required String id,
    @Default('') String employeeId,
    @Default('') String leaveTypeId,
    @Default('') String companyId,
    String? startDate,
    String? endDate,
    @Default(false) bool isHalfDay,
    @Default(HalfDayPeriod.am) HalfDayPeriod halfDayPeriod,
    @Default(0) double totalDays,
    @Default('') String reason,
    @Default('') String attachmentUrl,
    @Default(LeaveStatus.unknown) LeaveStatus status,
    String? approvedBy,
    String? createdAt,
    String? updatedAt,
    LeaveType? leaveType,
  }) = _LeaveRequest;

  bool get hasAttachment => attachmentUrl.trim().isNotEmpty;
}
