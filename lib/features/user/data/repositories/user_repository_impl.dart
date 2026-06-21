import 'package:office_hr/features/user/data/datasources/user_remote_datasource.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userRemoteDataSource);

  @override
  Future<UserDetails> getUserDetails() async {
    return _userRemoteDataSource.getUserDetails();
  }

  @override
  Future<Shift> getShift() async {
    return _userRemoteDataSource.getShift();
  }

  @override
  Future<Branch> getBranch() async {
    return _userRemoteDataSource.getBranch();
  }
}
