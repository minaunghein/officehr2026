// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupervisorModel _$SupervisorModelFromJson(Map<String, dynamic> json) =>
    _SupervisorModel(
      id: json['_id'] as String,
      company: json['company'] as String,
      compspermitted: (json['compspermitted'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      profileurl: json['profileurl'] as String,
      role: json['role'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      promotion: json['promotion'] as List<dynamic>,
      tasks: json['tasks'] as List<dynamic>,
      deleted: json['deleted'] as bool,
      deletedAt: json['deletedAt'],
      userLeaves: (json['userLeaves'] as List<dynamic>)
          .map((e) => UserLeaveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
      userbio: json['userbio'] as String,
    );

Map<String, dynamic> _$SupervisorModelToJson(_SupervisorModel instance) =>
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
      'deletedAt': instance.deletedAt,
      'userLeaves': instance.userLeaves,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
      'userbio': instance.userbio,
    };
