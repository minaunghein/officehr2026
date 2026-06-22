import 'package:office_hr/features/home/domain/entities/attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class GetTodayClockInUsecase {
  GetTodayClockInUsecase({required this.repository});

  final AttendanceRepository repository;

  Future<List<Attendance>> call({
    required String date,
  }) {
    return repository.getTodayClockIn(date: date);
  }
}
