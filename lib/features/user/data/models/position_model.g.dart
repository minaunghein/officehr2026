// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PositionModel _$PositionModelFromJson(Map<String, dynamic> json) =>
    _PositionModel(
      id: json['_id'] as String? ?? '',
      company: json['company'] as String? ?? '',
      titles:
          (json['titles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sc: json['sc'] as String? ?? '',
      so: (json['so'] as num?)?.toInt() ?? 0,
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      remarks: json['remarks'] == null
          ? ''
          : _parsePositionRemarks(json['remarks']),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PositionModelToJson(_PositionModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'titles': instance.titles,
      'sc': instance.sc,
      'so': instance.so,
      'rank': instance.rank,
      'remarks': instance.remarks,
      'tags': instance.tags,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
