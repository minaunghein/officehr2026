import 'dart:developer' as developer;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/features/general_data/data/datasources/general_data_local_datasource.dart';
import 'package:office_hr/features/general_data/data/datasources/general_data_remote_datasource.dart';
import 'package:office_hr/features/general_data/data/repositories/general_data_repository_impl.dart';
import 'package:office_hr/features/general_data/domain/entities/general_data.dart';
import 'package:office_hr/features/general_data/domain/repositories/general_data_repository.dart';
import 'package:office_hr/features/general_data/domain/usecases/get_general_data_usecase.dart';

part 'general_data_providers.g.dart';

// ==================== Data Sources ====================

@riverpod
GeneralDataRemoteDataSource generalDataRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return GeneralDataRemoteDataSourceImpl(apiService);
}

@riverpod
GeneralDataLocalDataSource generalDataLocalDataSource(Ref ref) {
  final box = HiveService.settingsBox;
  return GeneralDataLocalDataSourceImpl(box);
}

// ==================== Repository ====================

@riverpod
GeneralDataRepository generalDataRepository(Ref ref) {
  final remoteDataSource = ref.watch(generalDataRemoteDataSourceProvider);
  final localDataSource = ref.watch(generalDataLocalDataSourceProvider);
  return GeneralDataRepositoryImpl(remoteDataSource, localDataSource);
}

// ==================== Use Cases ====================

@riverpod
GetGeneralDataUsecase getGeneralDataUsecase(Ref ref) {
  final repository = ref.watch(generalDataRepositoryProvider);
  return GetGeneralDataUsecase(repository);
}

// ==================== State Management ====================

@Riverpod(keepAlive: true)
class GeneralDataNotifier extends _$GeneralDataNotifier {
  @override
  Future<GeneralData?> build() async {
    final usecase = ref.watch(getGeneralDataUsecaseProvider);
    try {
      return await usecase(forceRefresh: false);
    } catch (e, stack) {
      developer.log('Error in GeneralDataNotifier.build()', error: e, stackTrace: stack);
      return null;
    }
  }

  Future<void> fetchGeneralData({bool forceRefresh = false}) async {
    state = const AsyncValue.loading();
    final usecase = ref.read(getGeneralDataUsecaseProvider);

    state = await AsyncValue.guard(() async {
      return await usecase(forceRefresh: forceRefresh);
    });
  }

  Future<void> clearCache() async {
    final repository = ref.read(generalDataRepositoryProvider);
    await repository.clearCache();
    state = const AsyncValue.data(null);
  }
}
