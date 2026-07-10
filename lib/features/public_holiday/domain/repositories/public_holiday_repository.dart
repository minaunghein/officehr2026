import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';

abstract class PublicHolidayRepository {
  Future<List<PublicHoliday>> getPublicHolidays();
}
