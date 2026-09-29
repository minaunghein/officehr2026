// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  id: _readId(json, 'id') as String? ?? '',
  title: json['title'] as String? ?? '',
  code: json['code'] as String? ?? '',
  type: json['type'] as String? ?? '',
  description: json['description'] as String?,
  defaultStart: json['default_start'] as String? ?? '',
  defaultEnd: json['default_end'] as String? ?? '',
  days:
      (json['days'] as List<dynamic>?)
          ?.map((e) => ShiftDayModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ShiftDayModel>[],
  coreHoursStart: json['core_hours_start'] as String?,
  coreHoursEnd: json['core_hours_end'] as String?,
  isDefault: json['is_default'] as bool? ?? false,
  companyId: json['company_id'] as String? ?? '',
  isActive: json['is_active'] as bool? ?? false,
  deleted: json['deleted'] as bool? ?? false,
  deletedAt: json['deletedAt'] as String?,
  earlyLeaveGraceMinutes:
      (json['early_leave_grace_minutes'] as num?)?.toInt() ?? 0,
  lateGraceMinutes: (json['late_grace_minutes'] as num?)?.toInt() ?? 0,
  mergeWindowMinutes: (json['merge_window_minutes'] as num?)?.toInt() ?? 0,
  roundingInterval: (json['rounding_interval'] as num?)?.toInt() ?? 0,
  roundingMode: json['rounding_mode'] as String? ?? '',
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'type': instance.type,
      'description': instance.description,
      'default_start': instance.defaultStart,
      'default_end': instance.defaultEnd,
      'days': instance.days,
      'core_hours_start': instance.coreHoursStart,
      'core_hours_end': instance.coreHoursEnd,
      'is_default': instance.isDefault,
      'company_id': instance.companyId,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'early_leave_grace_minutes': instance.earlyLeaveGraceMinutes,
      'late_grace_minutes': instance.lateGraceMinutes,
      'merge_window_minutes': instance.mergeWindowMinutes,
      'rounding_interval': instance.roundingInterval,
      'rounding_mode': instance.roundingMode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
