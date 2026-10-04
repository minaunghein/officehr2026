import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';

class UpdateAmendmentStatusUsecase {
  UpdateAmendmentStatusUsecase({required this.repository});

  final AttendanceAmendmentRepository repository;

  Future<AttendanceAmendment> call(
    String id, {
    required String status,
    String? rejectionReason,
  }) {
    return repository.updateAmendmentStatus(
      id,
      status: status,
      rejectionReason: rejectionReason,
    );
  }
}
