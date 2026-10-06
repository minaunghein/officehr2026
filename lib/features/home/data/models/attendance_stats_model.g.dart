// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceStatsModel _$AttendanceStatsModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceStatsModel(
  present: (json['PRESENT'] as num?)?.toInt() ?? 0,
  late: (json['LATE'] as num?)?.toInt() ?? 0,
  absent: (json['ABSENT'] as num?)?.toInt() ?? 0,
  halfDay: (json['HALF_DAY'] as num?)?.toInt() ?? 0,
  onLeave: (json['ON_LEAVE'] as num?)?.toInt() ?? 0,
  holiday: (json['HOLIDAY'] as num?)?.toInt() ?? 0,
  restDay: (json['REST_DAY'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$AttendanceStatsModelToJson(
  _AttendanceStatsModel instance,
) => <String, dynamic>{
  'PRESENT': instance.present,
  'LATE': instance.late,
  'ABSENT': instance.absent,
  'HALF_DAY': instance.halfDay,
  'ON_LEAVE': instance.onLeave,
  'HOLIDAY': instance.holiday,
  'REST_DAY': instance.restDay,
};
