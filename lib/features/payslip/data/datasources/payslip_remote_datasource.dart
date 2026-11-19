import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/payslip/data/models/payslip_model.dart';

abstract class PayslipRemoteDataSource {
  /// Fetches payslips optionally filtered by an inclusive `start_date` /
  /// `end_date` range formatted as `YYYY-MM-DD`.
  Future<List<PayslipModel>> getPayslips({DateTime? start, DateTime? end});
}

class PayslipRemoteDataSourceImpl implements PayslipRemoteDataSource {
  PayslipRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<PayslipModel>> getPayslips({
    DateTime? start,
    DateTime? end,
  }) async {
    return _apiService.get<List<PayslipModel>>(
      '/api/v1/salary/payslips',
      queryParameters: {
        if (start != null) 'start_date': formatApiDate(start),
        if (end != null) 'end_date': formatApiDate(end),
      },
      parser: _parseList,
    );
  }

  List<PayslipModel> _parseList(dynamic data) {
    try {
      final payload = data is Map<String, dynamic>
          ? data['data'] ?? data
          : data;
      if (payload is List) {
        return payload
            .whereType<Map<String, dynamic>>()
            .map(PayslipModel.fromJson)
            .toList();
      }
      if (payload is Map<String, dynamic>) {
        return [PayslipModel.fromJson(payload)];
      }
      return const [];
    } catch (error, stack) {
      AppLogger.e('Error parsing payslips: $error', error: error, stack: stack);
      rethrow;
    }
  }
}
