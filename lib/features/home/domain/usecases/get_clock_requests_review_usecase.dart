import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';

class GetClockRequestsReviewUsecase {
  GetClockRequestsReviewUsecase({required this.repository});

  final ClockRequestRepository repository;

  Future<List<ClockRequest>> call({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  }) {
    return repository.getReviewRequests(
      start: start,
      end: end,
      statuses: statuses,
      page: page,
      limit: limit,
    );
  }
}
