import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/repository/user_repository.dart';

class GetUserDetailsUseCase {
  final UserRepository _userRepository;

  GetUserDetailsUseCase(this._userRepository);

  Future<UserDetails> call() async {
    return await _userRepository.getUserDetails();
  }
}
