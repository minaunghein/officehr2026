// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_amendment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceAmendmentModel _$AttendanceAmendmentModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceAmendmentModel(
  id: _readId(json, 'id') as String? ?? '',
  userId: json['user_id'] as String? ?? '',
  companyId: json['company_id'] as String? ?? '',
  dateId: json['date_id'] as String? ?? '',
  amendmentType: json['amendment_type'] as String? ?? '',
  requestedClockIn: json['requested_clock_in'] as String?,
  requestedClockOut: json['requested_clock_out'] as String?,
  reason: json['reason'] as String? ?? '',
  status: json['status'] as String? ?? '',
  approvedBy: json['approved_by'] as String?,
  deleted: json['deleted'] as bool? ?? false,
  createdAt: parseLocalDateTime(json['createdAt'] as String?),
  updatedAt: parseLocalDateTime(json['updatedAt'] as String?),
  approvedAt: parseLocalDateTime(json['approved_at'] as String?),
);

Map<String, dynamic> _$AttendanceAmendmentModelToJson(
  _AttendanceAmendmentModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'company_id': instance.companyId,
  'date_id': instance.dateId,
  'amendment_type': instance.amendmentType,
  'requested_clock_in': instance.requestedClockIn,
  'requested_clock_out': instance.requestedClockOut,
  'reason': instance.reason,
  'status': instance.status,
  'approved_by': instance.approvedBy,
  'deleted': instance.deleted,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'approved_at': instance.approvedAt?.toIso8601String(),
};
