import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/attendance_device.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';

part 'attendance_punch.freezed.dart';

@freezed
abstract class AttendancePunch with _$AttendancePunch {
  const factory AttendancePunch({
    required String id,
    required String employeeId,
    required String companyId,
    DateTime? date,
    required String punchTime,
    required String punchType,
    AttendanceLocation? location,
    AttendanceDevice? device,
    required bool isManual,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AttendancePunch;
}
