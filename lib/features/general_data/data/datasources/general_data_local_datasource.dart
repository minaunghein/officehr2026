import 'dart:convert';
import 'dart:developer' as developer;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:office_hr/features/general_data/data/models/general_data_model.dart';

abstract class GeneralDataLocalDataSource {
  Future<GeneralDataModel?> getCachedGeneralData();
  Future<void> cacheGeneralData(GeneralDataModel data);
  Future<void> clearCache();
}

class GeneralDataLocalDataSourceImpl implements GeneralDataLocalDataSource {
  final Box _box;
  static const String _generalDataKey = 'cached_general_data';

  GeneralDataLocalDataSourceImpl(this._box);

  @override
  Future<GeneralDataModel?> getCachedGeneralData() async {
    try {
      final hasData = _box.containsKey(_generalDataKey);
      if (!hasData) {
        developer.log('Hive check: No key "$_generalDataKey" exists in Hive box.');
        return null;
      }

      final jsonString = _box.get(_generalDataKey) as String?;
      if (jsonString == null) {
        developer.log('Hive check: Key "$_generalDataKey" exists but value is null.');
        return null;
      }

      developer.log('Hive check: Found JSON string in Hive. Decoding...');
      final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
      final model = GeneralDataModel.fromJson(jsonMap);
      developer.log('Hive check: Cached general data parsed successfully and is not null.');
      return model;
    } catch (e, stack) {
      developer.log('Hive check error: Failed to parse cached general data.', error: e, stackTrace: stack);
      return null;
    }
  }

  @override
  Future<void> cacheGeneralData(GeneralDataModel data) async {
    try {
      final jsonString = jsonEncode(data.toJson());
      await _box.put(_generalDataKey, jsonString);
      
      // Verify caching success
      final hasData = _box.containsKey(_generalDataKey);
      final cachedVal = _box.get(_generalDataKey) as String?;
      if (hasData && cachedVal != null) {
        developer.log('Hive check: General data successfully cached in Hive and verified (not null).');
      } else {
        developer.log('Hive check warning: Caching general data in Hive may have failed. Key exists: $hasData, Value: $cachedVal');
      }
    } catch (e, stack) {
      developer.log('Hive check error: Failed to cache general data.', error: e, stackTrace: stack);
    }
  }

  @override
  Future<void> clearCache() async {
    await _box.delete(_generalDataKey);
  }
}
