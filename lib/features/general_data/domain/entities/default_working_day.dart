import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_working_day.freezed.dart';

/// Entity for default working day configuration
@freezed
abstract class DefaultWorkingDay with _$DefaultWorkingDay {
  const factory DefaultWorkingDay({
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
    required int halfDayStart,
    required int absStart,
    required bool isOffDay,
    required bool isWorkingDay,
  }) = _DefaultWorkingDay;
}
