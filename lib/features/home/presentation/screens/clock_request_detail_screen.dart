import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/home/presentation/utils/clock_request_formatters.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_cancel_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_decision_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_location_map.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_status_chip.dart';
import 'package:office_hr/shared/date_formatter.dart';

import 'package:easy_localization/easy_localization.dart';

/// Details for a remote clock in/out request: punch location on a map,
/// request/location/reason details, and approve/reject actions for reviewers
/// or a cancel action for the owner while the request is pending.
class ClockRequestDetailScreen extends HookConsumerWidget {
  const ClockRequestDetailScreen({
    super.key,
    required this.initial,
    this.canDecide = true,
  });

  final ClockRequest initial;
  final bool canDecide;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final request = useState(initial);
    final isSubmitting = useState(false);

    Future<void> decide(ClockRequestDecision decision) async {
      final requesterLabel = request.value.userName.trim().isEmpty
          ? 'this employee'.tr()
          : request.value.userName.trim();
      final result = await showClockRequestDecisionDialog(
        context,
        decision: decision,
        requesterLabel: requesterLabel,
        punchLabel: request.value.punchType.label.tr().toLowerCase(),
      );
      if (result == null || !context.mounted) return;

      isSubmitting.value = true;
      try {
        final decided = await ref.read(decideClockRequestUsecaseProvider)(
          request.value.id,
          decision: result.decision,
          note: result.note,
        );
        request.value = decided;
        ref.invalidate(clockRequestsReviewProvider);
        ref.invalidate(pendingClockRequestsBadgeCountProvider);
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
        if (context.mounted) isSubmitting.value = false;
      }
    }

