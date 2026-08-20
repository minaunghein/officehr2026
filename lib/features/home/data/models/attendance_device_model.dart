import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_device.dart';

part 'attendance_device_model.freezed.dart';
part 'attendance_device_model.g.dart';

@freezed
abstract class AttendanceDeviceModel with _$AttendanceDeviceModel {
  const AttendanceDeviceModel._();

  const factory AttendanceDeviceModel({
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'user_agent') String? userAgent,
  }) = _AttendanceDeviceModel;

  factory AttendanceDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDeviceModelFromJson(json);

  factory AttendanceDeviceModel.fromEntity(AttendanceDevice entity) =>
      AttendanceDeviceModel(
        deviceId: entity.deviceId,
        deviceType: entity.deviceType,
        ipAddress: entity.ipAddress,
        userAgent: entity.userAgent,
      );

  AttendanceDevice toEntity() => AttendanceDevice(
    deviceId: deviceId,
    deviceType: deviceType,
    ipAddress: ipAddress,
    userAgent: userAgent,
  );
}
