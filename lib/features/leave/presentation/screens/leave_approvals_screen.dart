import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/screens/leave_request_detail_screen.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_approval_card.dart';

import 'package:easy_localization/easy_localization.dart';

enum _Filter {
  all('All'),
  pending('Pending'),
  approved('Approved'),
  rejected('Rejected');

  const _Filter(this.label);

  final String label;

  bool matches(LeaveRequest request) {
    switch (this) {
      case _Filter.all:
        return true;
      case _Filter.pending:
        return request.status == LeaveStatus.pending;
      case _Filter.approved:
        return request.status == LeaveStatus.approved;
      case _Filter.rejected:
        return request.status == LeaveStatus.rejected;
    }
  }
}

/// Manager view of every submitted leave request with status filters. Opening
/// a pending item leads to the detail screen where it can be approved/rejected.
class LeaveApprovalsScreen extends HookConsumerWidget {
  const LeaveApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = useState(_Filter.pending);
    final requestsAsync = ref.watch(allLeaveRequestsProvider);
    final currentUserId = ref.watch(currentUserProvider).value?.userId ?? '';

    Future<void> onRefresh() =>
        ref.read(allLeaveRequestsProvider.notifier).refresh();

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Leave Requests'.tr())),
      body: Column(
        children: [
          SizedBox(
            height: 52,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: _Filter.values.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final option = _Filter.values[index];
                return ChoiceChip(
                  label: Text(option.label.tr()),
                  selected: option == filter.value,
                  onSelected: (_) => filter.value = option,
                );
              },
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: onRefresh,
              child: requestsAsync.when(
                data: (requests) {
                  final others = requests
                      .where((r) => r.requesterId != currentUserId)
                      .toList();
                  final visible = others.where(filter.value.matches).toList();
                  if (visible.isEmpty) {
                    return _EmptyView(
                      filter: filter.value,
                      hasAny: others.isNotEmpty,
                      onRefresh: onRefresh,
                    );
                  }
                  return ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                    itemCount: visible.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final request = visible[index];
                      return LeaveApprovalCard(
                        request: request,
                        onTap: () => context.push(
                          AppRoutes.leaveDetail,
                          extra: LeaveRequestRouteArgs(
                            request: request,
                            canApprove: true,
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => ListView(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (int i = 0; i < 5; i++) ...[
                      const ContainerShimmer(height: 150),
                      const SizedBox(height: 12),
                    ],
                  ],
                ),
                error: (error, _) => ErrorStateWidget(
                  message: getUserFriendlyError(error),
                  onRetry: onRefresh,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView({
    required this.filter,
    required this.hasAny,
    required this.onRefresh,
  });

  final _Filter filter;
  final bool hasAny;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.event_available_outlined,
                size: 56,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
              ),
              const SizedBox(height: 14),
              Text(
                'No {filter} requests'.tr(
                  namedArgs: {'filter': filter.label.tr().toLowerCase()},
                ),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                hasAny
                    ? 'Try a different filter.'.tr()
                    : 'New leave requests will show up here.'.tr(),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
