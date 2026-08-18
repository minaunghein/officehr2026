import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login({
    required String username,
    required String password,
  });

  Future<AuthSessionModel> getSession();
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
      '/api/v1/auth/login',
      data: {'username': username, 'password': password},
      parser: (data) => data as Map<String, dynamic>,
    );

    return LoginResponseModel.fromJson(response);
  }

  @override
  Future<AuthSessionModel> getSession() async {
    return await _apiService.get<AuthSessionModel>(
      '/api/v1/auth/session',
      parser: (data) {
        try {
          final envelope = data['data'] ?? data;
          final jsonData = envelope is Map
              ? envelope['session'] ?? envelope
              : envelope;
          return AuthSessionModel.fromJson(
            jsonData is Map<String, dynamic> ? jsonData : <String, dynamic>{},
          );
        } catch (e, stack) {
          AppLogger.e('Error parsing AuthSession: $e', error: e, stack: stack);
          rethrow;
        }
      },
    );
  }
}
