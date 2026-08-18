// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeofenceModel _$GeofenceModelFromJson(Map<String, dynamic> json) =>
    _GeofenceModel(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$GeofenceModelToJson(_GeofenceModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
