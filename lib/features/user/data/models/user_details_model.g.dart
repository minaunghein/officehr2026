// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) =>
    _UserDetailsModel(
      id: json['_id'] as String,
      company: json['company'] == null
          ? const CompanyModel(id: '', name: '')
          : _parseCompany(json['company']),
      compspermitted:
          (json['compspermitted'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      username: json['username'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profileurl: json['profileurl'] as String? ?? '',
      role: json['role'] as String? ?? '',
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      promotion: json['promotion'] as List<dynamic>? ?? const [],
      tasks: json['tasks'] as List<dynamic>? ?? const [],
      deleted: json['deleted'] as bool? ?? false,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      userLeaves:
          (json['userLeaves'] as List<dynamic>?)
              ?.map((e) => UserLeaveModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
      userbio: json['userbio'] == null
          ? null
          : UserBioModel.fromJson(json['userbio'] as Map<String, dynamic>),
      isbiocomplete: json['isbiocomplete'] as bool? ?? false,
    );

Map<String, dynamic> _$UserDetailsModelToJson(_UserDetailsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'compspermitted': instance.compspermitted,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'profileurl': instance.profileurl,
      'role': instance.role,
      'tags': instance.tags,
      'promotion': instance.promotion,
      'tasks': instance.tasks,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'userLeaves': instance.userLeaves,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
      'userbio': instance.userbio,
      'isbiocomplete': instance.isbiocomplete,
    };
