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
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_mm': instance.nameMm,
    };
