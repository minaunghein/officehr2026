// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_holiday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicHolidayModel _$PublicHolidayModelFromJson(Map<String, dynamic> json) =>
    _PublicHolidayModel(
      id: json['_id'] as String,
      companyId: json['company_id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      titleMm: json['title_mm'] as String? ?? '',
      date: json['date'] as String?,
      type: json['type'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? true,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PublicHolidayModelToJson(_PublicHolidayModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company_id': instance.companyId,
      'title': instance.title,
      'title_mm': instance.titleMm,
      'date': instance.date,
      'type': instance.type,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
