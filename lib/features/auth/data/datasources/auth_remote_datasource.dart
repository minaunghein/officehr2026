import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';

/// Abstract datasource for remote authentication operations
abstract class AuthRemoteDataSource {
  /// Login user with username and password
  ///
  /// Throws [Exception] if login fails
  Future<LoginResponseModel> login({
    required String username,
    required String password,
  });
}

/// Implementation of [AuthRemoteDataSource]
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService _apiService;

  AuthRemoteDataSourceImpl(this._apiService);

  @override
  Future<LoginResponseModel> login({
    required String username,
    required String password,
  }) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/users/login',
      data: {'username': username, 'password': password},
      parser: (data) => data as Map<String, dynamic>,
    );

    return LoginResponseModel.fromJson(response);
  }
}
