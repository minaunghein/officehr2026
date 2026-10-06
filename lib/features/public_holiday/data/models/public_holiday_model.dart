import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday_model.freezed.dart';
part 'public_holiday_model.g.dart';

@freezed
abstract class PublicHolidayModel with _$PublicHolidayModel {
  const factory PublicHolidayModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @Default('') String title,
    @JsonKey(name: 'title_mm') @Default('') String titleMm,
    String? date,
    @Default('') String type,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'deleted') @Default(false) bool deleted,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _PublicHolidayModel;

  factory PublicHolidayModel.fromJson(Map<String, dynamic> json) =>
      _$PublicHolidayModelFromJson(json);
}
