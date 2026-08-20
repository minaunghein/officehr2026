import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/data/models/attendance_punch_model.dart';
import 'package:office_hr/features/home/data/models/attendance_record_model.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';

part 'today_attendance_model.freezed.dart';
part 'today_attendance_model.g.dart';

@freezed
abstract class TodayAttendanceModel with _$TodayAttendanceModel {
  const TodayAttendanceModel._();

  const factory TodayAttendanceModel({
    DateTime? date,
    @JsonKey(name: 'clocked_in') @Default(false) bool clockedIn,
    @JsonKey(name: 'break_in_progress') @Default(false) bool breakInProgress,
    @JsonKey(name: 'last_clock_in') String? lastClockIn,
    @JsonKey(name: 'last_clock_out') String? lastClockOut,
    @JsonKey(name: 'clock_in') String? clockIn,
    @JsonKey(name: 'clock_out') String? clockOut,
    @JsonKey(name: 'break_start') String? breakStart,
    @JsonKey(name: 'break_end') String? breakEnd,
    @JsonKey(name: 'work_duration') @Default(0) int workDuration,
    @JsonKey(name: 'break_duration') @Default(0) int breakDuration,
    @Default('') String status,
    @JsonKey(name: 'total_sessions') @Default(0) int totalSessions,
    @Default([]) List<AttendancePunchModel> punches,
    @JsonKey(name: 'attendance_record') AttendanceRecordModel? attendanceRecord,
  }) = _TodayAttendanceModel;

  factory TodayAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$TodayAttendanceModelFromJson(_readData(json));

  TodayAttendance toEntity() => TodayAttendance(
    date: date,
    clockedIn: clockedIn,
    breakInProgress: breakInProgress,
    lastClockIn: lastClockIn,
    lastClockOut: lastClockOut,
    clockIn: clockIn,
    clockOut: clockOut,
    breakStart: breakStart,
    breakEnd: breakEnd,
    workDuration: workDuration,
    breakDuration: breakDuration,
    status: status,
    totalSessions: totalSessions,
    punches: punches.map((punch) => punch.toEntity()).toList(),
    attendanceRecord: attendanceRecord?.toEntity(),
  );
}

Map<String, dynamic> _readData(Map<String, dynamic> json) {
  final data = json['data'];
  return data is Map<String, dynamic> ? data : json;
}
