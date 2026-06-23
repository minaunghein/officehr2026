import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';

/// Use case for fetching the payslip
class GetPayslipUsecase {
  final PayslipRepository _repository;

  GetPayslipUsecase(this._repository);

  Future<Payslip> call({String? startDate, String? endDate}) {
    return _repository.getPayslip(startDate: startDate, endDate: endDate);
  }
}
