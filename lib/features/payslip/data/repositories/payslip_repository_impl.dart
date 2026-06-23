import 'package:office_hr/features/payslip/data/datasources/payslip_remote_datasource.dart';
import 'package:office_hr/features/payslip/data/mappers/payslip_mapper.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';

/// Implementation of PayslipRepository
class PayslipRepositoryImpl implements PayslipRepository {
  final PayslipRemoteDataSource _remoteDataSource;

  PayslipRepositoryImpl(this._remoteDataSource);

  @override
  Future<Payslip> getPayslip({String? startDate, String? endDate}) async {
    final model = await _remoteDataSource.getPayslip(
      startDate: startDate,
      endDate: endDate,
    );
    return model.toEntity();
  }
}
