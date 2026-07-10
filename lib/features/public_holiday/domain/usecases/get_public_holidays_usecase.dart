import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';
import 'package:office_hr/features/public_holiday/domain/repositories/public_holiday_repository.dart';

class GetPublicHolidaysUsecase {
  final PublicHolidayRepository _repository;

  GetPublicHolidaysUsecase(this._repository);

  Future<List<PublicHoliday>> call() {
    return _repository.getPublicHolidays();
  }
}
