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
    return value?.trim().toUpperCase() == 'PM'
        ? HalfDayPeriod.pm
        : HalfDayPeriod.am;
  }

  String get value => this == HalfDayPeriod.pm ? 'PM' : 'AM';

  String get label =>
      this == HalfDayPeriod.pm ? 'Afternoon (PM)' : 'Morning (AM)';
}

/// Decision a manager sends to the approve/reject endpoint.
enum LeaveDecision {
  approved('APPROVED'),
  rejected('REJECTED');

  const LeaveDecision(this.value);

  final String value;
}

@freezed
abstract class LeaveRequest with _$LeaveRequest {
  const LeaveRequest._();

  const factory LeaveRequest({
    required String id,
    @Default('') String employeeId,
    @Default('') String requesterId,
    @Default('') String requesterName,
    @Default('') String requesterEmail,
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
    String? approvedAt,
    String? rejectionReason,
    String? createdAt,
    String? updatedAt,
    LeaveType? leaveType,
  }) = _LeaveRequest;

  bool get hasAttachment => attachmentUrl.trim().isNotEmpty;

  bool get isPending => status == LeaveStatus.pending;

  /// Best available label for who submitted the request (falls back to the
  /// account email when the API does not return a name).
  String get requesterLabel {
    if (requesterName.trim().isNotEmpty) return requesterName;
    if (requesterEmail.trim().isNotEmpty) return requesterEmail;
    if (employeeId.trim().isNotEmpty) return 'Employee';
    return 'Unknown';
  }
}
