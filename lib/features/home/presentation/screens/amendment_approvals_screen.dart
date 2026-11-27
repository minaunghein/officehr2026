import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/screens/attendance_amendment_detail.dart';
import 'package:office_hr/features/home/presentation/widgets/amendment_decision_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_card.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';

import 'package:easy_localization/easy_localization.dart';

enum _Filter {
  all('All', []),
  pending('Pending', ['PENDING']),
  approved('Approved', ['APPROVED']),
  rejected('Rejected', ['REJECTED']);

  const _Filter(this.label, this.statuses);

  final String label;
  final List<String> statuses;
}

/// Reviewer-facing list of attendance amendment (clock correction) requests
/// from the team, with the current user's own requests hidden (they can't
/// approve/reject themselves). Pending items carry inline approve/reject
/// actions.
class AmendmentApprovalsScreen extends HookConsumerWidget {
  const AmendmentApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(sessionAccessProvider);
    final filter = useState(_Filter.pending);
    final amendmentsAsync = ref.watch(amendmentApprovalsProvider);

    Future<void> onRefresh() =>
        ref.read(amendmentApprovalsProvider.notifier).refresh();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Attendance Requests'.tr()),
      ),
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
                  onSelected: (_) {
                    filter.value = option;
                    ref
                        .read(amendmentApprovalsProvider.notifier)
                        .setStatusFilter(option.statuses);
                  },
                );
              },
            ),
          ),
          Expanded(
            child: amendmentsAsync.when(
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
              data: (amendments) {
                if (amendments.isEmpty) {
                  return EmptyStateWidget(
                    icon: Icons.edit_calendar_outlined,
                    title: 'No {filter} requests'.tr(
                      namedArgs: {
                        'filter': filter.value.label.tr().toLowerCase(),
                      },
                    ),
                    message:
                        'Attendance amendment requests from your team will appear here.'
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
                    itemCount: amendments.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final amendment = amendments[index];
                      final isPending =
                          amendment.status.toUpperCase() == 'PENDING';
                      return AttendanceAmendmentCard(
                        amendment: amendment,
                        showRequester: true,
                        onTap: appRouteTap(
                          context,
                          access,
                          AppRoutes.attendanceAmendmentDetail,
                          extra: AttendanceAmendmentRouteArgs(
                            amendment: amendment,
                            canApprove: true,
                          ),
                        ),
                        trailing: isPending
                            ? _DecisionButtons(amendment: amendment)
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
  const _DecisionButtons({required this.amendment});

  final AttendanceAmendment amendment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingStatus = useState<String?>(null);
    final access = ref.watch(sessionAccessProvider);
    final disabled =
        pendingStatus.value != null ||
        !access.reviewAmendments ||
        access.isOwnUser(amendment.userId);

    Future<void> decide(bool approve) async {
      final requesterLabel = amendment.requesterName.trim().isEmpty
          ? 'this employee'.tr()
          : amendment.requesterName.trim();
      final result = await showAmendmentDecisionDialog(
        context,
        isApprove: approve,
        requesterLabel: requesterLabel,
        typeLabel: attendanceStatusLabel(amendment.amendmentType),
      );
      if (result == null ||
          !context.mounted ||
          !ref.read(sessionAccessProvider).reviewAmendments) {
        return;
      }

      pendingStatus.value = result.status;
      try {
        await ref
            .read(amendmentApprovalsProvider.notifier)
            .decide(
              amendment.id,
              status: result.status,
              rejectionReason: result.reason,
            );
        SnackbarUtils.showSuccess(
          approve ? 'Request approved'.tr() : 'Request rejected'.tr(),
        );
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) pendingStatus.value = null;
      }
    }

    Widget buttonIcon(String status, IconData icon, Color color) {
      if (pendingStatus.value != status) {
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
            onPressed: disabled ? null : () => decide(false),
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
              'REJECTED',
              Icons.close_rounded,
              const Color(0xFFB91C1C).withValues(alpha: disabled ? 0.5 : 1),
            ),
            label: Text('Reject'.tr()),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: disabled ? null : () => decide(true),
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
            icon: buttonIcon('APPROVED', Icons.check_rounded, Colors.white),
            label: Text('Approve'.tr(), style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
