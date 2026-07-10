import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday_model.freezed.dart';
part 'public_holiday_model.g.dart';

@freezed
abstract class PublicHolidayModel with _$PublicHolidayModel {
  const factory PublicHolidayModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    String? holidaydate,
    @Default([]) List<String> holidayname,
    String? remarks,
    @Default([]) List<dynamic> tags,
    @JsonKey(name: '__v') int? version,
  }) = _PublicHolidayModel;

  factory PublicHolidayModel.fromJson(Map<String, dynamic> json) =>
      _$PublicHolidayModelFromJson(json);
}
