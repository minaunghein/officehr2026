import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';

part 'leave_type_model.freezed.dart';
part 'leave_type_model.g.dart';

@freezed
abstract class LeaveTypeModel with _$LeaveTypeModel {
  const LeaveTypeModel._();

  const factory LeaveTypeModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @Default('') String title,
    @JsonKey(name: 'title_mm') @Default('') String titleMm,
    @Default('') String code,
    @JsonKey(name: 'accrual_type') @Default('') String accrualType,
    @JsonKey(name: 'entitlement_days') @Default(0) double entitlementDays,
    @JsonKey(name: 'max_carry_forward') @Default(0) double maxCarryForward,
    @JsonKey(name: 'carry_forward_expiry') @Default(0) int carryForwardExpiry,
    @JsonKey(name: 'min_service_days') @Default(0) int minServiceDays,
    @JsonKey(name: 'requires_approval') @Default(true) bool requiresApproval,
    @JsonKey(name: 'requires_attachment')
    @Default(false)
    bool requiresAttachment,
    @JsonKey(name: 'allow_half_day') @Default(true) bool allowHalfDay,
    @JsonKey(name: 'advance_notice_days') @Default(0) int advanceNoticeDays,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _LeaveTypeModel;

  factory LeaveTypeModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveTypeModelFromJson(json);

  LeaveType toEntity() => LeaveType(
    id: id,
    title: title,
    titleMm: titleMm,
    code: code,
    accrualType: accrualType,
    entitlementDays: entitlementDays,
    maxCarryForward: maxCarryForward,
    carryForwardExpiry: carryForwardExpiry,
    minServiceDays: minServiceDays,
    requiresApproval: requiresApproval,
    requiresAttachment: requiresAttachment,
    allowHalfDay: allowHalfDay,
    advanceNoticeDays: advanceNoticeDays,
    isDefault: isDefault,
    companyId: companyId,
    isActive: isActive,
  );
}
