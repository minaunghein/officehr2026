import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_type.freezed.dart';

@freezed
abstract class LeaveType with _$LeaveType {
  const LeaveType._();

  const factory LeaveType({
    required String id,
    @Default('') String title,
    @Default('') String titleMm,
    @Default('') String code,
    @Default('') String accrualType,
    @Default(0) double entitlementDays,
    @Default(0) double maxCarryForward,
    @Default(0) int carryForwardExpiry,
    @Default(0) int minServiceDays,
    @Default(true) bool requiresApproval,
    @Default(false) bool requiresAttachment,
    @Default(true) bool allowHalfDay,
    @Default(0) int advanceNoticeDays,
    @Default(false) bool isDefault,
    @Default('') String companyId,
    @Default(true) bool isActive,
  }) = _LeaveType;

  String get displayTitle => title.isNotEmpty ? title : code;

  String get initials {
    final source = displayTitle.trim();
    if (source.isEmpty) return '?';
    final parts = source.split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
    if (parts.isEmpty) return '?';
    if (parts.length == 1) {
      return parts.first.substring(0, 1).toUpperCase();
    }
    return '${parts.first.substring(0, 1)}${parts.last.substring(0, 1)}'
        .toUpperCase();
  }
}
