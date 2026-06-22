import 'package:office_hr/features/home/domain/entities/attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class ClockInUsecase {
  ClockInUsecase({required this.repository});

  final AttendanceRepository repository;

  Future<Attendance> call({
    required double lat,
    required double long,
    bool needApproval = false,
    String? desc,
  }) {
    return repository.clockIn(
      lat: lat,
      long: long,
      needApproval: needApproval,
      desc: desc ?? '',
    );
  }
}
