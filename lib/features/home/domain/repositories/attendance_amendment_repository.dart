import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';

abstract class AttendanceAmendmentRepository {
  Future<List<AttendanceAmendment>> getAmendments({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  });

  Future<AttendanceAmendment> getAmendmentById(String id);

  Future<AttendanceAmendment> createAmendment(CreateAmendmentParams params);

  Future<AttendanceAmendment> updateAmendmentStatus(
    String id, {
    required String status,
    String? rejectionReason,
  });
}
