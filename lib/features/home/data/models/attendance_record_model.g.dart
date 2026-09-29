// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceRecordModel _$AttendanceRecordModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceRecordModel(
  id: _readId(json, 'id') as String? ?? '',
  employeeId: json['employee_id'] as String? ?? '',
  companyId: json['company_id'] as String? ?? '',
  date: parseLocalDateTime(json['date'] as String?),
  shiftId: json['shift_id'] as String? ?? '',
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
  adjustment: json['adjustment'] == null
      ? null
      : AttendanceTimeRangeModel.fromJson(
          json['adjustment'] as Map<String, dynamic>,
        ),
  workDuration: (json['work_duration'] as num?)?.toInt() ?? 0,
  breakDuration: (json['break_duration'] as num?)?.toInt() ?? 0,
  lateMinutes: (json['late_minutes'] as num?)?.toInt() ?? 0,
  earlyLeaveMinutes: (json['early_leave_minutes'] as num?)?.toInt() ?? 0,
  overtimeMinutes: (json['overtime_minutes'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? '',
  isHoliday: json['is_holiday'] as bool? ?? false,
  holidayType: json['holiday_type'] as String?,
  leaveType: json['leave_type'] as String?,
  isHalfDay: json['is_half_day'] as bool? ?? false,
  editedBy: json['edited_by'] as String?,
  deleted: json['deleted'] as bool? ?? false,
  createdAt: parseLocalDateTime(json['createdAt'] as String?),
  updatedAt: parseLocalDateTime(json['updatedAt'] as String?),
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$AttendanceRecordModelToJson(
  _AttendanceRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'employee_id': instance.employeeId,
  'company_id': instance.companyId,
  'date': instance.date?.toIso8601String(),
  'shift_id': instance.shiftId,
  'scheduled': instance.scheduled,
  'actual': instance.actual,
  'adjustment': instance.adjustment,
  'work_duration': instance.workDuration,
  'break_duration': instance.breakDuration,
  'late_minutes': instance.lateMinutes,
  'early_leave_minutes': instance.earlyLeaveMinutes,
  'overtime_minutes': instance.overtimeMinutes,
  'status': instance.status,
  'is_holiday': instance.isHoliday,
  'holiday_type': instance.holidayType,
  'leave_type': instance.leaveType,
  'is_half_day': instance.isHalfDay,
  'edited_by': instance.editedBy,
  'deleted': instance.deleted,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  '__v': instance.version,
};

_AttendanceTimeRangeModel _$AttendanceTimeRangeModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceTimeRangeModel(
  clockIn: json['clock_in'] as String?,
  clockOut: json['clock_out'] as String?,
);

Map<String, dynamic> _$AttendanceTimeRangeModelToJson(
  _AttendanceTimeRangeModel instance,
) => <String, dynamic>{
  'clock_in': instance.clockIn,
  'clock_out': instance.clockOut,
};
