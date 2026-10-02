import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/change_password_result.dart';
import 'package:office_hr/features/auth/domain/entities/login_response.dart';

abstract class AuthRepository {
  Future<LoginResponse> login({
    required String username,
    required String password,
  });

  Future<AuthSession> getSession();

  Future<ChangePasswordResult> changePassword({
    required String oldPassword,
    required String newPassword,
  });
}
