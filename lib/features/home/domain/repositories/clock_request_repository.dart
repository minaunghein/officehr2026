import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/params/create_clock_request_params.dart';

abstract class ClockRequestRepository {
  Future<ClockRequest> createClockRequest(CreateClockRequestParams params);

  Future<List<ClockRequest>> getMyRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  });

  Future<List<ClockRequest>> getReviewRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  });

  Future<ClockRequest> decide(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  });

  Future<ClockRequest> cancel(String id, {String? note});
}
