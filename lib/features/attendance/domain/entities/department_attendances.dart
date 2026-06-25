import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';

part 'department_attendances.freezed.dart';

@freezed
abstract class DepartmentAttendances with _$DepartmentAttendances {
  const factory DepartmentAttendances({
    required UserDetails user,
    required List<Attendance> clockins,
    Attendance? sod,
    Attendance? eod,
  }) = _DepartmentAttendances;
}
