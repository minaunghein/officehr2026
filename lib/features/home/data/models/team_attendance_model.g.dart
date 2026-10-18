// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamAttendanceModel _$TeamAttendanceModelFromJson(Map<String, dynamic> json) =>
    _TeamAttendanceModel(
      id: _readId(json, 'id') as String? ?? '',
      userId: _readUserId(json, 'userId') as String? ?? '',
      employeeId: _readEmployeeId(json, 'employeeId') as String? ?? '',
      employeeCode: _readEmployeeCode(json, 'employeeCode') as String? ?? '',
      firstName: _readFirstName(json, 'firstName') as String? ?? '',
      lastName: _readLastName(json, 'lastName') as String? ?? '',
      positionId: _readPositionId(json, 'positionId') as String? ?? '',
      departmentId: _readDepartmentId(json, 'departmentId') as String? ?? '',
      dateId: json['date_id'] as String? ?? '',
      scheduled: json['scheduled'] == null
          ? null
          : AttendanceTimeRangeModel.fromJson(
              json['scheduled'] as Map<String, dynamic>,
            ),
      actual: json['actual'] == null
          ? null
          : AttendanceTimeRangeModel.fromJson(
              json['actual'] as Map<String, dynamic>,
            ),
      workDuration: (json['work_duration'] as num?)?.toInt() ?? 0,
      breakDuration: (json['break_duration'] as num?)?.toInt() ?? 0,
      lateMinutes: (json['late_minutes'] as num?)?.toInt() ?? 0,
      earlyLeaveMinutes: (json['early_leave_minutes'] as num?)?.toInt() ?? 0,
      overtimeMinutes: (json['overtime_minutes'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? '',
      isHalfDay: json['is_half_day'] as bool? ?? false,
      isHoliday: json['is_holiday'] as bool? ?? false,
      leaveType: json['leave_type'] as String?,
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$TeamAttendanceModelToJson(
  _TeamAttendanceModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'employeeId': instance.employeeId,
  'employeeCode': instance.employeeCode,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'positionId': instance.positionId,
  'departmentId': instance.departmentId,
  'date_id': instance.dateId,
  'scheduled': instance.scheduled,
  'actual': instance.actual,
  'work_duration': instance.workDuration,
  'break_duration': instance.breakDuration,
  'late_minutes': instance.lateMinutes,
  'early_leave_minutes': instance.earlyLeaveMinutes,
  'overtime_minutes': instance.overtimeMinutes,
  'status': instance.status,
  'is_half_day': instance.isHalfDay,
  'is_holiday': instance.isHoliday,
  'leave_type': instance.leaveType,
  'notes': instance.notes,
};
