// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationModel _$EducationModelFromJson(Map<String, dynamic> json) =>
    _EducationModel(
      school: json['school'] as String? ?? '',
      degree: json['degree'] as String? ?? '',
      field: json['field'] as String? ?? '',
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$EducationModelToJson(_EducationModel instance) =>
    <String, dynamic>{
      'school': instance.school,
      'degree': instance.degree,
      'field': instance.field,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'description': instance.description,
    };
