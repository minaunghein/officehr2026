// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_holiday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicHolidayModel _$PublicHolidayModelFromJson(Map<String, dynamic> json) =>
    _PublicHolidayModel(
      id: json['_id'] as String,
      company: json['company'] as String,
      holidaydate: json['holidaydate'] as String?,
      holidayname:
          (json['holidayname'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      remarks: json['remarks'] as String?,
      tags: json['tags'] as List<dynamic>? ?? const [],
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PublicHolidayModelToJson(_PublicHolidayModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'company': instance.company,
      'holidaydate': instance.holidaydate,
      'holidayname': instance.holidayname,
      'remarks': instance.remarks,
      'tags': instance.tags,
      '__v': instance.version,
    };
