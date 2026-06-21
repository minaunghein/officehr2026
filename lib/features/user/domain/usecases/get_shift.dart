import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/repository/user_repository.dart';

class GetShiftUseCase {
  final UserRepository _userRepository;

  GetShiftUseCase(this._userRepository);

  Future<Shift> call() async {
    return await _userRepository.getShift();
  }
}
