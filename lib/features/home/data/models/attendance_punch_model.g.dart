// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_punch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendancePunchModel _$AttendancePunchModelFromJson(
  Map<String, dynamic> json,
) => _AttendancePunchModel(
  id: _readId(json, 'id') as String? ?? '',
  employeeId: json['employee_id'] as String? ?? '',
  companyId: json['company_id'] as String? ?? '',
  date: parseLocalDateTime(json['date'] as String?),
  punchTime: json['punch_time'] as String? ?? '',
  punchType: json['punch_type'] as String? ?? '',
  location: json['location'] == null
      ? null
      : AttendanceLocationModel.fromJson(
          json['location'] as Map<String, dynamic>,
        ),
  device: json['device'] == null
      ? null
      : AttendanceDeviceModel.fromJson(json['device'] as Map<String, dynamic>),
  isManual: json['is_manual'] as bool? ?? false,
  deleted: json['deleted'] as bool? ?? false,
  createdAt: parseLocalDateTime(json['createdAt'] as String?),
  updatedAt: parseLocalDateTime(json['updatedAt'] as String?),
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$AttendancePunchModelToJson(
  _AttendancePunchModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'employee_id': instance.employeeId,
  'company_id': instance.companyId,
  'date': instance.date?.toIso8601String(),
  'punch_time': instance.punchTime,
  'punch_type': instance.punchType,
  'location': instance.location,
  'device': instance.device,
  'is_manual': instance.isManual,
  'deleted': instance.deleted,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.version,
};
