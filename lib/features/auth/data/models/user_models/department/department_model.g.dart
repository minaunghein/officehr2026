// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    _DepartmentModel(
      id: _readId(json, 'id') as String? ?? '',
      title: json['title'] as String? ?? '',
      titleMm: json['title_mm'] as String? ?? '',
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      companyId: json['company_id'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$DepartmentModelToJson(_DepartmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_mm': instance.titleMm,
      'code': instance.code,
      'description': instance.description,
      'company_id': instance.companyId,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
    };
