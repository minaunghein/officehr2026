import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/department/department.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
abstract class DepartmentModel with _$DepartmentModel {
  const DepartmentModel._();

  const factory DepartmentModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @JsonKey(name: 'title_mm') @Default('') String titleMm,
    @Default('') String code,
    @Default('') String description,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @Default(false) bool deleted,
    String? deletedAt,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);

  Department toEntity() => Department(
    id: id,
    title: title,
    titleMm: titleMm,
    code: code,
    description: description,
    companyId: companyId,
    isActive: isActive,
    deleted: deleted,
    deletedAt: deletedAt,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
