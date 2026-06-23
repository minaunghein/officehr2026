// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayslipModel _$PayslipModelFromJson(Map<String, dynamic> json) =>
    _PayslipModel(
      id: json['_id'] as String,
      user: UserDetailsModel.fromJson(json['userid'] as Map<String, dynamic>),
      company: json['company'] as String,
      salary: json['salary'] as String?,
      salaryperday: json['salaryperday'] as num? ?? 0,
      salarylate: json['salarylate'] as num? ?? 0,
      salaryunder: json['salaryunder'] as num? ?? 0,
      salaryot1: json['salaryot1'] as num? ?? 0,
      salaryot2: json['salaryot2'] as num? ?? 0,
      salaryot3: json['salaryot3'] as num? ?? 0,
      salaryot: json['salaryot'] as num? ?? 0,
      salaryssb: json['salaryssb'] as num? ?? 0,
      unpaidleave: json['unpaidleave'] as num? ?? 0,
      unpaiddeduction: json['unpaiddeduction'] as num? ?? 0,
      salarybenefit: json['salarybenefit'] as num? ?? 0,
      loan: json['loan'] as num? ?? 0,
      bonus: json['bonus'] as num? ?? 0,
      salarydeduction: json['salarydeduction'] as num? ?? 0,
      salaryattendance: json['salaryattendance'] as num? ?? 0,
      salaryintime: json['salaryintime'] as num? ?? 0,
      finalsalary: json['finalsalary'] as num? ?? 0,
      salarystartdate: json['salarystartdate'] as String?,
      salaryenddate: json['salaryenddate'] as String?,
      tags: json['tags'] as List<dynamic>? ?? const [],
      deleted: json['deleted'] as bool? ?? false,
      isackg: json['isackg'] as bool? ?? false,
      deletedAt: json['deletedAt'],
      deductiontypes: json['deductiontypes'] as List<dynamic>? ?? const [],
      benefittypes: json['benefittypes'] as List<dynamic>? ?? const [],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PayslipModelToJson(_PayslipModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userid': instance.user,
      'company': instance.company,
      'salary': instance.salary,
      'salaryperday': instance.salaryperday,
      'salarylate': instance.salarylate,
      'salaryunder': instance.salaryunder,
      'salaryot1': instance.salaryot1,
      'salaryot2': instance.salaryot2,
      'salaryot3': instance.salaryot3,
      'salaryot': instance.salaryot,
      'salaryssb': instance.salaryssb,
      'unpaidleave': instance.unpaidleave,
      'unpaiddeduction': instance.unpaiddeduction,
      'salarybenefit': instance.salarybenefit,
      'loan': instance.loan,
      'bonus': instance.bonus,
      'salarydeduction': instance.salarydeduction,
      'salaryattendance': instance.salaryattendance,
      'salaryintime': instance.salaryintime,
      'finalsalary': instance.finalsalary,
      'salarystartdate': instance.salarystartdate,
      'salaryenddate': instance.salaryenddate,
      'tags': instance.tags,
      'deleted': instance.deleted,
      'isackg': instance.isackg,
      'deletedAt': instance.deletedAt,
      'deductiontypes': instance.deductiontypes,
      'benefittypes': instance.benefittypes,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
