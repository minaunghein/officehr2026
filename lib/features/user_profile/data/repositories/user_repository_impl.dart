import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/data/datasources/user_remote_datasource.dart';
import 'package:office_hr/features/user_profile/domain/entities/user_details.dart';
import 'package:office_hr/features/user_profile/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userRemoteDataSource);

  @override
  Future<AuthSession> getSession() async {
    final model = await _userRemoteDataSource.getSession();
    return model.toEntity();
  }

  @override
  Future<UserDetails> getUserById(String id) {
    return _userRemoteDataSource.getUserById(id);
  }
}
