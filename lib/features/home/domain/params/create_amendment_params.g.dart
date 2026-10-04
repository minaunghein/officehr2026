// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_amendment_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAmendmentParams _$CreateAmendmentParamsFromJson(
  Map<String, dynamic> json,
) => _CreateAmendmentParams(
  userId: json['user_id'] as String,
  dateId: json['date_id'] as String,
  amendmentType: json['amendment_type'] as String,
  requestedClockIn: json['requested_clock_in'] as String?,
  requestedClockOut: json['requested_clock_out'] as String?,
  reason: json['reason'] as String,
);

Map<String, dynamic> _$CreateAmendmentParamsToJson(
  _CreateAmendmentParams instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'date_id': instance.dateId,
  'amendment_type': instance.amendmentType,
  'requested_clock_in': instance.requestedClockIn,
  'requested_clock_out': instance.requestedClockOut,
  'reason': instance.reason,
};
