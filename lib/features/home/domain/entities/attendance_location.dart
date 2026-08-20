import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_location.freezed.dart';

@freezed
abstract class AttendanceLocation with _$AttendanceLocation {
  const factory AttendanceLocation({
    double? latitude,
    double? longitude,
    double? accuracy,
  }) = _AttendanceLocation;
}
