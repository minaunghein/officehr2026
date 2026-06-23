// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicInfoModel _$BasicInfoModelFromJson(Map<String, dynamic> json) =>
    _BasicInfoModel(
      id: json['_id'] as String,
      firstnames: (json['firstnames'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      lastnames: (json['lastnames'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      nrcregioncodeid: (json['nrcregioncodeid'] as num).toInt(),
      nrctype: json['nrctype'] as String,
      nrctownship: json['nrctownship'] as String,
      nrcnumbers: (json['nrcnumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      genderid: (json['genderid'] as num).toInt(),
      bloodtypeid: (json['bloodtypeid'] as num).toInt(),
      maritalstatusid: (json['maritalstatusid'] as num).toInt(),
      dob: json['dob'] as String,
      pobs: (json['pobs'] as List<dynamic>).map((e) => e as String).toList(),
      nmarks: (json['nmarks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      height: json['height'] as String,
      weight: (json['weight'] as num).toInt(),
      hc: json['hc'] as String,
      ec: json['ec'] as String,
      nationalityid: (json['nationalityid'] as num).toInt(),
      religionid: json['religionid'] as String,
      ethnicid: json['ethnicid'] as String,
    );

Map<String, dynamic> _$BasicInfoModelToJson(_BasicInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstnames': instance.firstnames,
      'lastnames': instance.lastnames,
      'nrcregioncodeid': instance.nrcregioncodeid,
      'nrctype': instance.nrctype,
      'nrctownship': instance.nrctownship,
      'nrcnumbers': instance.nrcnumbers,
      'genderid': instance.genderid,
      'bloodtypeid': instance.bloodtypeid,
      'maritalstatusid': instance.maritalstatusid,
      'dob': instance.dob,
      'pobs': instance.pobs,
      'nmarks': instance.nmarks,
      'height': instance.height,
      'weight': instance.weight,
      'hc': instance.hc,
      'ec': instance.ec,
      'nationalityid': instance.nationalityid,
      'religionid': instance.religionid,
      'ethnicid': instance.ethnicid,
    };
