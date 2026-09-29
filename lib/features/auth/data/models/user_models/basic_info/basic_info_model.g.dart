// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicInfoModel _$BasicInfoModelFromJson(Map<String, dynamic> json) =>
    _BasicInfoModel(
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      nrc: json['nrc'] == null
          ? null
          : NrcModel.fromJson(json['nrc'] as Map<String, dynamic>),
      firstNameMm: json['first_name_mm'] as String? ?? '',
      lastNameMm: json['last_name_mm'] as String? ?? '',
      maritalStatus: json['marital_status'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      bloodType: json['blood_type'] as String? ?? '',
      nationality: json['nationality'] as String? ?? '',
      dateOfBirth: json['date_of_birth'] as String?,
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      religion: json['religion'] as String? ?? '',
      ethnicity: json['ethnicity'] as String? ?? '',
    );

Map<String, dynamic> _$BasicInfoModelToJson(_BasicInfoModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nrc': instance.nrc,
      'first_name_mm': instance.firstNameMm,
      'last_name_mm': instance.lastNameMm,
      'marital_status': instance.maritalStatus,
      'gender': instance.gender,
      'blood_type': instance.bloodType,
      'nationality': instance.nationality,
      'date_of_birth': instance.dateOfBirth,
      'height': instance.height,
      'weight': instance.weight,
      'religion': instance.religion,
      'ethnicity': instance.ethnicity,
    };
