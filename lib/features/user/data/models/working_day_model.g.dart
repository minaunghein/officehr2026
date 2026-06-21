// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingDayModel _$WorkingDayModelFromJson(Map<String, dynamic> json) =>
    _WorkingDayModel(
      dayid: (json['dayid'] as num).toInt(),
      day: json['day'] as String,
      workstart: (json['workstart'] as num).toInt(),
      workend: (json['workend'] as num).toInt(),
      reststart: (json['reststart'] as num).toInt(),
      restend: (json['restend'] as num).toInt(),
      otstart: (json['otstart'] as num).toInt(),
      late1start: (json['late1start'] as num).toInt(),
      late2start: (json['late2start'] as num).toInt(),
      late3start: (json['late3start'] as num).toInt(),
      absstart: (json['absstart'] as num).toInt(),
      halfdaystart: (json['halfdaystart'] as num).toInt(),
      workingday: json['workingday'] as bool? ?? false,
      offday: json['offday'] as bool? ?? false,
      incresthr: json['incresthr'] as bool? ?? false,
      halfday: json['halfday'] as bool? ?? false,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$WorkingDayModelToJson(_WorkingDayModel instance) =>
    <String, dynamic>{
      'dayid': instance.dayid,
      'day': instance.day,
      'workstart': instance.workstart,
      'workend': instance.workend,
      'reststart': instance.reststart,
      'restend': instance.restend,
      'otstart': instance.otstart,
      'late1start': instance.late1start,
      'late2start': instance.late2start,
      'late3start': instance.late3start,
      'absstart': instance.absstart,
      'halfdaystart': instance.halfdaystart,
      'workingday': instance.workingday,
      'offday': instance.offday,
      'incresthr': instance.incresthr,
      'halfday': instance.halfday,
      '_id': instance.id,
    };
