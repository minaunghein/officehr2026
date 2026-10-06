import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_stats.dart';

part 'attendance_stats_model.freezed.dart';
part 'attendance_stats_model.g.dart';

@freezed
abstract class AttendanceStatsModel with _$AttendanceStatsModel {
  const AttendanceStatsModel._();

  const factory AttendanceStatsModel({
    @JsonKey(name: 'PRESENT') @Default(0) int present,
    @JsonKey(name: 'LATE') @Default(0) int late,
    @JsonKey(name: 'ABSENT') @Default(0) int absent,
    @JsonKey(name: 'HALF_DAY') @Default(0) int halfDay,
    @JsonKey(name: 'ON_LEAVE') @Default(0) int onLeave,
    @JsonKey(name: 'HOLIDAY') @Default(0) int holiday,
    @JsonKey(name: 'REST_DAY') @Default(0) int restDay,
  }) = _AttendanceStatsModel;

  factory AttendanceStatsModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatsModelFromJson(_payload(json));

  AttendanceStats toEntity() => AttendanceStats(
    present: present,
    late: late,
    absent: absent,
    halfDay: halfDay,
    onLeave: onLeave,
    holiday: holiday,
    restDay: restDay,
  );
}

Map<String, dynamic> _payload(Map<String, dynamic> json) {
  final data = json['data'];
  return data is Map<String, dynamic> ? data : json;
}
