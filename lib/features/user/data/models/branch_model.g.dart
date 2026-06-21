// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  id: json['_id'] as String,
  company: json['company'] as String,
  shortCode: json['sc'] as String,
  name: json['name'] as String,
  active: json['activebranch'] as bool? ?? true,
  lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
  long: (json['long'] as num?)?.toDouble() ?? 0.0,
  deleted: json['deleted'] as bool? ?? false,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  branchid: (json['branchid'] as num?)?.toInt(),
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'sc': instance.shortCode,
      'name': instance.name,
      'activebranch': instance.active,
      'lat': instance.lat,
      'long': instance.long,
      'deleted': instance.deleted,
      'tags': instance.tags,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'branchid': instance.branchid,
      '__v': instance.version,
    };
