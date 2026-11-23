import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_card.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_decision_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_status_filter_bar.dart';

import 'package:easy_localization/easy_localization.dart';

/// Approver-facing list of remote clock in/out requests with status filter
/// chips and inline approve/reject actions for pending items.
class ClockRequestsScreen extends HookConsumerWidget {
  const ClockRequestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsAsync = ref.watch(clockRequestsReviewProvider);
    final selectedStatus = useState<ClockRequestStatus?>(null);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Clock Requests'.tr())),
      body: Column(
        children: [
          ClockRequestStatusFilterBar(
            selected: selectedStatus.value,
            onChanged: (status) {
              selectedStatus.value = status;
              ref
                  .read(clockRequestsReviewProvider.notifier)
                  .setStatusFilter(status == null ? const [] : [status]);
            },
          ),
          Expanded(
            child: requestsAsync.when(
              loading: () => ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  ContainerShimmer(height: 150),
                  SizedBox(height: 12),
                  ContainerShimmer(height: 150),
                  SizedBox(height: 12),
                  ContainerShimmer(height: 150),
                ],
              ),
              error: (error, _) => ErrorStateWidget(
                message: getUserFriendlyError(error),
                onRetry: () =>
                    ref.read(clockRequestsReviewProvider.notifier).refresh(),
              ),
              data: (requests) {
                if (requests.isEmpty) {
                  return EmptyStateWidget(
                    icon: Icons.fact_check_outlined,
                    title: 'No clock requests'.tr(),
                    message:
                        'Remote clock in/out requests from your team will appear here.'
                            .tr(),
                    onRefresh: () => ref
                        .read(clockRequestsReviewProvider.notifier)
                        .refresh(),
                    centered: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () =>
                      ref.read(clockRequestsReviewProvider.notifier).refresh(),
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: requests.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final request = requests[index];
                      return ClockRequestCard(
                        request: request,
                        onTap: () => context.push(
                          AppRoutes.clockRequestDetail,
                          extra: ClockRequestRouteArgs(request: request),
                        ),
                        trailing: request.isPending
                            ? _DecisionButtons(request: request)
                            : null,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DecisionButtons extends HookConsumerWidget {
  const _DecisionButtons({required this.request});

  final ClockRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingDecision = useState<ClockRequestDecision?>(null);
    final isDeciding = pendingDecision.value != null;

    Future<void> decide(ClockRequestDecision decision) async {
      final requesterLabel = request.userName.trim().isEmpty
          ? 'this employee'.tr()
          : request.userName.trim();
      final result = await showClockRequestDecisionDialog(
        context,
        decision: decision,
        requesterLabel: requesterLabel,
        punchLabel: request.punchType.label.tr().toLowerCase(),
      );
      if (result == null ||
          !context.mounted ||
          !ref.read(sessionAccessProvider).reviewClock) {
        return;
      }

      pendingDecision.value = result.decision;
      try {
        await ref
            .read(clockRequestsReviewProvider.notifier)
            .decide(request.id, decision: result.decision, note: result.note);
        SnackbarUtils.showSuccess(
          result.decision == ClockRequestDecision.approved
              ? 'Request approved'.tr()
              : 'Request rejected'.tr(),
        );
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) pendingDecision.value = null;
      }
    }

    Widget buttonIcon(
      ClockRequestDecision decision,
      IconData icon,
      Color color,
    ) {
      if (pendingDecision.value != decision) {
        return Icon(icon, size: 16, color: color);
      }
      return SizedBox(
        width: 14,
        height: 14,
        child: CircularProgressIndicator(strokeWidth: 2, color: color),
      );
    }

    // IntrinsicWidth forces both buttons to the width of the wider label, so
    // Reject and Approve always render at the same size.
    return IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton.icon(
            onPressed: isDeciding
                ? null
                : () => decide(ClockRequestDecision.rejected),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFB91C1C),
              disabledForegroundColor: const Color(
                0xFFB91C1C,
              ).withValues(alpha: 0.5),
              side: BorderSide(
                color: const Color(0xFFB91C1C).withValues(alpha: 0.4),
              ),
              visualDensity: VisualDensity.compact,
              minimumSize: const Size(108, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: buttonIcon(
              ClockRequestDecision.rejected,
              Icons.close_rounded,
              const Color(0xFFB91C1C).withValues(alpha: isDeciding ? 0.5 : 1),
            ),
            label: Text('Reject'.tr()),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: isDeciding
                ? null
                : () => decide(ClockRequestDecision.approved),
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF15803D),
              disabledBackgroundColor: const Color(
                0xFF15803D,
              ).withValues(alpha: 0.6),
              visualDensity: VisualDensity.compact,
              minimumSize: const Size(108, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: buttonIcon(
              ClockRequestDecision.approved,
              Icons.check_rounded,
              Colors.white,
            ),
            label: Text('Approve'.tr(), style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
