import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel {
  const CompanyModel._();

  const factory CompanyModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'name_mm') String? nameMm,
    @JsonKey(name: 'sc') String? shortCode,
    String? logo,
    int? sequence,
    bool? active,
    String? serial,
    bool? deleted,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
    @JsonKey(name: 'generalinfo') Map<String, dynamic>? generalInfo,
    @JsonKey(name: 'socialmedia') Map<String, dynamic>? socialMedia,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Company toEntity() => Company(
    id: id,
    name: name,
    nameMm: nameMm,
    shortCode: shortCode,
    logo: logo,
    sequence: sequence,
    active: active,
    serial: serial,
    deleted: deleted,
    deletedAt: deletedAt?.toString(),
    createdAt: createdAt,
    updatedAt: updatedAt,
    version: version,
    generalInfo: generalInfo,
    socialMedia: socialMedia,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
