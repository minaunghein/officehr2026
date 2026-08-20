import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_device.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';

part 'clock_attendance_params.freezed.dart';
part 'clock_attendance_params.g.dart';

@freezed
abstract class ClockAttendanceParams with _$ClockAttendanceParams {
  const factory ClockAttendanceParams({
    @JsonKey(fromJson: _locationFromJson, toJson: _locationToJson)
    AttendanceLocation? location,
    @JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson)
    AttendanceDevice? device,
    @JsonKey(name: 'qr_code') String? qrCode,
    String? notes,
  }) = _ClockAttendanceParams;

  factory ClockAttendanceParams.fromJson(Map<String, dynamic> json) =>
      _$ClockAttendanceParamsFromJson(json);
}

AttendanceLocation? _locationFromJson(Map<String, dynamic>? json) {
  if (json == null) return null;
  return AttendanceLocation(
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    accuracy: (json['accuracy'] as num?)?.toDouble(),
  );
}

Map<String, dynamic>? _locationToJson(AttendanceLocation? location) {
  if (location == null) return null;
  return {
    if (location.latitude != null) 'latitude': location.latitude,
    if (location.longitude != null) 'longitude': location.longitude,
    if (location.accuracy != null) 'accuracy': location.accuracy,
  };
}

AttendanceDevice? _deviceFromJson(Map<String, dynamic>? json) {
  if (json == null) return null;
  return AttendanceDevice(
    deviceId: json['device_id'] as String?,
    deviceType: json['device_type'] as String?,
    ipAddress: json['ip_address'] as String?,
    userAgent: json['user_agent'] as String?,
  );
}

Map<String, dynamic>? _deviceToJson(AttendanceDevice? device) {
  if (device == null) return null;
  return {
    if (device.deviceId != null) 'device_id': device.deviceId,
    if (device.deviceType != null) 'device_type': device.deviceType,
    if (device.ipAddress != null) 'ip_address': device.ipAddress,
    if (device.userAgent != null) 'user_agent': device.userAgent,
  };
}
