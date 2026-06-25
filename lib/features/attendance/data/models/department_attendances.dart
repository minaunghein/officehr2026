import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/attendance/data/models/attendance_model.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';

part 'department_attendances.freezed.dart';
part 'department_attendances.g.dart';

@freezed
abstract class DepartmentAttendanceModel with _$DepartmentAttendanceModel {
  const factory DepartmentAttendanceModel({
    required UserDetailsModel user,
    required List<AttendanceModel> clockins,
    AttendanceModel? sod,
    AttendanceModel? eod,
  }) = _DepartmentAttendanceModel;

  factory DepartmentAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentAttendanceModelFromJson(json);
}
