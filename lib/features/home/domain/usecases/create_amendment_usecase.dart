import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';

class CreateAmendmentUsecase {
  CreateAmendmentUsecase({required this.repository});

  final AttendanceAmendmentRepository repository;

  Future<AttendanceAmendment> call(CreateAmendmentParams params) {
    return repository.createAmendment(params);
  }
}
