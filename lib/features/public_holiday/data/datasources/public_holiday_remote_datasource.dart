import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/public_holiday/data/models/public_holiday_model.dart';

abstract class PublicHolidayRemoteDataSource {
  Future<List<PublicHolidayModel>> getPublicHolidays();
}

class PublicHolidayRemoteDataSourceImpl
    implements PublicHolidayRemoteDataSource {
  final ApiService _apiService;

  PublicHolidayRemoteDataSourceImpl(this._apiService);

  @override
  Future<List<PublicHolidayModel>> getPublicHolidays() async {
    return _apiService.get<List<PublicHolidayModel>>(
      '/api/v1/settings/publicholidays',
      parser: (data) {
        try {
          final jsonData = data is Map<String, dynamic>
              ? data['data'] ?? data
              : data;
          return (jsonData as List<dynamic>)
              .map(
                (e) => PublicHolidayModel.fromJson(e as Map<String, dynamic>),
              )
              .toList();
        } catch (e, stack) {
          AppLogger.e(
            'Error parsing public holidays: $e',
            error: e,
            stack: stack,
          );
          rethrow;
        }
      },
    );
  }
}
