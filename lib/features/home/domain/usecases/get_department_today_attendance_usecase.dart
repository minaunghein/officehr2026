import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class GetDepartmentTodayAttendanceUsecase {
  GetDepartmentTodayAttendanceUsecase({required this.attendanceRepository});
  final AttendanceRepository attendanceRepository;

  Future<List<TeamAttendance>> call(String departmentId) {
    return attendanceRepository.getDepartmentTodayAttendance(departmentId);
  }
}
