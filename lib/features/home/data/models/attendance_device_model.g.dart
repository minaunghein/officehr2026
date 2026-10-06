// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceDeviceModel _$AttendanceDeviceModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceDeviceModel(
  deviceId: json['device_id'] as String?,
  deviceType: json['device_type'] as String?,
  ipAddress: json['ip_address'] as String?,
  userAgent: json['user_agent'] as String?,
);

Map<String, dynamic> _$AttendanceDeviceModelToJson(
  _AttendanceDeviceModel instance,
) => <String, dynamic>{
  'device_id': instance.deviceId,
  'device_type': instance.deviceType,
  'ip_address': instance.ipAddress,
  'user_agent': instance.userAgent,
};
