import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_day.freezed.dart';

@freezed
abstract class ShiftDay with _$ShiftDay {
  const factory ShiftDay({
    required String day,
    required int dayNo,
    required bool isWorkingDay,
    required bool isOffDay,
    required bool isHalfDay,
    String? workStart,
    String? workEnd,
    String? restStart,
    String? restEnd,
    String? otStart,
    required int late1Minutes,
    required int late2Minutes,
    required int late3Minutes,
    required int absentMinutes,
    required int halfDayMinutes,
    required bool includeRestInHours,
    required bool overnight,
  }) = _ShiftDay;
}
