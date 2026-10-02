import 'package:office_hr/features/auth/domain/entities/change_password_result.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';

class ChangePasswordUsecase {
  final AuthRepository _repository;

  ChangePasswordUsecase(this._repository);

  Future<ChangePasswordResult> call({
    required String oldPassword,
    required String newPassword,
  }) {
    return _repository.changePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }
}
