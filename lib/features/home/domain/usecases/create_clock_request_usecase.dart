import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/params/create_clock_request_params.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';

class CreateClockRequestUsecase {
  CreateClockRequestUsecase({required this.repository});

  final ClockRequestRepository repository;

  Future<ClockRequest> call(CreateClockRequestParams params) {
    return repository.createClockRequest(params);
  }
}
