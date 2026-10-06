import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/role/role_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/user/user_model.dart';
import 'package:office_hr/features/user_profile/domain/entities/user_details.dart';

abstract class UserRemoteDataSource {
  Future<AuthSessionModel> getSession();

  Future<UserDetails> getUserById(String id);
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

  @override
  Future<UserDetails> getUserById(String id) {
    return _apiService.get<UserDetails>(
      '/api/v1/users/$id',
      parser: (data) {
        final envelope = data['data'] ?? data;
        final map = envelope is Map
            ? Map<String, dynamic>.from(envelope)
            : <String, dynamic>{};

        final role = map['role'];
        return UserDetails(
          user: UserModel.fromJson(map).toEntity(),
          role: role is Map
              ? RoleModel.fromJson(Map<String, dynamic>.from(role)).toEntity()
              : null,
        );
      },
    );
  }
}
