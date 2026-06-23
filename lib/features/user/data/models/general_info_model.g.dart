// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneralInfoModel _$GeneralInfoModelFromJson(Map<String, dynamic> json) =>
    _GeneralInfoModel(
      id: json['_id'] as String?,
      street: json['street'] as String?,
      street1: json['street1'] as String?,
      city: (json['city'] as num?)?.toInt(),
      state: (json['state'] as num?)?.toInt(),
      country: (json['country'] as num?)?.toInt(),
      zip: (json['zip'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      registerid: json['registerid'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$GeneralInfoModelToJson(_GeneralInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'street': instance.street,
      'street1': instance.street1,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zip': instance.zip,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
      'email': instance.email,
      'phone': instance.phone,
      'registerid': instance.registerid,
      'website': instance.website,
    };
