import 'package:freezed_annotation/freezed_annotation.dart';

part 'geofence.freezed.dart';

@freezed
abstract class Geofence with _$Geofence {
  const factory Geofence({
    required double latitude,
    required double longitude,
  }) = _Geofence;
}
