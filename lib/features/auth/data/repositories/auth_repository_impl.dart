import 'package:office_hr/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/login_response.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<LoginResponse> login({
    required String username,
    required String password,
  }) async {
    final response = await _remoteDataSource.login(
      username: username,
      password: password,
    );

    return response.toEntity();
  }

  @override
  Future<AuthSession> getSession() async {
    final response = await _remoteDataSource.getSession();
    return response.toEntity();
  }
}
