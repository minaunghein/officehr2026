// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyInfoModel _$CompanyInfoModelFromJson(Map<String, dynamic> json) =>
    _CompanyInfoModel(
      sc: json['sc'] as String,
      logo: json['logo'],
      name: json['name'] as String,
      street: json['street'] as String,
      street1: json['street1'] as String,
      city: (json['city'] as num).toInt(),
      state: (json['state'] as num).toInt(),
      country: (json['country'] as num).toInt(),
      zip: (json['zip'] as num).toInt(),
      sequence: (json['sequence'] as num).toInt(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$CompanyInfoModelToJson(_CompanyInfoModel instance) =>
    <String, dynamic>{
      'sc': instance.sc,
      'logo': instance.logo,
      'name': instance.name,
      'street': instance.street,
      'street1': instance.street1,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zip': instance.zip,
      'sequence': instance.sequence,
      'active': instance.active,
    };
