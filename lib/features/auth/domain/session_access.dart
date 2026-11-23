import 'package:office_hr/features/auth/domain/entities/auth_session.dart';

/// Ordered API scopes. The server determines which rows belong to a scope.
enum PermissionScope { own, subordinates, department, company, all }

class SessionAccess {
  const SessionAccess(this.session);

  final AuthSession? session;

  PermissionScope? scopeFor(String resource, String action) {
    final current = session;
    if (current == null) return null;
    if (current.role.isPlatform) return PermissionScope.all;

    PermissionScope? strongest;
    for (final grant in current.permissions) {
      if (!(grant.resource == resource &&
              (grant.action == action || grant.action == '*')) &&
          !(grant.resource == '*' && grant.action == '*')) {
        continue;
      }
      final scope = switch (grant.scope) {
        'own' => PermissionScope.own,
        'subordinates' => PermissionScope.subordinates,
        'department' => PermissionScope.department,
        'company' => PermissionScope.company,
        // Unknown scopes and non-platform `all` are never treated as grants.
        _ => null,
      };
      if (scope != null &&
          (strongest == null || scope.index > strongest.index)) {
        strongest = scope;
      }
    }
    return strongest;
  }

  bool allows(
    String resource,
    String action, {
    PermissionScope atLeast = PermissionScope.own,
  }) => (scopeFor(resource, action)?.index ?? -1) >= atLeast.index;

  bool _allowsTeam(String resource, String action) =>
      allows(resource, action, atLeast: PermissionScope.subordinates);

  bool get viewPunches => allows('punch', 'view');
  bool get createPunch => allows('punch', 'create');
  bool get requestClock => allows('punch', 'request');
  bool get viewOwnClockRequests => requestClock;
  bool get reviewClock => _allowsTeam('punch', 'approve');
  bool get amendPunch => allows('punch', 'update');
  bool get reviewAmendments =>
      viewTeamAttendance && _allowsTeam('punch', 'update');
  bool get attendanceRequests => viewPunches || amendPunch || requestClock;
  bool get viewTeamAttendance => _allowsTeam('punch', 'view');
  bool get viewProfile => allows('employee', 'view');
  bool get editProfile => allows('employee', 'update');
  bool get viewOtherEmployees => _allowsTeam('employee', 'view');
  bool get viewCompany =>
      allows('company', 'view', atLeast: PermissionScope.company);
  bool get viewAnnouncements =>
      allows('announcement', 'view', atLeast: PermissionScope.company);
  bool get viewPayslips => allows('payroll', 'view');
  bool get viewLeave => allows('leave', 'view');
  bool get createLeave => allows('leave', 'create');
  bool get reviewLeave =>
      _allowsTeam('leave', 'view') && _allowsTeam('leave', 'approve');
  bool get viewOvertime => allows('overtime', 'view');
  bool get createOvertime => allows('overtime', 'create');
  bool get reviewOvertime =>
      _allowsTeam('overtime', 'view') && _allowsTeam('overtime', 'approve');
  bool get team =>
      viewTeamAttendance ||
      viewOtherEmployees ||
      reviewLeave ||
      reviewAmendments ||
      reviewClock ||
      reviewOvertime;

  bool isOwnUser(String userId) =>
      userId.isNotEmpty && userId == session?.userId;
  bool isOwnEmployee(String employeeId) =>
      employeeId.isNotEmpty && employeeId == session?.employee?.id;
  bool canViewUser(String userId) =>
      userId.isNotEmpty &&
      (viewOtherEmployees || (viewProfile && isOwnUser(userId)));
}
