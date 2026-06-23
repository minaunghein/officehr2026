import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/payslip/data/models/payslip_model.dart';

/// Remote data source for payslip
abstract class PayslipRemoteDataSource {
  Future<PayslipModel> getPayslip({String? startDate, String? endDate});
}

/// Implementation of PayslipRemoteDataSource
class PayslipRemoteDataSourceImpl implements PayslipRemoteDataSource {
  final ApiService _apiService;

  PayslipRemoteDataSourceImpl(this._apiService);

  @override
  Future<PayslipModel> getPayslip({String? startDate, String? endDate}) async {
    final body = <String, dynamic>{
      'startdate': ?startDate,
      'enddate': ?endDate,
    };

    return _apiService.post<PayslipModel>(
      '/api/v1/salary/payslip',
      data: body,
      parser: (data) {
        try {
          final jsonData = data['data'] ?? data;
          return PayslipModel.fromJson(jsonData as Map<String, dynamic>);
        } catch (e, stack) {
          AppLogger.e('Error parsing Payslip: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
  }
}
