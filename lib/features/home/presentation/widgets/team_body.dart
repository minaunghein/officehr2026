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

class TeamBody extends ConsumerWidget {
  const TeamBody({
    super.key,
    required this.departmentId,
    required this.departmentTitle,
    required this.currentUserId,
    required this.canViewDetails,
  });

  final String departmentId;
  final String departmentTitle;
  final String currentUserId;
  final bool canViewDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (departmentId.isEmpty) {
      return const EmptyStateWidget(
        icon: Icons.groups_2_outlined,
        title: 'No department assigned',
        message: 'Your department information is not available yet.',
        padding: EdgeInsets.fromLTRB(0, 0, 0, 96),
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
          return EmptyStateWidget(
            icon: Icons.groups_2_outlined,
            title: 'No attendance yet',
            message: 'Today\'s team attendance has not been recorded yet.',
            onRefresh: refresh,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 96),
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
              const SizedBox(height: 20),
              Text(
                'Members',
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
          const SizedBox(height: 20),
          for (int i = 0; i < 4; i++) ...[
            const ContainerShimmer(height: 120),
            const SizedBox(height: 12),
          ],
        ],
      ),
      error: (error, _) => ErrorStateWidget(
        message: getUserFriendlyError(error),
        onRetry: refresh,
      ),
    );
  }
}
