// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    _ContactInfoModel(
      id: json['_id'] as String?,
      phone: json['phone'] as String?,
      officephone: json['officephone'] as String?,
      perstate: json['perstate'] as String?,
      pertownship: json['pertownship'] as String?,
      percity: json['percity'] as String?,
      perstreetaddrs: (json['perstreetaddrs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      currstate: json['currstate'] as String?,
      currtownship: json['currtownship'] as String?,
      currcity: json['currcity'] as String?,
      currstreetaddrs: (json['currstreetaddrs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ContactInfoModelToJson(_ContactInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'phone': instance.phone,
      'officephone': instance.officephone,
      'perstate': instance.perstate,
      'pertownship': instance.pertownship,
      'percity': instance.percity,
      'perstreetaddrs': instance.perstreetaddrs,
      'currstate': instance.currstate,
      'currtownship': instance.currtownship,
      'currcity': instance.currcity,
      'currstreetaddrs': instance.currstreetaddrs,
    };
