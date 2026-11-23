import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/presentation/providers/overtime_providers.dart';
import 'package:office_hr/features/overtime/presentation/utils/overtime_formatters.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_decision_dialog.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_request_card.dart';

import 'package:easy_localization/easy_localization.dart';

enum _Filter {
  all('All'),
  pending('Pending'),
  approved('Approved'),
  rejected('Rejected');

  const _Filter(this.label);

  final String label;

  bool matches(OvertimeRequest request) {
    return switch (this) {
      _Filter.all => true,
      _Filter.pending => request.status == OvertimeStatus.pending,
      _Filter.approved => request.status == OvertimeStatus.approved,
      _Filter.rejected => request.status == OvertimeStatus.rejected,
    };
  }
}

/// Manager view of every submitted overtime request, with the current user's
/// own requests hidden (they can't approve/reject themselves). Pending items
/// carry inline approve/reject actions.
class OvertimeApprovalsScreen extends HookConsumerWidget {
  const OvertimeApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = useState(_Filter.pending);
    final requestsAsync = ref.watch(allOvertimeRequestsProvider);
    final currentUserId = ref.watch(currentUserProvider).value?.userId ?? '';

    Future<void> onRefresh() =>
        ref.read(allOvertimeRequestsProvider.notifier).refresh();

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Overtime Requests'.tr())),
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
            child: requestsAsync.when(
              loading: () => ListView(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                children: const [
                  ContainerShimmer(height: 150),
                  SizedBox(height: 12),
                  ContainerShimmer(height: 150),
                ],
              ),
              error: (error, _) => ErrorStateWidget(
                message: getUserFriendlyError(error),
                onRetry: onRefresh,
              ),
              data: (requests) {
                final others = requests
                    .where((request) => request.userId != currentUserId)
                    .toList();
                final sorted = [...others]
                  ..sort((a, b) {
                    if (a.isPending != b.isPending) return a.isPending ? -1 : 1;
                    return 0;
                  });
                final visible = sorted.where(filter.value.matches).toList();

                if (visible.isEmpty) {
                  return EmptyStateWidget(
                    icon: Icons.bolt_outlined,
                    title: 'No {filter} requests'.tr(
                      namedArgs: {
                        'filter': filter.value.label.tr().toLowerCase(),
                      },
                    ),
                    message: others.isNotEmpty
                        ? 'Try a different filter.'.tr()
                        : 'Overtime requests from your team will show up here.'
                              .tr(),
                    onRefresh: onRefresh,
                    centered: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: onRefresh,
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                    itemCount: visible.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final request = visible[index];
                      return OvertimeRequestCard(
                        request: request,
                        showRequester: true,
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

  final OvertimeRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingDecision = useState<OvertimeDecision?>(null);
    final isDeciding = pendingDecision.value != null;

    Future<void> decide(OvertimeDecision decision) async {
      final result = await showOvertimeDecisionDialog(
        context,
        decision: decision,
        requesterLabel: request.requesterLabel,
        defaultHours: overtimeRequestedHours(
          request.startTime,
          request.endTime,
        ),
      );
      if (result == null ||
          !context.mounted ||
          !ref.read(sessionAccessProvider).reviewOvertime) {
        return;
      }

      pendingDecision.value = decision;
      try {
        await ref
            .read(updateOvertimeStatusProvider.notifier)
            .act(
              request.id,
              decision: decision,
              approvedHours: result.approvedHours,
              reason: result.note,
            );
        await ref.read(allOvertimeRequestsProvider.notifier).refresh();
        SnackbarUtils.showSuccess(
          decision == OvertimeDecision.approved
              ? 'Overtime approved'.tr()
              : 'Overtime rejected'.tr(),
        );
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) pendingDecision.value = null;
      }
    }

    Widget iconFor(OvertimeDecision decision, IconData icon, Color color) {
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
                : () => decide(OvertimeDecision.rejected),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFB91C1C),
              side: BorderSide(
                color: const Color(0xFFB91C1C).withValues(alpha: 0.4),
              ),
              visualDensity: VisualDensity.compact,
              minimumSize: const Size(108, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: iconFor(
              OvertimeDecision.rejected,
              Icons.close_rounded,
              const Color(0xFFB91C1C),
            ),
            label: Text('Reject'.tr()),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: isDeciding
                ? null
                : () => decide(OvertimeDecision.approved),
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF15803D),
              visualDensity: VisualDensity.compact,
              minimumSize: const Size(108, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: iconFor(
              OvertimeDecision.approved,
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
