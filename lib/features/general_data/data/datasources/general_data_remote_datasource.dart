import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/general_data/data/models/general_data_response_model.dart';

abstract class GeneralDataRemoteDataSource {
  Future<GeneralDataResponseModel> getGeneralData();
}

class GeneralDataRemoteDataSourceImpl implements GeneralDataRemoteDataSource {
  final ApiService _apiService;

  GeneralDataRemoteDataSourceImpl(this._apiService);

  @override
  Future<GeneralDataResponseModel> getGeneralData() async {
    final response = await _apiService.get<Map<String, dynamic>>(
      '/api/v1/settings/general',
      parser: (data) {
        try {
          final raw = (data is Map) ? data : <String, dynamic>{};
          final jsonData =
              (raw['data'] is Map ? raw['data'] : raw) as Map<String, dynamic>;
          return {'data': jsonData};
        } catch (e) {
          throw Exception(e.toString());
        }
      },
    );
    return GeneralDataResponseModel.fromJson(response);
  }
}
