// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveTypeModel _$LeaveTypeModelFromJson(Map<String, dynamic> json) =>
    _LeaveTypeModel(
      id: readMongoId(json, 'id') as String? ?? '',
      title: json['title'] as String? ?? '',
      titleMm: json['title_mm'] as String? ?? '',
      code: json['code'] as String? ?? '',
      accrualType: json['accrual_type'] as String? ?? '',
      entitlementDays: (json['entitlement_days'] as num?)?.toDouble() ?? 0,
      maxCarryForward: (json['max_carry_forward'] as num?)?.toDouble() ?? 0,
      carryForwardExpiry: (json['carry_forward_expiry'] as num?)?.toInt() ?? 0,
      minServiceDays: (json['min_service_days'] as num?)?.toInt() ?? 0,
      requiresApproval: json['requires_approval'] as bool? ?? true,
      requiresAttachment: json['requires_attachment'] as bool? ?? false,
      allowHalfDay: json['allow_half_day'] as bool? ?? true,
      advanceNoticeDays: (json['advance_notice_days'] as num?)?.toInt() ?? 0,
      isDefault: json['is_default'] as bool? ?? false,
      companyId: json['company_id'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$LeaveTypeModelToJson(_LeaveTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_mm': instance.titleMm,
      'code': instance.code,
      'accrual_type': instance.accrualType,
      'entitlement_days': instance.entitlementDays,
      'max_carry_forward': instance.maxCarryForward,
      'carry_forward_expiry': instance.carryForwardExpiry,
      'min_service_days': instance.minServiceDays,
      'requires_approval': instance.requiresApproval,
      'requires_attachment': instance.requiresAttachment,
      'allow_half_day': instance.allowHalfDay,
      'advance_notice_days': instance.advanceNoticeDays,
      'is_default': instance.isDefault,
      'company_id': instance.companyId,
      'is_active': instance.isActive,
    };
