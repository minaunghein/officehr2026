// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) =>
    _CompanyModel(
      id: json['_id'] as String,
      shortCode: json['sc'] as String?,
      logo: json['logo'] as String?,
      name: json['name'] as String,
      generalinfo: json['generalinfo'] as String?,
      socialmedia: json['socialmedia'] as String?,
      sequence: (json['sequence'] as num?)?.toInt(),
      active: json['active'] as bool? ?? true,
      serial: json['serial'] as String?,
      deleted: json['deleted'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sc': instance.shortCode,
      'logo': instance.logo,
      'name': instance.name,
      'generalinfo': instance.generalinfo,
      'socialmedia': instance.socialmedia,
      'sequence': instance.sequence,
      'active': instance.active,
      'serial': instance.serial,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
    };
