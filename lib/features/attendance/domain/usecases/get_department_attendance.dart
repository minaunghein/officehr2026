import 'package:office_hr/features/attendance/domain/entities/department_attendances.dart';
import 'package:office_hr/features/attendance/domain/repositories/attendance_repository.dart';

class GetDepartmentAttendanceUsecase {
  GetDepartmentAttendanceUsecase({required this.repository});

  final AttendanceRepository repository;

  Future<List<DepartmentAttendances>> call() {
    return repository.getDepartmentAttendances();
  }
}
