import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/utils/async_reload.dart';
import 'package:office_hr/features/public_holiday/data/datasources/public_holiday_remote_datasource.dart';
import 'package:office_hr/features/public_holiday/data/repositories/public_holiday_repository_impl.dart';
import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';
import 'package:office_hr/features/public_holiday/domain/repositories/public_holiday_repository.dart';
import 'package:office_hr/features/public_holiday/domain/usecases/get_public_holidays_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'public_holiday_providers.g.dart';

@riverpod
PublicHolidayRemoteDataSource publicHolidayRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return PublicHolidayRemoteDataSourceImpl(apiService);
}

@riverpod
PublicHolidayRepository publicHolidayRepository(Ref ref) {
  final remoteDataSource = ref.watch(publicHolidayRemoteDataSourceProvider);
  return PublicHolidayRepositoryImpl(remoteDataSource);
}

@riverpod
GetPublicHolidaysUsecase getPublicHolidaysUsecase(Ref ref) {
  final repository = ref.watch(publicHolidayRepositoryProvider);
  return GetPublicHolidaysUsecase(repository);
}

@riverpod
class PublicHolidayNotifier extends _$PublicHolidayNotifier {
  @override
  FutureOr<List<PublicHoliday>> build() {
    return ref.read(getPublicHolidaysUsecaseProvider)();
  }

  Future<void> fetch() async {
    // Reload through `build` so Riverpod owns the request lifecycle: the
    // previous list stays readable while the newest response loads, and a
    // slow response from an earlier pull can never overwrite a newer one.
    ref.invalidateSelf();
    await settleReload(future);
  }

  void clear() {
    state = const AsyncData([]);
  }
}
