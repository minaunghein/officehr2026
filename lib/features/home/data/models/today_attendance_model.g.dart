// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodayAttendanceModel _$TodayAttendanceModelFromJson(
  Map<String, dynamic> json,
) => _TodayAttendanceModel(
  date: parseLocalDateTime(json['date'] as String?),
  clockedIn: json['clocked_in'] as bool? ?? false,
  breakInProgress: json['break_in_progress'] as bool? ?? false,
  lastClockIn: json['last_clock_in'] as String?,
  lastClockOut: json['last_clock_out'] as String?,
  clockIn: json['clock_in'] as String?,
  clockOut: json['clock_out'] as String?,
  breakStart: json['break_start'] as String?,
  breakEnd: json['break_end'] as String?,
  workDuration: (json['work_duration'] as num?)?.toInt() ?? 0,
  breakDuration: (json['break_duration'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? '',
  totalSessions: (json['total_sessions'] as num?)?.toInt() ?? 0,
  punches:
      (json['punches'] as List<dynamic>?)
          ?.map((e) => AttendancePunchModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  attendanceRecord: json['attendance_record'] == null
      ? null
      : AttendanceRecordModel.fromJson(
          json['attendance_record'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TodayAttendanceModelToJson(
  _TodayAttendanceModel instance,
) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'clocked_in': instance.clockedIn,
  'break_in_progress': instance.breakInProgress,
  'last_clock_in': instance.lastClockIn,
  'last_clock_out': instance.lastClockOut,
  'clock_in': instance.clockIn,
  'clock_out': instance.clockOut,
  'break_start': instance.breakStart,
  'break_end': instance.breakEnd,
  'work_duration': instance.workDuration,
  'break_duration': instance.breakDuration,
  'status': instance.status,
  'total_sessions': instance.totalSessions,
  'punches': instance.punches,
  'attendance_record': instance.attendanceRecord,
};
