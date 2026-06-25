// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserBioModel _$UserBioModelFromJson(
  Map<String, dynamic> json,
) => _UserBioModel(
  id: json['_id'] as String? ?? '',
  company: json['company'] == null ? '' : _parseCompanyId(json['company']),
  userid: json['userid'] as String? ?? '',
  basicinfo: json['basicinfo'] == null
      ? null
      : BasicInfoModel.fromJson(json['basicinfo'] as Map<String, dynamic>),
  contactinfo: json['contactinfo'] == null
      ? null
      : ContactInfoModel.fromJson(json['contactinfo'] as Map<String, dynamic>),
  familyinfo: json['familyinfo'] == null
      ? null
      : FamilyInfoModel.fromJson(json['familyinfo'] as Map<String, dynamic>),
  workinfo: json['workinfo'] == null
      ? null
      : WorkInfoModel.fromJson(json['workinfo'] as Map<String, dynamic>),
  isotenable: json['isotenable'] as bool? ?? false,
  isot1enable: json['isot1enable'] as bool? ?? false,
  isot2enable: json['isot2enable'] as bool? ?? false,
  isot3enable: json['isot3enable'] as bool? ?? false,
  isautoammendenable: json['isautoammendenable'] as bool? ?? false,
  isdeductionenable: json['isdeductionenable'] as bool? ?? false,
  isunderenable: json['isunderenable'] as bool? ?? false,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  deleted: json['deleted'] as bool? ?? false,
  deletedAt: json['deletedAt'],
  workexperience: json['workexperience'] as List<dynamic>? ?? const [],
  education: json['education'] as List<dynamic>? ?? const [],
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserBioModelToJson(_UserBioModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'userid': instance.userid,
      'basicinfo': instance.basicinfo,
      'contactinfo': instance.contactinfo,
      'familyinfo': instance.familyinfo,
      'workinfo': instance.workinfo,
      'isotenable': instance.isotenable,
      'isot1enable': instance.isot1enable,
      'isot2enable': instance.isot2enable,
      'isot3enable': instance.isot3enable,
      'isautoammendenable': instance.isautoammendenable,
      'isdeductionenable': instance.isdeductionenable,
      'isunderenable': instance.isunderenable,
      'tags': instance.tags,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'workexperience': instance.workexperience,
      'education': instance.education,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
