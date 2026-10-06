import 'package:office_hr/features/auth/domain/entities/user_entities/role/role.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/user/user.dart';

class UserDetails {
  const UserDetails({required this.user, this.role});

  final User user;
  final Role? role;

  String get id => user.id;
  String get username => user.username;
  String get email => user.email;

  bool get isEmployee {
    final name = role?.name.trim().toLowerCase() ?? '';
    return name.isEmpty || name == 'employee';
  }
}
