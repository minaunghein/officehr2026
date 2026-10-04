import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/domain/entities/user_details.dart';

abstract class UserRepository {
  Future<AuthSession> getSession();

  Future<UserDetails> getUserById(String id);
}
