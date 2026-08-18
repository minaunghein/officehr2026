import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/user_models/employee/employee_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/user/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @Default('') String id,
    @Default('') String username,
    @Default('') String email,
    EmployeeModel? employee,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
    id: id,
    username: username,
    email: email,
    employee: employee?.toEntity(),
  );
}
