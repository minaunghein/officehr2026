import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class GetTodayAttendanceUsecase {
  GetTodayAttendanceUsecase({required this.attendanceRepository});
  final AttendanceRepository attendanceRepository;

  Future<TodayAttendance> call() async {
    return await attendanceRepository.getTodayAttendance();
  }
}
