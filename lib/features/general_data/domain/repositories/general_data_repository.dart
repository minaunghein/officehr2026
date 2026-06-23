import 'package:office_hr/features/general_data/domain/entities/general_data.dart';

abstract class GeneralDataRepository {
  Future<GeneralData> getGeneralData();

  Future<GeneralData?> getCachedGeneralData();

  Future<void> cacheGeneralData(GeneralData data);

  Future<void> clearCache();
}
