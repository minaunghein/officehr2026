import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';

abstract class UserRemoteDataSource {
  Future<AuthSessionModel> getSession();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final ApiService _apiService;

  UserRemoteDataSourceImpl(this._apiService);

  @override
  Future<AuthSessionModel> getSession() {
    return _apiService.get<AuthSessionModel>(
      '/api/v1/auth/session',
      parser: (data) {
        final envelope = data['data'] ?? data;
        final jsonData = envelope is Map
            ? envelope['session'] ?? envelope
            : envelope;
        return AuthSessionModel.fromJson(
          jsonData is Map<String, dynamic> ? jsonData : <String, dynamic>{},
        );
      },
    );
  }
}
