// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtRateModel _$OtRateModelFromJson(Map<String, dynamic> json) => _OtRateModel(
  id: json['_id'] as String?,
  ot1rate: json['ot1rate'] as num? ?? 0,
  ot2rate: json['ot2rate'] as num? ?? 0,
  ot3rate: json['ot3rate'] as num? ?? 0,
);

Map<String, dynamic> _$OtRateModelToJson(_OtRateModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ot1rate': instance.ot1rate,
      'ot2rate': instance.ot2rate,
      'ot3rate': instance.ot3rate,
    };

_SalaryModel _$SalaryModelFromJson(Map<String, dynamic> json) => _SalaryModel(
  id: json['_id'] as String,
  userid: json['userid'] as String,
  company: json['company'] as String,
  salary: json['salary'] as num? ?? 0,
  ssb: json['ssb'] as bool? ?? false,
  otrate: json['otrate'] == null
      ? null
      : OtRateModel.fromJson(json['otrate'] as Map<String, dynamic>),
  otamount: json['otamount'] as num? ?? 0,
  isotflat: json['isotflat'] as bool? ?? false,
  tags: json['tags'] as List<dynamic>? ?? const [],
  deleted: json['deleted'] as bool? ?? false,
  deletedAt: json['deletedAt'],
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  version: (json['__v'] as num?)?.toInt(),
  paymentcode: (json['paymentcode'] as num?)?.toInt(),
  paymentnum: (json['paymentnum'] as num?)?.toInt(),
);

Map<String, dynamic> _$SalaryModelToJson(_SalaryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userid': instance.userid,
      'company': instance.company,
      'salary': instance.salary,
      'ssb': instance.ssb,
      'otrate': instance.otrate,
      'otamount': instance.otamount,
      'isotflat': instance.isotflat,
      'tags': instance.tags,
      'deleted': instance.deleted,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
      'paymentcode': instance.paymentcode,
      'paymentnum': instance.paymentnum,
    };
