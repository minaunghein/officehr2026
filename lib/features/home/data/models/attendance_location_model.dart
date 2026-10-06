import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';

part 'attendance_location_model.freezed.dart';
part 'attendance_location_model.g.dart';

@freezed
abstract class AttendanceLocationModel with _$AttendanceLocationModel {
  const AttendanceLocationModel._();

  const factory AttendanceLocationModel({
    double? latitude,
    double? longitude,
    double? accuracy,
  }) = _AttendanceLocationModel;

  factory AttendanceLocationModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceLocationModelFromJson(json);

  factory AttendanceLocationModel.fromEntity(AttendanceLocation entity) =>
      AttendanceLocationModel(
        latitude: entity.latitude,
        longitude: entity.longitude,
        accuracy: entity.accuracy,
      );

  AttendanceLocation toEntity() => AttendanceLocation(
    latitude: latitude,
    longitude: longitude,
    accuracy: accuracy,
  );
}
