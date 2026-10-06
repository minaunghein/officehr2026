import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/domain/repository/user_repository.dart';

class GetSessionUseCase {
  final UserRepository _userRepository;

  GetSessionUseCase(this._userRepository);

  Future<AuthSession> call() => _userRepository.getSession();
}
