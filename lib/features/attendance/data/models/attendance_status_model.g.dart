// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceStatusModel _$AttendanceStatusModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceStatusModel(
  id: json['_id'] as String,
  company: json['company'] as String,
  statusid: (json['statusid'] as num).toInt(),
  titles: (json['titles'] as List<dynamic>).map((e) => e as String).toList(),
  shortCode: json['sc'] as String,
  remarks: json['remarks'] as String? ?? '',
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  createdAt: json['crdAt'] == null
      ? null
      : DateTime.parse(json['crdAt'] as String),
  updatedAt: json['updAt'] == null
      ? null
      : DateTime.parse(json['updAt'] as String),
  recordId: (json['id'] as num?)?.toInt(),
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$AttendanceStatusModelToJson(
  _AttendanceStatusModel instance,
) => <String, dynamic>{
  '_id': instance.id,
  'company': instance.company,
  'statusid': instance.statusid,
  'titles': instance.titles,
  'sc': instance.shortCode,
  'remarks': instance.remarks,
  'tags': instance.tags,
  'crdAt': instance.createdAt?.toIso8601String(),
  'updAt': instance.updatedAt?.toIso8601String(),
  'id': instance.recordId,
  '__v': instance.version,
};
