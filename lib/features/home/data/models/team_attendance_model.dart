import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/data/models/attendance_record_model.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';

part 'team_attendance_model.freezed.dart';
part 'team_attendance_model.g.dart';

@freezed
abstract class TeamAttendanceModel with _$TeamAttendanceModel {
  const TeamAttendanceModel._();

  const factory TeamAttendanceModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(readValue: _readUserId) @Default('') String userId,
    @JsonKey(readValue: _readEmployeeId) @Default('') String employeeId,
    @JsonKey(readValue: _readEmployeeCode) @Default('') String employeeCode,
    @JsonKey(readValue: _readFirstName) @Default('') String firstName,
    @JsonKey(readValue: _readLastName) @Default('') String lastName,
    @JsonKey(readValue: _readPositionId) @Default('') String positionId,
    @JsonKey(readValue: _readDepartmentId) @Default('') String departmentId,
    @JsonKey(name: 'date_id') @Default('') String dateId,
    AttendanceTimeRangeModel? scheduled,
    AttendanceTimeRangeModel? actual,
    @JsonKey(name: 'work_duration') @Default(0) int workDuration,
    @JsonKey(name: 'break_duration') @Default(0) int breakDuration,
    @JsonKey(name: 'late_minutes') @Default(0) int lateMinutes,
    @JsonKey(name: 'early_leave_minutes') @Default(0) int earlyLeaveMinutes,
    @JsonKey(name: 'overtime_minutes') @Default(0) int overtimeMinutes,
    @Default('') String status,
    @JsonKey(name: 'is_half_day') @Default(false) bool isHalfDay,
    @JsonKey(name: 'is_holiday') @Default(false) bool isHoliday,
    @JsonKey(name: 'leave_type') String? leaveType,
    @Default('') String notes,
  }) = _TeamAttendanceModel;

  factory TeamAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAttendanceModelFromJson(json);

  TeamAttendance toEntity() => TeamAttendance(
    id: id,
    userId: userId,
    employeeId: employeeId,
    employeeCode: employeeCode,
    firstName: firstName,
    lastName: lastName,
    positionId: positionId,
    departmentId: departmentId,
    dateId: dateId,
    scheduled: scheduled?.toEntity(),
    actual: actual?.toEntity(),
    workDuration: workDuration,
    breakDuration: breakDuration,
    lateMinutes: lateMinutes,
    earlyLeaveMinutes: earlyLeaveMinutes,
    overtimeMinutes: overtimeMinutes,
    status: status,
    isHalfDay: isHalfDay,
    isHoliday: isHoliday,
    leaveType: leaveType,
    notes: notes,
  );
}

Map<dynamic, dynamic>? _asMap(Object? value) =>
    value is Map<dynamic, dynamic> ? value : null;

Map<dynamic, dynamic>? _employee(Map json) =>
    _asMap(_asMap(json['user'])?['employee']);

Object? _readId(Map json, String key) => json['_id'] ?? json[key] ?? '';

Object? _readUserId(Map json, String key) => json['user_id'] ?? json[key] ?? '';

Object? _readEmployeeId(Map json, String key) =>
    _employee(json)?['_id'] ?? json['employee_id'] ?? '';

Object? _readEmployeeCode(Map json, String key) =>
    _asMap(_employee(json)?['work_info'])?['employee_code'] ?? '';

Object? _readFirstName(Map json, String key) =>
    _asMap(_employee(json)?['basic_info'])?['first_name'] ?? '';

Object? _readLastName(Map json, String key) =>
    _asMap(_employee(json)?['basic_info'])?['last_name'] ?? '';

Object? _readPositionId(Map json, String key) =>
    _asMap(_employee(json)?['work_info'])?['position_id'] ?? '';

Object? _readDepartmentId(Map json, String key) =>
    _asMap(_employee(json)?['work_info'])?['department_id'] ?? '';
