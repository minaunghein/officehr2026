import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login({
    required String username,
    required String password,
  });
}

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
