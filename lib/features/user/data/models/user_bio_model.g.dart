// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserBioModel _$UserBioModelFromJson(
  Map<String, dynamic> json,
) => _UserBioModel(
  id: json['_id'] as String,
  company: json['company'] as String,
  userid: json['userid'] as String,
  basicinfo: BasicInfoModel.fromJson(json['basicinfo'] as Map<String, dynamic>),
  contactinfo: ContactInfoModel.fromJson(
    json['contactinfo'] as Map<String, dynamic>,
  ),
  familyinfo: FamilyInfoModel.fromJson(
    json['familyinfo'] as Map<String, dynamic>,
  ),
  workinfo: WorkInfoModel.fromJson(json['workinfo'] as Map<String, dynamic>),
  isotenable: json['isotenable'] as bool,
  isot1enable: json['isot1enable'] as bool,
  isot2enable: json['isot2enable'] as bool,
  isot3enable: json['isot3enable'] as bool,
  isautoammendenable: json['isautoammendenable'] as bool,
  isdeductionenable: json['isdeductionenable'] as bool,
  isunderenable: json['isunderenable'] as bool,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  deleted: json['deleted'] as bool,
  deletedAt: json['deletedAt'],
  workexperience: json['workexperience'] as List<dynamic>,
  education: json['education'] as List<dynamic>,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  version: (json['__v'] as num).toInt(),
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
