import 'package:office_hr/features/auth/domain/entities/auth_session.dart';

abstract class UserRepository {
  Future<AuthSession> getSession();
}
