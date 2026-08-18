import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift_day/shift_day.dart';

part 'shift_day_model.freezed.dart';
part 'shift_day_model.g.dart';

@freezed
abstract class ShiftDayModel with _$ShiftDayModel {
  const ShiftDayModel._();

  const factory ShiftDayModel({
    @Default('') String day,
    @JsonKey(name: 'day_no') @Default(0) int dayNo,
    @JsonKey(name: 'is_working_day') @Default(false) bool isWorkingDay,
    @JsonKey(name: 'is_off_day') @Default(false) bool isOffDay,
    @JsonKey(name: 'is_half_day') @Default(false) bool isHalfDay,
    @JsonKey(name: 'work_start') String? workStart,
    @JsonKey(name: 'work_end') String? workEnd,
    @JsonKey(name: 'rest_start') String? restStart,
    @JsonKey(name: 'rest_end') String? restEnd,
    @JsonKey(name: 'ot_start') String? otStart,
    @JsonKey(name: 'late1_minutes') @Default(0) int late1Minutes,
    @JsonKey(name: 'late2_minutes') @Default(0) int late2Minutes,
    @JsonKey(name: 'late3_minutes') @Default(0) int late3Minutes,
    @JsonKey(name: 'absent_minutes') @Default(0) int absentMinutes,
    @JsonKey(name: 'half_day_minutes') @Default(0) int halfDayMinutes,
    @JsonKey(name: 'include_rest_in_hours')
    @Default(false)
    bool includeRestInHours,
    @Default(false) bool overnight,
  }) = _ShiftDayModel;

  factory ShiftDayModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftDayModelFromJson(json);

  ShiftDay toEntity() => ShiftDay(
    day: day,
    dayNo: dayNo,
    isWorkingDay: isWorkingDay,
    isOffDay: isOffDay,
    isHalfDay: isHalfDay,
    workStart: workStart,
    workEnd: workEnd,
    restStart: restStart,
    restEnd: restEnd,
    otStart: otStart,
    late1Minutes: late1Minutes,
    late2Minutes: late2Minutes,
    late3Minutes: late3Minutes,
    absentMinutes: absentMinutes,
    halfDayMinutes: halfDayMinutes,
    includeRestInHours: includeRestInHours,
    overnight: overnight,
  );
}
