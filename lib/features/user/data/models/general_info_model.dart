import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_info_model.freezed.dart';
part 'general_info_model.g.dart';

@freezed
abstract class GeneralInfoModel with _$GeneralInfoModel {
  const factory GeneralInfoModel({
    @JsonKey(name: '_id') String? id,
    String? street,
    String? street1,
    int? city,
    int? state,
    int? country,
    int? zip,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
    String? email,
    String? phone,
    String? registerid,
    String? website,
  }) = _GeneralInfoModel;

  factory GeneralInfoModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralInfoModelFromJson(json);
}
