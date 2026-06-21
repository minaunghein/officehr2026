// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  id: json['_id'] as String,
  company: json['company'] as String,
  shiftid: json['shiftid'] as String,
  late1symbol: json['late1symbol'] as String,
  late2symbol: json['late2symbol'] as String,
  late3symbol: json['late3symbol'] as String,
  abssymbol: json['abssymbol'] as String,
  hdsymbol: json['hdsymbol'] as String,
  desc: json['desc'] as String?,
  unpaidsymbol: json['unpaidsymbol'] as String,
  intervalmin: (json['intervalmin'] as num?)?.toInt() ?? 15,
  nightshift: json['nightshift'] as bool? ?? false,
  isdefault: json['isdefault'] as bool? ?? false,
  otstartbase: json['otstartbase'] as bool? ?? false,
  workingdays:
      (json['workingdays'] as List<dynamic>?)
          ?.map((e) => WorkingDayModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  version: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'shiftid': instance.shiftid,
      'late1symbol': instance.late1symbol,
      'late2symbol': instance.late2symbol,
      'late3symbol': instance.late3symbol,
      'abssymbol': instance.abssymbol,
      'hdsymbol': instance.hdsymbol,
      'desc': instance.desc,
      'unpaidsymbol': instance.unpaidsymbol,
      'intervalmin': instance.intervalmin,
      'nightshift': instance.nightshift,
      'isdefault': instance.isdefault,
      'otstartbase': instance.otstartbase,
      'workingdays': instance.workingdays,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.version,
    };
