// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_attendances.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartmentAttendanceModel _$DepartmentAttendanceModelFromJson(
  Map<String, dynamic> json,
) => _DepartmentAttendanceModel(
  user: UserDetailsModel.fromJson(json['user'] as Map<String, dynamic>),
  clockins: (json['clockins'] as List<dynamic>)
      .map((e) => AttendanceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  sod: json['sod'] == null
      ? null
      : AttendanceModel.fromJson(json['sod'] as Map<String, dynamic>),
  eod: json['eod'] == null
      ? null
      : AttendanceModel.fromJson(json['eod'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DepartmentAttendanceModelToJson(
  _DepartmentAttendanceModel instance,
) => <String, dynamic>{
  'user': instance.user,
  'clockins': instance.clockins,
  'sod': instance.sod,
  'eod': instance.eod,
};
