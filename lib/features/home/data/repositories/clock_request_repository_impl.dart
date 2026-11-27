import 'package:office_hr/features/home/data/datasources/clock_request_remote_datasource.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/params/create_clock_request_params.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';

class ClockRequestRepositoryImpl implements ClockRequestRepository {
  ClockRequestRepositoryImpl({required this.datasource});

  final ClockRequestRemoteDatasource datasource;

  @override
  Future<ClockRequest> createClockRequest(
    CreateClockRequestParams params,
  ) async {
    final model = await datasource.createClockRequest(params);
    return model.toEntity();
  }

  @override
  Future<List<ClockRequest>> getMyRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  }) async {
    final models = await datasource.getMyRequests(
      start: start,
      end: end,
      statuses: statuses,
      page: page,
      limit: limit,
    );
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<ClockRequest>> getReviewRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  }) async {
    final models = await datasource.getReviewRequests(
      start: start,
      end: end,
      statuses: statuses,
      page: page,
      limit: limit,
    );
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<ClockRequest> decide(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  }) async {
    final model = await datasource.decide(id, decision: decision, note: note);
    return model.toEntity();
  }

  @override
  Future<ClockRequest> cancel(String id, {String? note}) async {
    final model = await datasource.cancel(id, note: note);
    return model.toEntity();
  }
}
