import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class GetMyAttendanceUsecase {
  GetMyAttendanceUsecase({required this.attendanceRepository});
  final AttendanceRepository attendanceRepository;

  Future<List<TodayAttendance>> call({
    DateTime? date,
    DateTime? start,
    DateTime? end,
  }) {
    return attendanceRepository.getMyAttendance(
      date: date,
      start: start,
      end: end,
    );
  }
}
