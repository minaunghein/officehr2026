import 'package:office_hr/features/auth/domain/entities/auth_user.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase(this._repository);

  Future<AuthUser> call({required String username, required String password}) {
    return _repository.login(username: username, password: password);
  }
}
