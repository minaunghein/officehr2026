import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_day.freezed.dart';

@freezed
abstract class WorkingDay with _$WorkingDay {
  const factory WorkingDay({
    required int dayId,
    required String day,
    required int workStart,
    required int workEnd,
    required int restStart,
    required int restEnd,
    required int otStart,
    required int late1Start,
    required int late2Start,
    required int late3Start,
    required int absStart,
    required int halfDayStart,
    required bool isWorkingDay,
    required bool isOffDay,
    required bool includeRestHours,
    required bool isHalfDay,
    String? id,
  }) = _WorkingDay;
}
