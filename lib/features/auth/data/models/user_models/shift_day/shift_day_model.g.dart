// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftDayModel _$ShiftDayModelFromJson(Map<String, dynamic> json) =>
    _ShiftDayModel(
      day: json['day'] as String? ?? '',
      dayNo: (json['day_no'] as num?)?.toInt() ?? 0,
      isWorkingDay: json['is_working_day'] as bool? ?? false,
      isOffDay: json['is_off_day'] as bool? ?? false,
      isHalfDay: json['is_half_day'] as bool? ?? false,
      workStart: json['work_start'] as String?,
      workEnd: json['work_end'] as String?,
      restStart: json['rest_start'] as String?,
      restEnd: json['rest_end'] as String?,
      otStart: json['ot_start'] as String?,
      late1Minutes: (json['late1_minutes'] as num?)?.toInt() ?? 0,
      late2Minutes: (json['late2_minutes'] as num?)?.toInt() ?? 0,
      late3Minutes: (json['late3_minutes'] as num?)?.toInt() ?? 0,
      absentMinutes: (json['absent_minutes'] as num?)?.toInt() ?? 0,
      halfDayMinutes: (json['half_day_minutes'] as num?)?.toInt() ?? 0,
      includeRestInHours: json['include_rest_in_hours'] as bool? ?? false,
      overnight: json['overnight'] as bool? ?? false,
    );

Map<String, dynamic> _$ShiftDayModelToJson(_ShiftDayModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'day_no': instance.dayNo,
      'is_working_day': instance.isWorkingDay,
      'is_off_day': instance.isOffDay,
      'is_half_day': instance.isHalfDay,
      'work_start': instance.workStart,
      'work_end': instance.workEnd,
      'rest_start': instance.restStart,
      'rest_end': instance.restEnd,
      'ot_start': instance.otStart,
      'late1_minutes': instance.late1Minutes,
      'late2_minutes': instance.late2Minutes,
      'late3_minutes': instance.late3Minutes,
      'absent_minutes': instance.absentMinutes,
      'half_day_minutes': instance.halfDayMinutes,
      'include_rest_in_hours': instance.includeRestInHours,
      'overnight': instance.overnight,
    };
