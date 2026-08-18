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
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Company toEntity() => Company(id: id, name: name, nameMm: nameMm);
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
