// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) =>
    _CompanyModel(
      id: _readId(json, 'id') as String? ?? '',
      name: json['name'] as String? ?? '',
      nameMm: json['name_mm'] as String?,
      shortCode: json['sc'] as String?,
      logo: json['logo'] as String?,
      sequence: (json['sequence'] as num?)?.toInt(),
      active: json['active'] as bool?,
      serial: json['serial'] as String?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deletedAt'],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
      generalInfo: json['generalinfo'] as Map<String, dynamic>?,
      socialMedia: json['socialmedia'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_mm': instance.nameMm,
      'sc': instance.shortCode,
      'logo': instance.logo,
      'sequence': instance.sequence,
      'active': instance.active,
      'serial': instance.serial,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
      'generalinfo': instance.generalInfo,
      'socialmedia': instance.socialMedia,
    };
