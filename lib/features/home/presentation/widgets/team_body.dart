import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/team_attendance_summary.dart';
import 'package:office_hr/features/home/presentation/widgets/team_member_card.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_action.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_actions.dart';

import 'package:easy_localization/easy_localization.dart';

class TeamBody extends ConsumerWidget {
  const TeamBody({
    super.key,
    required this.departmentId,
    required this.departmentTitle,
    required this.currentUserId,
    required this.canViewDetails,
    this.quickActions = const [],
  });

  final String departmentId;
  final String departmentTitle;
  final String currentUserId;
  final bool canViewDetails;
  final List<TeamQuickAction> quickActions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!canViewDetails || departmentId.isEmpty && quickActions.isNotEmpty) {
      return ListView(
        children: [
          if (quickActions.isNotEmpty) TeamQuickActions(actions: quickActions),
        ],
      );
    }
    if (departmentId.isEmpty) {
      return EmptyStateWidget(
        icon: Icons.groups_2_outlined,
        title: 'No department assigned'.tr(),
        message: 'Your department information is not available yet.'.tr(),
        centered: true,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      );
    }

    final teamState = ref.watch(
      departmentTodayAttendanceProvider(departmentId),
    );

    Future<void> refresh() async {
      ref.invalidate(departmentTodayAttendanceProvider(departmentId));
      await ref.read(departmentTodayAttendanceProvider(departmentId).future);
    }

    return teamState.when(
      data: (records) {
        final visibleRecords = currentUserId.isEmpty
            ? records
            : records
                  .where((record) => record.userId != currentUserId)
                  .toList();
        if (visibleRecords.isEmpty) {
          return Column(
            children: [
              if (quickActions.isNotEmpty) ...[
                TeamQuickActions(actions: quickActions),
                const SizedBox(height: 8),
              ],
              Expanded(
                child: EmptyStateWidget(
                  icon: Icons.groups_2_outlined,
                  title: 'No attendance yet'.tr(),
                  message: 'Today\'s team attendance has not been recorded yet.'
                      .tr(),
                  onRefresh: refresh,
                  centered: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                ),
              ),
            ],
          );
        }
        return RefreshIndicator(
          onRefresh: refresh,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 24),
            children: [
              TeamAttendanceSummary(
                records: visibleRecords,
                departmentTitle: departmentTitle,
              ),
              if (quickActions.isNotEmpty) ...[
                const SizedBox(height: 12),
                TeamQuickActions(actions: quickActions),
              ],
              const SizedBox(height: 20),
              Text(
                'Members'.tr(),
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              for (final record in visibleRecords)
                TeamMemberCard(
                  attendance: record,
                  onTap: canViewDetails && record.id.isNotEmpty
                      ? () => context.push(
                          AppRoutes.teamMemberAttendance,
                          extra: record,
                        )
                      : null,
                ),
            ],
          ),
        );
      },
      loading: () => ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const ContainerShimmer(height: 150),
          if (quickActions.isNotEmpty) ...[
            const SizedBox(height: 12),
            const ContainerShimmer(height: 92),
          ],
          const SizedBox(height: 20),
          for (int i = 0; i < 4; i++) ...[
            const ContainerShimmer(height: 120),
            const SizedBox(height: 12),
          ],
        ],
      ),
      error: (error, _) => Column(
        children: [
          if (quickActions.isNotEmpty) TeamQuickActions(actions: quickActions),
          Expanded(
            child: ErrorStateWidget(
              message: getUserFriendlyError(error),
              onRetry: refresh,
            ),
          ),
        ],
      ),
    );
  }
}
