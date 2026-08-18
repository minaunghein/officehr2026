// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicInfoModel _$BasicInfoModelFromJson(Map<String, dynamic> json) =>
    _BasicInfoModel(
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      nrc: json['nrc'] as String?,
    );

Map<String, dynamic> _$BasicInfoModelToJson(_BasicInfoModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nrc': instance.nrc,
    };
