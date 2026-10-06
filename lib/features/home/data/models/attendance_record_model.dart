import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/home/domain/entities/attendance_record.dart';

part 'attendance_record_model.freezed.dart';
part 'attendance_record_model.g.dart';

@freezed
abstract class AttendanceRecordModel with _$AttendanceRecordModel {
  const AttendanceRecordModel._();

  const factory AttendanceRecordModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'employee_id') @Default('') String employeeId,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? date,
    @JsonKey(name: 'shift_id') @Default('') String shiftId,
    AttendanceTimeRangeModel? scheduled,
    AttendanceTimeRangeModel? actual,
    AttendanceTimeRangeModel? adjustment,
    @JsonKey(name: 'work_duration') @Default(0) int workDuration,
    @JsonKey(name: 'break_duration') @Default(0) int breakDuration,
    @JsonKey(name: 'late_minutes') @Default(0) int lateMinutes,
    @JsonKey(name: 'early_leave_minutes') @Default(0) int earlyLeaveMinutes,
    @JsonKey(name: 'overtime_minutes') @Default(0) int overtimeMinutes,
    @Default('') String status,
    @JsonKey(name: 'is_holiday') @Default(false) bool isHoliday,
    @JsonKey(name: 'holiday_type') String? holidayType,
    @JsonKey(name: 'leave_type') String? leaveType,
    @JsonKey(name: 'is_half_day') @Default(false) bool isHalfDay,
    @JsonKey(name: 'edited_by') String? editedBy,
    @Default(false) bool deleted,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _AttendanceRecordModel;

  factory AttendanceRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordModelFromJson(json);

  AttendanceRecord toEntity() => AttendanceRecord(
    id: id,
    employeeId: employeeId,
    companyId: companyId,
    date: date,
    shiftId: shiftId,
    scheduled: scheduled?.toEntity(),
    actual: actual?.toEntity(),
    adjustment: adjustment?.toEntity(),
    workDuration: workDuration,
    breakDuration: breakDuration,
    lateMinutes: lateMinutes,
    earlyLeaveMinutes: earlyLeaveMinutes,
    overtimeMinutes: overtimeMinutes,
    status: status,
    isHoliday: isHoliday,
    holidayType: holidayType,
    leaveType: leaveType,
    isHalfDay: isHalfDay,
    editedBy: editedBy,
    deleted: deleted,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}

@freezed
abstract class AttendanceTimeRangeModel with _$AttendanceTimeRangeModel {
  const AttendanceTimeRangeModel._();

  const factory AttendanceTimeRangeModel({
    @JsonKey(name: 'clock_in') String? clockIn,
    @JsonKey(name: 'clock_out') String? clockOut,
  }) = _AttendanceTimeRangeModel;

  factory AttendanceTimeRangeModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceTimeRangeModelFromJson(json);

  AttendanceTimeRange toEntity() =>
      AttendanceTimeRange(clockIn: clockIn, clockOut: clockOut);
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