    Future<void> cancel() async {
      final result = await showClockRequestCancelDialog(
        context,
        punchLabel: request.value.punchType.label.tr().toLowerCase(),
      );
      if (result == null || !context.mounted) return;

      isSubmitting.value = true;
      try {
        final cancelled = await ref
            .read(myClockRequestsProvider.notifier)
            .cancel(request.value.id, note: result.note);
        request.value = cancelled;
        SnackbarUtils.showSuccess('Request cancelled'.tr());
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) isSubmitting.value = false;
      }
    }

    final current = request.value;
    final hasCoordinates =
        current.latitude != null && current.longitude != null;

    return Scaffold(
      appBar: AppBar(title: Text('Request Details'.tr()), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      current.userName.trim().isEmpty
                          ? 'Employee'.tr()
                          : current.userName.trim(),
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${current.punchType.label.tr()} · ${formatDateId(current.dateId)} · ${formatPunchTime(current.punchTime)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              ClockRequestStatusChip(status: current.status),
            ],
          ),
          const SizedBox(height: 16),
          ClockRequestLocationMap(request: current),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'REQUEST'.tr(),
            icon: Icons.fact_check_outlined,
            children: [
              if (current.branchTitle.isNotEmpty)
                DetailRow(label: 'Branch'.tr(), value: current.branchTitle),
              DetailRow(
                label: 'Punch type'.tr(),
                value: current.punchType.label.tr(),
              ),
              DetailRow(
                label: 'Date'.tr(),
                value: formatDateId(current.dateId),
              ),
              DetailRow(
                label: 'Punch time'.tr(),
                value: formatPunchTime(current.punchTime),
              ),
              DetailRow(label: 'Status'.tr(), value: current.status.label.tr()),
              if (current.createdAt != null)
                DetailRow(
                  label: 'Submitted'.tr(),
                  value: formatDateTime(current.createdAt!),
                ),
              if (current.autoFlagged)
                DetailRow(label: 'Auto-flagged'.tr(), value: 'Yes'.tr()),
            ],
          ),
          const SizedBox(height: 12),
          DetailSectionCard(
            title: 'LOCATION'.tr(),
            icon: Icons.place_outlined,
            children: [
              DetailRow(
                label: 'Label'.tr(),
                value: current.locationLabel?.trim().isNotEmpty == true
                    ? current.locationLabel!.trim()
                    : '-',
              ),
              DetailRow(
                label: 'Distance'.tr(),
                value: current.distanceKm != null
                    ? '{distance} km from branch'.tr(
                        namedArgs: {
                          'distance': current.distanceKm!.toStringAsFixed(2),
                        },
                      )
                    : '-',
              ),
              DetailRow(
                label: 'Branch radius'.tr(),
                value: current.branchRadiusKm != null
                    ? '{distance} km'.tr(
                        namedArgs: {
                          'distance': current.branchRadiusKm!.toStringAsFixed(
                            2,
                          ),
                        },
                      )
                    : '-',
              ),
              DetailRow(
                label: 'GPS accuracy'.tr(),
                value: current.accuracy != null
                    ? '${current.accuracy!.toStringAsFixed(0)} m'
                    : '-',
              ),
              DetailRow(
                label: 'Coordinates'.tr(),
                value: hasCoordinates
                    ? '${current.latitude!.toStringAsFixed(5)}, ${current.longitude!.toStringAsFixed(5)}'
                    : '-',
              ),
            ],
          ),
          const SizedBox(height: 12),
          DetailSectionCard(
            title: 'REASON'.tr(),
            icon: Icons.notes_rounded,
            children: [
              Text(
                current.reason.trim().isEmpty ? '-' : current.reason.trim(),
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
              ),
            ],
          ),
          if (!current.isPending) ...[
            const SizedBox(height: 12),
            DetailSectionCard(
              title: 'DECISION'.tr(),
              icon: Icons.gavel_rounded,
              children: [
                DetailRow(
                  label: 'Decision'.tr(),
                  value: current.status.label.tr(),
                ),
                if (current.deciderName.trim().isNotEmpty)
                  DetailRow(
                    label: 'Decided by'.tr(),
                    value: current.deciderName.trim(),
                  ),
                if (current.decidedAt != null)
                  DetailRow(
                    label: 'Decided at'.tr(),
                    value: formatDateTime(current.decidedAt!),
                  ),
                DetailRow(
                  label: 'Note'.tr(),
                  value: current.decisionNote?.trim().isNotEmpty == true
                      ? current.decisionNote!.trim()
                      : '-',
                  multiline: true,
                ),
              ],
            ),
          ],
        ],
      ),
      bottomNavigationBar: !current.isPending
          ? null
          : Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                border: Border(
                  top: BorderSide(
                    color: theme.colorScheme.outline.withValues(alpha: 0.15),
                  ),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: canDecide
                      ? Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: isSubmitting.value
                                    ? null
                                    : () =>
                                          decide(ClockRequestDecision.rejected),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xFFB91C1C),
                                  side: BorderSide(
                                    color: const Color(
                                      0xFFB91C1C,
                                    ).withValues(alpha: 0.4),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                icon: const Icon(Icons.close_rounded, size: 18),
                                label: Text('Reject'.tr()),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: FilledButton.icon(
                                onPressed: isSubmitting.value
                                    ? null
                                    : () =>
                                          decide(ClockRequestDecision.approved),
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF15803D),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                icon: isSubmitting.value
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : const Icon(Icons.check_rounded, size: 18),
                                label: Text('Approve'.tr()),
                              ),
                            ),
                          ],
                        )
                      : SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: isSubmitting.value ? null : cancel,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: const Color(0xFFB91C1C),
                              side: BorderSide(
                                color: const Color(
                                  0xFFB91C1C,
                                ).withValues(alpha: 0.4),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            icon: isSubmitting.value
                                ? const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Color(0xFFB91C1C),
                                    ),
                                  )
                                : const Icon(Icons.cancel_outlined, size: 18),
                            label: Text('Cancel Request'.tr()),
                          ),
                        ),
                ),
              ),
            ),
    );
  }
}
