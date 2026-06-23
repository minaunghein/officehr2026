// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      id: json['_id'] as String,
      company: json['company'] as String,
      userId: json['userid'] as String,
      clockIn: DateTime.parse(json['clockin'] as String),
      dateId: (json['dateid'] as num).toInt(),
      timeId: (json['timeid'] as num).toInt(),
      clockInBy: json['clockinby'] as String,
      needApproval: json['needapproval'] as bool,
      status: json['status'] == null
          ? null
          : AttendanceStatusModel.fromJson(
              json['status'] as Map<String, dynamic>,
            ),
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      description: json['desc'] as String,
      isSod: json['issod'] as bool,
      isEod: json['iseod'] as bool,
      terminalId: json['terminalid'] as String?,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'userid': instance.userId,
      'clockin': instance.clockIn.toIso8601String(),
      'dateid': instance.dateId,
      'timeid': instance.timeId,
      'clockinby': instance.clockInBy,
      'needapproval': instance.needApproval,
      'status': instance.status,
      'lat': instance.lat,
      'long': instance.long,
      'desc': instance.description,
      'issod': instance.isSod,
      'iseod': instance.isEod,
      'terminalid': instance.terminalId,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
    };
