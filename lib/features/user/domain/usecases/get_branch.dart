import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/repository/user_repository.dart';

class GetBranchUseCase {
  final UserRepository _userRepository;

  GetBranchUseCase(this._userRepository);

  Future<Branch> call() async {
    return await _userRepository.getBranch();
  }
}
