import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/geofence/geofence.dart';

part 'geofence_model.freezed.dart';
part 'geofence_model.g.dart';

@freezed
abstract class GeofenceModel with _$GeofenceModel {
  const GeofenceModel._();

  const factory GeofenceModel({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _GeofenceModel;

  factory GeofenceModel.fromJson(Map<String, dynamic> json) =>
      _$GeofenceModelFromJson(json);

  Geofence toEntity() => Geofence(latitude: latitude, longitude: longitude);
}
