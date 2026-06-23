import 'package:office_hr/features/payslip/domain/entities/payslip.dart';

/// Repository interface for payslip
abstract class PayslipRepository {
  /// Fetch the payslip for the given salary period.
  /// [startDate] and [endDate] are optional ISO date strings to scope the period.
  Future<Payslip> getPayslip({String? startDate, String? endDate});
}
