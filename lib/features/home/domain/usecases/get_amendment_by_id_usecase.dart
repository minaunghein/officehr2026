import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';

class GetAmendmentByIdUsecase {
  GetAmendmentByIdUsecase({required this.repository});

  final AttendanceAmendmentRepository repository;

  Future<AttendanceAmendment> call(String id) {
    return repository.getAmendmentById(id);
  }
}
