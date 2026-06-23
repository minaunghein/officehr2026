import 'package:office_hr/features/payslip/domain/entities/payslip.dart';

abstract class PayslipRepository {
  Future<List<Payslip>> getPayslip();
}
