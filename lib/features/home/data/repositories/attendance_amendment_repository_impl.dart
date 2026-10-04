import 'package:office_hr/features/home/data/datasources/attendance_amendment_remote_datasource.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';

class AttendanceAmendmentRepositoryImpl
    implements AttendanceAmendmentRepository {
  AttendanceAmendmentRepositoryImpl({required this.datasource});

  final AttendanceAmendmentRemoteDatasource datasource;

  @override
  Future<List<AttendanceAmendment>> getAmendments({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  }) async {
    final models = await datasource.getAmendments(
      start: start,
      end: end,
      statuses: statuses,
    );
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<AttendanceAmendment> getAmendmentById(String id) async {
    final model = await datasource.getAmendmentById(id);
    return model.toEntity();
  }

  @override
  Future<AttendanceAmendment> createAmendment(
    CreateAmendmentParams params,
  ) async {
    final model = await datasource.createAmendment(params);
    return model.toEntity();
  }

  @override
  Future<AttendanceAmendment> updateAmendmentStatus(
    String id, {
    required String status,
    String? rejectionReason,
  }) async {
    final model = await datasource.updateAmendmentStatus(
      id,
      status: status,
      rejectionReason: rejectionReason,
    );
    return model.toEntity();
  }
}
