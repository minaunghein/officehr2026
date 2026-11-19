// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_clock_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateClockRequestParams _$CreateClockRequestParamsFromJson(
  Map<String, dynamic> json,
) => _CreateClockRequestParams(
  dateId: json['date_id'] as String,
  punchTime: json['punch_time'] as String,
  punchType: $enumDecode(_$ClockPunchTypeEnumMap, json['punch_type']),
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  locationLabel: json['location_label'] as String?,
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$CreateClockRequestParamsToJson(
  _CreateClockRequestParams instance,
) => <String, dynamic>{
  'date_id': instance.dateId,
  'punch_time': instance.punchTime,
  'punch_type': _punchTypeToJson(instance.punchType),
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
  'location_label': instance.locationLabel,
  'reason': instance.reason,
};

const _$ClockPunchTypeEnumMap = {
  ClockPunchType.clockIn: 'clockIn',
  ClockPunchType.clockOut: 'clockOut',
};
