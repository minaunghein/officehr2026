import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_record.freezed.dart';

@freezed
abstract class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    required String id,
    required String employeeId,
    required String companyId,
    DateTime? date,
    required String shiftId,
    AttendanceTimeRange? scheduled,
    AttendanceTimeRange? actual,
    AttendanceTimeRange? adjustment,
    required int workDuration,
    required int breakDuration,
    required int lateMinutes,
    required int earlyLeaveMinutes,
    required int overtimeMinutes,
    required String status,
    required bool isHoliday,
    String? holidayType,
    String? leaveType,
    required bool isHalfDay,
    String? editedBy,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AttendanceRecord;
}

@freezed
abstract class AttendanceTimeRange with _$AttendanceTimeRange {
  const factory AttendanceTimeRange({String? clockIn, String? clockOut}) =
      _AttendanceTimeRange;
}
