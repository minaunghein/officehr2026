import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_leave.freezed.dart';

@freezed
abstract class UserLeave with _$UserLeave {
  const factory UserLeave({
    required String id,
    required String companyId,
    required String userId,
    required String settingLeaveId,
    required List<String> tags,
    required bool isPaid,
    required bool addToAll,
    required String leaveTitle,
    required int consecutiveDays,
    required int allowedDaysPerYear,
    required int allowedDaysSixMonth,
    required int requiredServiceDays,
    required int requiredWorkingDays,
    required int leaveTaken,
    required int validDaysNextYear,
    required int yearId,
    required bool carryNextYear,
    required bool defaultForNoClockInOut,
    required bool deleted,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserLeave;
}
