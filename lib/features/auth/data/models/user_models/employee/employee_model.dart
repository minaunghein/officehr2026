import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/data/models/user_models/basic_info/basic_info_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/contact_info/contact_info_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/family_info/family_info_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/work_info/work_info_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/education/education_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/work_experience/work_experience_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/employee/employee.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
abstract class EmployeeModel with _$EmployeeModel {
  const EmployeeModel._();

  const factory EmployeeModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @JsonKey(name: 'basic_info') required BasicInfoModel basicInfo,
    @JsonKey(name: 'contact_info') required ContactInfoModel contactInfo,
    @JsonKey(name: 'family_info') required FamilyInfoModel familyInfo,
    @JsonKey(name: 'work_info') required WorkInfoModel workInfo,
    @Default(false) bool deleted,
    String? deletedAt,
    @Default(<EducationModel>[]) List<EducationModel> education,
    @JsonKey(name: 'work_experience')
    @Default(<WorkExperienceModel>[])
    List<WorkExperienceModel> workExperience,
    String? createdAt,
    String? updatedAt,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  Employee toEntity() => Employee(
    id: id,
    companyId: companyId,
    userId: userId,
    basicInfo: basicInfo.toEntity(),
    contactInfo: contactInfo.toEntity(),
    familyInfo: familyInfo.toEntity(),
    workInfo: workInfo.toEntity(),
    deleted: deleted,
    deletedAt: normalizeLocalDateTimeString(deletedAt),
    education: education.map((item) => item.toEntity()).toList(),
    workExperience: workExperience.map((item) => item.toEntity()).toList(),
    createdAt: normalizeLocalDateTimeString(createdAt),
    updatedAt: normalizeLocalDateTimeString(updatedAt),
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
