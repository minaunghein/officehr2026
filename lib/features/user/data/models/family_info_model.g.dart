// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FamilyInfoModel _$FamilyInfoModelFromJson(Map<String, dynamic> json) =>
    _FamilyInfoModel(
      id: json['_id'] as String,
      fathernames: (json['fathernames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mothernames: (json['mothernames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nofm: (json['nofm'] as num).toInt(),
    );

Map<String, dynamic> _$FamilyInfoModelToJson(_FamilyInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fathernames': instance.fathernames,
      'mothernames': instance.mothernames,
      'nofm': instance.nofm,
    };
