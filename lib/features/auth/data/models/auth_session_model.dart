import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/user_models/assignment/assignment_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/company/company_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/permission/permission_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/role/role_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/user/user_model.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';

part 'auth_session_model.freezed.dart';
part 'auth_session_model.g.dart';

@freezed
abstract class AuthSessionModel with _$AuthSessionModel {
  const AuthSessionModel._();

  const factory AuthSessionModel({
    @Default(UserModel()) UserModel user,
    @JsonKey(name: 'active_company')
    @Default(CompanyModel())
    CompanyModel activeCompany,
    @Default(<CompanyModel>[]) List<CompanyModel> companies,
    @Default(<AssignmentModel>[]) List<AssignmentModel> assignments,
    @Default(RoleModel()) RoleModel role,
    @Default(<PermissionModel>[]) List<PermissionModel> permissions,
  }) = _AuthSessionModel;

  factory AuthSessionModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionModelFromJson(json);

  AuthSession toEntity() => AuthSession(
    user: user.toEntity(),
    activeCompany: activeCompany.toEntity(),
    companies: companies.map((company) => company.toEntity()).toList(),
    assignments: assignments.map((item) => item.toEntity()).toList(),
    role: role.toEntity(),
    permissions: permissions.map((item) => item.toEntity()).toList(),
  );
}
