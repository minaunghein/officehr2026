import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';

class DecideClockRequestUsecase {
  DecideClockRequestUsecase({required this.repository});

  final ClockRequestRepository repository;

  Future<ClockRequest> call(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  }) {
    return repository.decide(id, decision: decision, note: note);
  }
}
