// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PositionModel _$PositionModelFromJson(Map<String, dynamic> json) =>
    _PositionModel(
      id: _readId(json, 'id') as String? ?? '',
      title: json['title'] as String? ?? '',
      titleMm: json['title_mm'] as String? ?? '',
      code: json['code'] as String? ?? '',
      level: (json['level'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
      companyId: json['company_id'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PositionModelToJson(_PositionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_mm': instance.titleMm,
      'code': instance.code,
      'level': instance.level,
      'description': instance.description,
      'company_id': instance.companyId,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
