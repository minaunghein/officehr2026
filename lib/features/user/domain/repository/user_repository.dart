import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';

abstract class UserRepository {
  Future<UserDetails> getUserDetails();
  Future<Shift> getShift();
  Future<Branch> getBranch();
}
