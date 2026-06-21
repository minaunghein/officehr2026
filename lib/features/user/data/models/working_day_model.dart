import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_day_model.freezed.dart';
part 'working_day_model.g.dart';

@freezed
abstract class WorkingDayModel with _$WorkingDayModel {
  const factory WorkingDayModel({
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
    required int absstart,
    required int halfdaystart,
    @Default(false) bool workingday,
    @Default(false) bool offday,
    @Default(false) bool incresthr,
    @Default(false) bool halfday,
    @JsonKey(name: '_id') String? id,
  }) = _WorkingDayModel;

  factory WorkingDayModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingDayModelFromJson(json);
}
