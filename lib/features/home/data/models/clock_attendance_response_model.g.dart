// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_attendance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClockAttendanceResponseModel _$ClockAttendanceResponseModelFromJson(
  Map<String, dynamic> json,
) => _ClockAttendanceResponseModel(
  punch: AttendancePunchModel.fromJson(
    _readPunch(json, 'punch') as Map<String, dynamic>,
  ),
  attendanceRecord: _readAttendanceRecord(json, 'attendance_record') == null
      ? null
      : AttendanceRecordModel.fromJson(
          _readAttendanceRecord(json, 'attendance_record')
              as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ClockAttendanceResponseModelToJson(
  _ClockAttendanceResponseModel instance,
) => <String, dynamic>{
  'punch': instance.punch,
  'attendance_record': instance.attendanceRecord,
};
