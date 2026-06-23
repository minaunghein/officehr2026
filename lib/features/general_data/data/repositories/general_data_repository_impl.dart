import 'package:office_hr/features/general_data/data/datasources/general_data_local_datasource.dart';
import 'package:office_hr/features/general_data/data/datasources/general_data_remote_datasource.dart';
import 'package:office_hr/features/general_data/data/mappers/general_data_mapper.dart';
import 'package:office_hr/features/general_data/domain/entities/general_data.dart';
import 'package:office_hr/features/general_data/domain/repositories/general_data_repository.dart';

class GeneralDataRepositoryImpl implements GeneralDataRepository {
  final GeneralDataRemoteDataSource _remoteDataSource;
  final GeneralDataLocalDataSource _localDataSource;

  GeneralDataRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<GeneralData> getGeneralData() async {
    final response = await _remoteDataSource.getGeneralData();
    final entity = response.data.toEntity();

    await _localDataSource.cacheGeneralData(response.data);

    return entity;
  }

  @override
  Future<GeneralData?> getCachedGeneralData() async {
    final cachedModel = await _localDataSource.getCachedGeneralData();
    return cachedModel?.toEntity();
  }

  @override
  Future<void> cacheGeneralData(GeneralData data) async {
    throw UnimplementedError('Use getGeneralData to cache data automatically');
  }

  @override
  Future<void> clearCache() async {
    await _localDataSource.clearCache();
  }
}
