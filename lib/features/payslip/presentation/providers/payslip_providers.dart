import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/payslip/data/datasources/payslip_remote_datasource.dart';
import 'package:office_hr/features/payslip/data/repositories/payslip_repository_impl.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/repositories/payslip_repository.dart';
import 'package:office_hr/features/payslip/domain/usecases/get_payslip_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payslip_providers.g.dart';

// ==================== Remote Data Source ====================
@riverpod
PayslipRemoteDataSource payslipRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return PayslipRemoteDataSourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
PayslipRepository payslipRepository(Ref ref) {
  final remoteDataSource = ref.watch(payslipRemoteDataSourceProvider);
  return PayslipRepositoryImpl(remoteDataSource);
}

// ==================== Use Cases ====================
@riverpod
GetPayslipUsecase getPayslipUsecase(Ref ref) {
  final repository = ref.watch(payslipRepositoryProvider);
  return GetPayslipUsecase(repository);
}

// ==================== State Management ====================
@riverpod
class PayslipNotifier extends _$PayslipNotifier {
  @override
  FutureOr<List<Payslip>> build() async {
    return await fetch();
  }

  Future<List<Payslip>> fetch() async {
    state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async {
      final usecase = ref.read(getPayslipUsecaseProvider);
      return await usecase();
    });
    state = result;
    return result.value ?? [];
  }

  void clear() {
    state = const AsyncData([]);
  }
}
