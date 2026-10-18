import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_request_card.dart';

class LeaveRequestsTab extends ConsumerWidget {
  const LeaveRequestsTab({super.key, required this.onRefresh});

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsState = ref.watch(leaveRequestsProvider);

    return requestsState.when(
      data: (requests) {
        if (requests.isEmpty) {
          return EmptyStateWidget(
            icon: Icons.event_note_rounded,
            title: 'No leave requests',
            message: 'Tap the Request button to submit your first leave.',
            onRefresh: onRefresh,
          );
        }
        return RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            itemCount: requests.length,
            itemBuilder: (context, index) {
              final request = requests[index];
              return LeaveRequestCard(
                request: request,
                onTap: () =>
                    context.push(AppRoutes.leaveDetail, extra: request),
              );
            },
          ),
        );
      },
      loading: () => Column(
        children: [
          const SizedBox(height: 16),
          for (int i = 0; i < 3; i++)
            const ContainerShimmer(height: 120, margin: EdgeInsets.all(8)),
        ],
      ),
      error: (error, _) => ErrorStateWidget(
        message: getUserFriendlyError(error),
        onRetry: () => ref.read(leaveRequestsProvider.notifier).refresh(),
      ),
    );
  }
}
