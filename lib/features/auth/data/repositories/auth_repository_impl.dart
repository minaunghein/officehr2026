import 'package:office_hr/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:office_hr/features/auth/domain/entities/auth_user.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';

/// Implementation of [AuthRepository]
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<AuthUser> login({
    required String username,
    required String password,
  }) async {
    final response = await _remoteDataSource.login(
      username: username,
      password: password,
    );

    // Convert response to domain entity
    return AuthUser(
      userId: response.userid,
      accessToken: response.accessToken,
      refreshToken: response.refreshToken,
      tokenType: response.tokenType,
      expiresAt: DateTime.now().add(Duration(seconds: response.expiresIn)),
    );
  }
}
