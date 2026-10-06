// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceLocationModel _$AttendanceLocationModelFromJson(
  Map<String, dynamic> json,
) => _AttendanceLocationModel(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AttendanceLocationModelToJson(
  _AttendanceLocationModel instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
};
