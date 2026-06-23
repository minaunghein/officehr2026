// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    _DepartmentModel(
      id: json['_id'] as String,
      company: json['company'] as String,
      titles: (json['titles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sc: json['sc'] as String,
      so: (json['so'] as num).toInt(),
      remarks: json['remarks'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$DepartmentModelToJson(_DepartmentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'titles': instance.titles,
      'sc': instance.sc,
      'so': instance.so,
      'remarks': instance.remarks,
      'tags': instance.tags,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
