import 'package:office_hr/features/home/domain/entities/clock_attendance_response.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

class ClockoutUsecase {
  ClockoutUsecase({required this.attendanceRepository});
  final AttendanceRepository attendanceRepository;

  Future<ClockAttendanceResponse> call([ClockAttendanceParams? params]) async {
    return attendanceRepository.clockOut(params);
  }
}
