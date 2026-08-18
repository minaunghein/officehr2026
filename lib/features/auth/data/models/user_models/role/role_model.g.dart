// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoleModel _$RoleModelFromJson(Map<String, dynamic> json) => _RoleModel(
  id: _readId(json, 'id') as String? ?? '',
  name: json['name'] as String? ?? '',
  nameMm: json['name_mm'] as String?,
  rank: (json['rank'] as num?)?.toInt() ?? 0,
  isPlatform: json['is_platform'] as bool? ?? false,
);

Map<String, dynamic> _$RoleModelToJson(_RoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_mm': instance.nameMm,
      'rank': instance.rank,
      'is_platform': instance.isPlatform,
    };
