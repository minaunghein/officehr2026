import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/user/data/models/branch_model.dart';
import 'package:office_hr/features/user/data/models/shift_model.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/data/mappers/user_details_mapper.dart';

abstract class UserRemoteDataSource {
  Future<UserDetails> getUserDetails();
  Future<Shift> getShift();
  Future<Branch> getBranch();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final ApiService _apiService;

  UserRemoteDataSourceImpl(this._apiService);

  @override
  Future<UserDetails> getUserDetails() async {
    final response = await _apiService.get<UserDetailsModel>(
      '/api/v1/users/info',
      parser: (data) {
        try {
          final jsonData = data['data'] ?? data;
          return UserDetailsModel.fromJson(jsonData);
        } catch (e, stack) {
          AppLogger.e('Error parsing UserDetails: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
    return response.toEntity();
  }

  @override
  Future<Shift> getShift() async {
    final response = await _apiService.get<ShiftModel>(
      '/api/v1/users/shift',
      parser: (data) {
        try {
          final jsonData = data['data'] ?? data;
          return ShiftModel.fromJson(jsonData);
        } catch (e, stack) {
          AppLogger.e('Error parsing Shift: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
    return response.toEntity();
  }

  @override
  Future<Branch> getBranch() async {
    final response = await _apiService.get<BranchModel>(
      '/api/v1/users/branch',
      parser: (data) {
        try {
          final jsonData = data['data'] ?? data;
          return BranchModel.fromJson(jsonData);
        } catch (e, stack) {
          AppLogger.e('Error parsing Branch: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
    return response.toEntity();
  }
}
