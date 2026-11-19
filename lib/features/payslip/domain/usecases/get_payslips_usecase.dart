import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';

class GetPayslipsUsecase {
  GetPayslipsUsecase(this._repository);

  final PayslipRepository _repository;

  Future<List<Payslip>> call({DateTime? start, DateTime? end}) {
    return _repository.getPayslips(start: start, end: end);
  }
}
