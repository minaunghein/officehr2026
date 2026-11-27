// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_attendance_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClockAttendanceParams _$ClockAttendanceParamsFromJson(
  Map<String, dynamic> json,
) => _ClockAttendanceParams(
  location: _locationFromJson(json['location'] as Map<String, dynamic>?),
  device: _deviceFromJson(json['device'] as Map<String, dynamic>?),
  imgId: json['img_id'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$ClockAttendanceParamsToJson(
  _ClockAttendanceParams instance,
) => <String, dynamic>{
  'location': _locationToJson(instance.location),
  'device': _deviceToJson(instance.device),
  'img_id': instance.imgId,
  'notes': instance.notes,
};
