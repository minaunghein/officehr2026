// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FamilyInfoModel _$FamilyInfoModelFromJson(Map<String, dynamic> json) =>
    _FamilyInfoModel(
      members: json['members'] as List<dynamic>? ?? const <dynamic>[],
      fatherName: json['father_name'] as String? ?? '',
      fatherNameMm: json['father_name_mm'] as String? ?? '',
      motherName: json['mother_name'] as String? ?? '',
      motherNameMm: json['mother_name_mm'] as String? ?? '',
      numberOfFamilyNumber:
          (json['number_of_family_number'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$FamilyInfoModelToJson(_FamilyInfoModel instance) =>
    <String, dynamic>{
      'members': instance.members,
      'father_name': instance.fatherName,
      'father_name_mm': instance.fatherNameMm,
      'mother_name': instance.motherName,
      'mother_name_mm': instance.motherNameMm,
      'number_of_family_number': instance.numberOfFamilyNumber,
    };
