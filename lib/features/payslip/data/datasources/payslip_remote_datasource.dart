import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/payslip/data/models/payslip_model.dart';

abstract class PayslipRemoteDataSource {
  Future<List<PayslipModel>> getPayslip();
}

class PayslipRemoteDataSourceImpl implements PayslipRemoteDataSource {
  final ApiService _apiService;

  PayslipRemoteDataSourceImpl(this._apiService);

  @override
  Future<List<PayslipModel>> getPayslip() async {
    return _apiService.post<List<PayslipModel>>(
      '/api/v1/salary/payslip',
      parser: (data) {
        try {
          final jsonData = data['data'] ?? data;
          return (jsonData as List<dynamic>)
              .map((e) => PayslipModel.fromJson(e as Map<String, dynamic>))
              .toList();
        } catch (e, stack) {
          AppLogger.e('Error parsing Payslip: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
  }
}
