import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/presentation/widgets/team_body.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_action.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_actions.dart';

class TeamScreen extends ConsumerWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(currentUserProvider).value;
    final departmentId = session?.workInfo?.departmentId ?? '';
    final departmentTitle = session?.departmentTitle.trim() ?? '';
    final currentUserId = session?.userId ?? '';
    final roleName = session?.role.name.trim().toLowerCase() ?? '';
    final canScan = roleName.isNotEmpty && roleName != 'employee';
    final canViewDetails = canScan;

    final quickActions = <TeamQuickAction>[
      TeamQuickAction(
        icon: Icons.beach_access_outlined,
        label: 'Leave Requests',
        onTap: () => SnackbarUtils.showInfo('Leave requests are coming soon.'),
      ),
      TeamQuickAction(
        icon: Icons.edit_calendar_outlined,
        label: 'Attendance Requests',
        onTap: () =>
            SnackbarUtils.showInfo('Attendance requests are coming soon.'),
      ),
      TeamQuickAction(
        icon: Icons.more_time_rounded,
        label: 'Overtime Requests',
        onTap: () =>
            SnackbarUtils.showInfo('Overtime requests are coming soon.'),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TeamBody(
                  departmentId: departmentId,
                  departmentTitle: departmentTitle,
                  currentUserId: currentUserId,
                  canViewDetails: canViewDetails,
                ),
              ),
              if (canScan) ...[
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TeamQuickActions(actions: quickActions),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: () => context.push(AppRoutes.qrScanner),
                      icon: const Icon(Icons.qr_code_scanner_rounded),
                      label: const Text('Scan Staff ID Card'),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
