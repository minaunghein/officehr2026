// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    _EmployeeModel(
      id: _readId(json, 'id') as String? ?? '',
      companyId: json['company_id'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      basicInfo: BasicInfoModel.fromJson(
        json['basic_info'] as Map<String, dynamic>,
      ),
      contactInfo: ContactInfoModel.fromJson(
        json['contact_info'] as Map<String, dynamic>,
      ),
      familyInfo: FamilyInfoModel.fromJson(
        json['family_info'] as Map<String, dynamic>,
      ),
      workInfo: WorkInfoModel.fromJson(
        json['work_info'] as Map<String, dynamic>,
      ),
      deleted: json['deleted'] as bool? ?? false,
      deletedAt: json['deletedAt'] as String?,
      education: json['education'] as List<dynamic>? ?? const <dynamic>[],
      workExperience:
          json['work_experience'] as List<dynamic>? ?? const <dynamic>[],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'user_id': instance.userId,
      'basic_info': instance.basicInfo,
      'contact_info': instance.contactInfo,
      'family_info': instance.familyInfo,
      'work_info': instance.workInfo,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'education': instance.education,
      'work_experience': instance.workExperience,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
