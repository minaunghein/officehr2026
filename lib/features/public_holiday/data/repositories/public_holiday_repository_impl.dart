import 'package:office_hr/features/public_holiday/data/datasources/public_holiday_remote_datasource.dart';
import 'package:office_hr/features/public_holiday/data/mappers/public_holiday_mapper.dart';
import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';
import 'package:office_hr/features/public_holiday/domain/repositories/public_holiday_repository.dart';

class PublicHolidayRepositoryImpl implements PublicHolidayRepository {
  final PublicHolidayRemoteDataSource _remoteDataSource;

  PublicHolidayRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<PublicHoliday>> getPublicHolidays() async {
    final models = await _remoteDataSource.getPublicHolidays();
    return models.map((e) => e.toEntity()).toList();
  }
}
