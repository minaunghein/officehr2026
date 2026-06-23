// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) =>
    _SocialMediaModel(
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
      fblk: json['fblk'] as String?,
      linkedinlk: json['linkedinlk'] as String?,
      twlk: json['twlk'] as String?,
    );

Map<String, dynamic> _$SocialMediaModelToJson(_SocialMediaModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
      'fblk': instance.fblk,
      'linkedinlk': instance.linkedinlk,
      'twlk': instance.twlk,
    };
