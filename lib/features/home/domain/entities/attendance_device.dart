import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_device.freezed.dart';

@freezed
abstract class AttendanceDevice with _$AttendanceDevice {
  const factory AttendanceDevice({
    String? deviceId,
    String? deviceType,
    String? ipAddress,
    String? userAgent,
  }) = _AttendanceDevice;
}
