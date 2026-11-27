import 'package:office_hr/features/payslip/data/datasources/payslip_remote_datasource.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';

class PayslipRepositoryImpl implements PayslipRepository {
  PayslipRepositoryImpl(this._remoteDataSource);

  final PayslipRemoteDataSource _remoteDataSource;

  @override
  Future<List<Payslip>> getPayslips({DateTime? start, DateTime? end}) async {
    final models = await _remoteDataSource.getPayslips(start: start, end: end);
    return models.map((model) => model.toEntity()).toList();
  }
}
