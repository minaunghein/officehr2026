import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_working_day_model.freezed.dart';
part 'default_working_day_model.g.dart';

/// Model for default working day configuration
@freezed
abstract class DefaultWorkingDayModel with _$DefaultWorkingDayModel {
  const factory DefaultWorkingDayModel({
    required int dayid,
    required String day,
    required int workstart,
    required int workend,
    required int reststart,
    required int restend,
    required int otstart,
    required int late1start,
    required int late2start,
    required int late3start,
    required int halfdaystart,
    required int absstart,
    required bool offday,
    required bool workingday,
  }) = _DefaultWorkingDayModel;

  factory DefaultWorkingDayModel.fromJson(Map<String, dynamic> json) =>
      _$DefaultWorkingDayModelFromJson(json);
}
