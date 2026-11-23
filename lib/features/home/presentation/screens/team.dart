import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/team_body.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_action.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/overtime/presentation/providers/overtime_providers.dart';

import 'package:easy_localization/easy_localization.dart';

class TeamScreen extends ConsumerWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(currentUserProvider).value;
    final departmentId = session?.workInfo?.departmentId ?? '';
    final departmentTitle = session?.departmentTitle.trim() ?? '';
    final currentUserId = session?.userId ?? '';
    final access = ref.watch(sessionAccessProvider);

    final quickActions = <TeamQuickAction>[
      if (access.reviewLeave)
        TeamQuickAction(
          icon: Icons.beach_access_outlined,
          label: 'Leave Requests'.tr(),
          badgeCount: ref.watch(pendingLeaveRequestsCountProvider),
          onTap: () => context.push(AppRoutes.leaveRequests),
        ),
      if (access.reviewAmendments)
        TeamQuickAction(
          icon: Icons.edit_calendar_outlined,
          label: 'Attendance Requests'.tr(),
          badgeCount: ref.watch(pendingAmendmentsBadgeCountProvider).value ?? 0,
          onTap: () => context.push(AppRoutes.amendmentRequests),
        ),
      if (access.reviewClock)
        TeamQuickAction(
          icon: Icons.gps_fixed_rounded,
          label: 'Clock Requests'.tr(),
          badgeCount:
              ref.watch(pendingClockRequestsBadgeCountProvider).value ?? 0,
          onTap: () => context.push(AppRoutes.clockRequests),
        ),
      if (access.reviewOvertime)
        TeamQuickAction(
          icon: Icons.timer_outlined,
          label: 'Overtime Requests'.tr(),
          badgeCount: ref.watch(pendingOvertimeRequestsCountProvider),
          onTap: () => context.push(AppRoutes.overtimeRequests),
        ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
          child: TeamBody(
            departmentId: departmentId,
            departmentTitle: departmentTitle,
            currentUserId: currentUserId,
            canViewDetails: access.viewTeamAttendance,
            quickActions: quickActions,
          ),
        ),
      ),
    );
  }
}
