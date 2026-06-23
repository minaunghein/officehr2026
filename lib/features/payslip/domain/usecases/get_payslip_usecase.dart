import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';

class GetPayslipUsecase {
  final PayslipRepository _repository;

  GetPayslipUsecase(this._repository);

  Future<List<Payslip>> call({String? startDate, String? endDate}) {
    return _repository.getPayslip();
  }
}
