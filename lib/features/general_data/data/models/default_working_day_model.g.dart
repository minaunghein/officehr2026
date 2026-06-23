// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_working_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DefaultWorkingDayModel _$DefaultWorkingDayModelFromJson(
  Map<String, dynamic> json,
) => _DefaultWorkingDayModel(
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
  halfdaystart: (json['halfdaystart'] as num).toInt(),
  absstart: (json['absstart'] as num).toInt(),
  offday: json['offday'] as bool,
  workingday: json['workingday'] as bool,
);

Map<String, dynamic> _$DefaultWorkingDayModelToJson(
  _DefaultWorkingDayModel instance,
) => <String, dynamic>{
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
  'halfdaystart': instance.halfdaystart,
  'absstart': instance.absstart,
  'offday': instance.offday,
  'workingday': instance.workingday,
};
