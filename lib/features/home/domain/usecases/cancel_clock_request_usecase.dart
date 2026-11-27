import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';

class CancelClockRequestUsecase {
  CancelClockRequestUsecase({required this.repository});

  final ClockRequestRepository repository;

  Future<ClockRequest> call(String id, {String? note}) {
    return repository.cancel(id, note: note);
  }
}
