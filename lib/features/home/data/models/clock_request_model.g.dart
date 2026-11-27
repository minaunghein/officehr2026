// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClockRequestModel _$ClockRequestModelFromJson(
  Map<String, dynamic> json,
) => _ClockRequestModel(
  id: _readId(json, 'id') as String? ?? '',
  userId: json['user_id'] as String? ?? '',
  branchId: json['branch_id'] as String? ?? '',
  dateId: json['date_id'] as String? ?? '',
  punchTime: json['punch_time'] as String? ?? '',
  punchType: json['punch_type'] as String? ?? 'CLOCK_IN',
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  locationLabel: json['location_label'] as String?,
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
  branchRadiusKm: (json['branch_radius_km'] as num?)?.toDouble(),
  autoFlagged: json['auto_flagged'] as bool? ?? false,
  reason: json['reason'] as String? ?? '',
  status: json['status'] as String? ?? 'PENDING',
  decisionNote: json['decision_note'] as String?,
  decidedAt: parseLocalDateTime(json['decided_at'] as String?),
  createdAt: parseLocalDateTime(json['createdAt'] as String?),
  user: json['user'] == null
      ? null
      : ClockRequestUserModel.fromJson(json['user'] as Map<String, dynamic>),
  branch: json['branch'] == null
      ? null
      : ClockRequestBranchModel.fromJson(
          json['branch'] as Map<String, dynamic>,
        ),
  decider: json['decider'] == null
      ? null
      : ClockRequestUserModel.fromJson(json['decider'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClockRequestModelToJson(_ClockRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'branch_id': instance.branchId,
      'date_id': instance.dateId,
      'punch_time': instance.punchTime,
      'punch_type': instance.punchType,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
      'location_label': instance.locationLabel,
      'distance_km': instance.distanceKm,
      'branch_radius_km': instance.branchRadiusKm,
      'auto_flagged': instance.autoFlagged,
      'reason': instance.reason,
      'status': instance.status,
      'decision_note': instance.decisionNote,
      'decided_at': instance.decidedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
      'branch': instance.branch,
      'decider': instance.decider,
    };

_ClockRequestUserModel _$ClockRequestUserModelFromJson(
  Map<String, dynamic> json,
) => _ClockRequestUserModel(
  id: _readId(json, 'id') as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
);

Map<String, dynamic> _$ClockRequestUserModelToJson(
  _ClockRequestUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
};

_ClockRequestBranchModel _$ClockRequestBranchModelFromJson(
  Map<String, dynamic> json,
) => _ClockRequestBranchModel(
  id: _readId(json, 'id') as String? ?? '',
  title: json['title'] as String? ?? '',
  code: json['code'] as String? ?? '',
);

Map<String, dynamic> _$ClockRequestBranchModelToJson(
  _ClockRequestBranchModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'code': instance.code,
};
