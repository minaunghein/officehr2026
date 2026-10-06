import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';

part 'leave_balance.freezed.dart';

@freezed
abstract class LeaveBalance with _$LeaveBalance {
  const LeaveBalance._();

  const factory LeaveBalance({
    required String id,
    @Default('') String companyId,
    @Default('') String employeeId,
    @Default('') String leaveTypeId,
    @Default(0) int year,
    @Default(0) double adjusted,
    @Default(0) double allocated,
    @Default(0) double carriedForward,
    @Default(0) double pending,
    @Default(0) double used,
    required LeaveType leaveType,
  }) = _LeaveBalance;

  /// Total days that have been granted for the year.
  double get totalGranted => allocated + carriedForward + adjusted;

  /// Days remaining, excluding requests still pending approval.
  double get available => totalGranted - used - pending;

  double get availableExcludingPending => totalGranted - used;

  double get usedPercentage {
    final granted = totalGranted;
    if (granted <= 0) return 0;
    final consumed = used + pending;
    return (consumed / granted).clamp(0.0, 1.0);
  }
}
