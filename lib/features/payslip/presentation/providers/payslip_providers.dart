import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/payslip/data/datasources/payslip_remote_datasource.dart';
import 'package:office_hr/features/payslip/data/repositories/payslip_repository_impl.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/params/payslip_query.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';
import 'package:office_hr/features/payslip/domain/usecases/get_payslips_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payslip_providers.g.dart';

// ==================== Data Source ====================
@riverpod
PayslipRemoteDataSource payslipRemoteDataSource(Ref ref) {
  return PayslipRemoteDataSourceImpl(ref.watch(apiServiceProvider));
}

// ==================== Repository ====================
@riverpod
PayslipRepository payslipRepository(Ref ref) {
  return PayslipRepositoryImpl(ref.watch(payslipRemoteDataSourceProvider));
}

// ==================== Use Cases ====================
@riverpod
GetPayslipsUsecase getPayslipsUsecase(Ref ref) {
  return GetPayslipsUsecase(ref.watch(payslipRepositoryProvider));
}

// ==================== State ====================

/// Payslips for the given [query] period. Re-fetches whenever the range or
/// pull-to-refresh invalidates the provider.
@riverpod
Future<List<Payslip>> payslips(Ref ref, PayslipQuery query) {
  return ref.watch(getPayslipsUsecaseProvider)(
    start: query.start,
    end: query.end,
  );
}
