import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/repositories/auth_repository.dart';

class GetSessionUseCase {
  final AuthRepository _authRepository;

  GetSessionUseCase(this._authRepository);

  Future<AuthSession> call() async {
    return await _authRepository.getSession();
  }
}
