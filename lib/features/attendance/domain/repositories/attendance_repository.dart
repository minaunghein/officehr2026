import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/attendance/domain/entities/department_attendances.dart';

abstract class AttendanceRepository {
  Future<Attendance> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String? desc,
  });

  Future<List<Attendance>> getTodayClockIn();

  Future<List<DepartmentAttendances>> getDepartmentAttendances();
}
