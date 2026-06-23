import 'package:office_hr/features/general_data/domain/entities/general_data.dart';
import 'package:office_hr/features/general_data/domain/repositories/general_data_repository.dart';

class GetGeneralDataUsecase {
  final GeneralDataRepository _repository;

  GetGeneralDataUsecase(this._repository);

  Future<GeneralData> call({bool forceRefresh = false}) async {
    if (!forceRefresh) {
      final cachedData = await _repository.getCachedGeneralData();
      if (cachedData != null) {
        return cachedData;
      }
    }

    return await _repository.getGeneralData();
  }
}
