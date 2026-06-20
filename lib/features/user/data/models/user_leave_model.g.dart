// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_leave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserLeaveModel _$UserLeaveModelFromJson(Map<String, dynamic> json) =>
    _UserLeaveModel(
      id: json['_id'] as String,
      company: json['company'] as String,
      userid: json['userid'] as String,
      settingleaveid: json['settingleaveid'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      ispaid: json['ispaid'] as bool? ?? false,
      addtoall: json['addtoall'] as bool? ?? false,
      leavetitle: json['leavetitle'] as String,
      contday: (json['contday'] as num?)?.toInt() ?? 0,
      allowdaysyr: (json['allowdaysyr'] as num?)?.toInt() ?? 0,
      allowdayssixmonth: (json['allowdayssixmonth'] as num?)?.toInt() ?? 0,
      reqservicedays: (json['reqservicedays'] as num?)?.toInt() ?? 0,
      reqworkingdays: (json['reqworkingdays'] as num?)?.toInt() ?? 0,
      leavetaken: (json['leavetaken'] as num?)?.toInt() ?? 0,
      validdaynextyear: (json['validdaynextyear'] as num?)?.toInt() ?? 0,
      yearid: (json['yearid'] as num).toInt(),
      carrynextyear: json['carrynextyear'] as bool? ?? false,
      defaultfornoclockinout: json['defaultfornoclockinout'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserLeaveModelToJson(_UserLeaveModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'userid': instance.userid,
      'settingleaveid': instance.settingleaveid,
      'tags': instance.tags,
      'ispaid': instance.ispaid,
      'addtoall': instance.addtoall,
      'leavetitle': instance.leavetitle,
      'contday': instance.contday,
      'allowdaysyr': instance.allowdaysyr,
      'allowdayssixmonth': instance.allowdayssixmonth,
      'reqservicedays': instance.reqservicedays,
      'reqworkingdays': instance.reqworkingdays,
      'leavetaken': instance.leavetaken,
      'validdaynextyear': instance.validdaynextyear,
      'yearid': instance.yearid,
      'carrynextyear': instance.carrynextyear,
      'defaultfornoclockinout': instance.defaultfornoclockinout,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
    };
