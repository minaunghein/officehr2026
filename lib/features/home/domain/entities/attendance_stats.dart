import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_stats.freezed.dart';

@freezed
abstract class AttendanceStats with _$AttendanceStats {
  const factory AttendanceStats({
    required int present,
    required int late,
    required int absent,
    required int halfDay,
    required int onLeave,
    required int holiday,
    required int restDay,
  }) = _AttendanceStats;
}
