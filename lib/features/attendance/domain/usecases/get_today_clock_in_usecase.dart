import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/attendance/domain/repositories/attendance_repository.dart';

class GetTodayClockInUsecase {
  GetTodayClockInUsecase({required this.repository});

  final AttendanceRepository repository;

  Future<List<Attendance>> call() {
    return repository.getTodayClockIn();
  }
}
