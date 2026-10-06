// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkExperienceModel _$WorkExperienceModelFromJson(Map<String, dynamic> json) =>
    _WorkExperienceModel(
      company: json['company'] as String? ?? '',
      position: json['position'] as String? ?? '',
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$WorkExperienceModelToJson(
  _WorkExperienceModel instance,
) => <String, dynamic>{
  'company': instance.company,
  'position': instance.position,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'description': instance.description,
};
