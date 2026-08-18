import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/assignment/assignment.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/employee/employee.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/permission/permission.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/role/role.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/user/user.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/work_info/work_info.dart';

part 'auth_session.freezed.dart';

@freezed
abstract class AuthSession with _$AuthSession {
  const AuthSession._();

  const factory AuthSession({
    required User user,
    required Company activeCompany,
    required List<Company> companies,
    required List<Assignment> assignments,
    required Role role,
    required List<Permission> permissions,
  }) = _AuthSession;

  String get userId => user.id;
  String get username => user.username;
  String get email => user.email;
  String get profileUrl => '';
  String get companyId => activeCompany.id;
  String get companyName => activeCompany.name;
  Employee? get employee => user.employee;
  WorkInfo? get workInfo => user.employee?.workInfo;

  String get displayName {
    final firstName = user.employee?.basicInfo.firstName.trim() ?? '';
    final lastName = user.employee?.basicInfo.lastName.trim() ?? '';
    final fullName = [
      firstName,
      lastName,
    ].where((part) => part.isNotEmpty).join(' ').trim();
    if (fullName.isNotEmpty) return fullName;
    if (username.trim().isNotEmpty) return username;
    if (email.trim().isNotEmpty) return email;
    return 'Unknown User';
  }

  String get positionTitle {
    final title = workInfo?.position?.title.trim() ?? '';
    if (title.isNotEmpty) return title;
    if (role.name.trim().isNotEmpty) return role.name;
    return 'No Position';
  }

  String get departmentTitle {
    final title = workInfo?.department?.title.trim() ?? '';
    return title.isEmpty ? 'No Department' : title;
  }

  String? get employeeCode {
    final code = workInfo?.employeeCode.trim() ?? '';
    return code.isEmpty ? null : code;
  }
}
