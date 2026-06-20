import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'sc') String? shortCode,
    String? logo,
    required String name,
    String? generalinfo,
    String? socialmedia,
    int? sequence,
    @Default(true) bool active,
    String? serial,
    @Default(false) bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
