import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';

class GetAmendmentsUsecase {
  GetAmendmentsUsecase({required this.repository});

  final AttendanceAmendmentRepository repository;

  Future<List<AttendanceAmendment>> call({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  }) {
    return repository.getAmendments(start: start, end: end, statuses: statuses);
  }
}
