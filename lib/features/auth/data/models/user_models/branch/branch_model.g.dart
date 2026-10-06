// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  id: _readId(json, 'id') as String? ?? '',
  title: json['title'] as String? ?? '',
  code: json['code'] as String? ?? '',
  geofence: json['geofence'] == null
      ? const GeofenceModel()
      : GeofenceModel.fromJson(json['geofence'] as Map<String, dynamic>),
  companyId: json['company_id'] as String? ?? '',
  isActive: json['is_active'] as bool? ?? false,
  deleted: json['deleted'] as bool? ?? false,
  deletedAt: json['deletedAt'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'geofence': instance.geofence,
      'company_id': instance.companyId,
      'is_active': instance.isActive,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
