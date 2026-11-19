// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overtime_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OvertimeRequestModel _$OvertimeRequestModelFromJson(
  Map<String, dynamic> json,
) => _OvertimeRequestModel(
  id: readMongoId(json, 'id') as String? ?? '',
  userId: json['user_id'] as String? ?? '',
  companyId: json['company_id'] as String? ?? '',
  date: parseLocalDateTime(json['date'] as String?),
  startTime: json['start_time'] as String? ?? '',
  endTime: json['end_time'] as String? ?? '',
  otType: json['ot_type'] as String? ?? 'OT1',
  reason: json['reason'] as String? ?? '',
  approvedHours: (json['approved_hours'] as num?)?.toDouble(),
  status: json['status'] as String? ?? 'PENDING',
  approvedBy: json['approved_by'] as String?,
  approvedAt: parseLocalDateTime(json['approved_at'] as String?),
  rejectionReason: json['rejection_reason'] as String?,
  createdAt: parseLocalDateTime(json['createdAt'] as String?),
  updatedAt: parseLocalDateTime(json['updatedAt'] as String?),
  user: json['user'] == null
      ? null
      : OvertimeRequestUserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OvertimeRequestModelToJson(
  _OvertimeRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'company_id': instance.companyId,
  'date': instance.date?.toIso8601String(),
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'ot_type': instance.otType,
  'reason': instance.reason,
  'approved_hours': instance.approvedHours,
  'status': instance.status,
  'approved_by': instance.approvedBy,
  'approved_at': instance.approvedAt?.toIso8601String(),
  'rejection_reason': instance.rejectionReason,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'user': instance.user,
};

_OvertimeRequestUserModel _$OvertimeRequestUserModelFromJson(
  Map<String, dynamic> json,
) => _OvertimeRequestUserModel(
  id: readMongoId(json, 'id') as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
);

Map<String, dynamic> _$OvertimeRequestUserModelToJson(
  _OvertimeRequestUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
};
