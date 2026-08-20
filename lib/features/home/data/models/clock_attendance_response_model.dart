import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/data/models/attendance_punch_model.dart';
import 'package:office_hr/features/home/data/models/attendance_record_model.dart';
import 'package:office_hr/features/home/domain/entities/clock_attendance_response.dart';

part 'clock_attendance_response_model.freezed.dart';
part 'clock_attendance_response_model.g.dart';

@freezed
abstract class ClockAttendanceResponseModel
    with _$ClockAttendanceResponseModel {
  const ClockAttendanceResponseModel._();

  const factory ClockAttendanceResponseModel({
    @JsonKey(readValue: _readPunch) required AttendancePunchModel punch,
    @JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord)
    AttendanceRecordModel? attendanceRecord,
  }) = _ClockAttendanceResponseModel;

  factory ClockAttendanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ClockAttendanceResponseModelFromJson(json);

  ClockAttendanceResponse toEntity() => ClockAttendanceResponse(
    punch: punch.toEntity(),
    attendanceRecord: attendanceRecord?.toEntity(),
  );
}

Object? _readPunch(Map<dynamic, dynamic> json, String key) {
  final data = json['data'];
  return data is Map ? data : json;
}

Object? _readAttendanceRecord(Map<dynamic, dynamic> json, String key) {
  final data = json['data'];
  if (data is Map && data['attendance_record'] != null) {
    return data['attendance_record'];
  }
  return json['attendance_record'];
}
