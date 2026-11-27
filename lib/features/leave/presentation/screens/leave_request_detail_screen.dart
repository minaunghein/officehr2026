import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/config/api_config.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/utils/leave_formatters.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_attachment_preview.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_decision_dialog.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_request_detail_header.dart';

import 'package:easy_localization/easy_localization.dart';

/// Navigation args for the leave detail screen. `canApprove` is set when the
/// screen is opened from the manager approvals queue.
class LeaveRequestRouteArgs {
  const LeaveRequestRouteArgs({required this.request, this.canApprove = false});

  final LeaveRequest request;
  final bool canApprove;
}

class LeaveRequestDetailScreen extends HookConsumerWidget {
  const LeaveRequestDetailScreen({
    super.key,
    required this.initial,
    this.canApprove = false,
  });

  final LeaveRequest initial;
  final bool canApprove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(sessionAccessProvider);
    final isReview = canApprove && access.reviewLeave;
    final requests = isReview
        ? ref.watch(allLeaveRequestsProvider).value
        : access.viewLeave
        ? ref.watch(leaveRequestsProvider).value
        : null;
    final pendingDecision = useState<LeaveDecision?>(null);

    final request = _resolveLatest(requests, initial);

    final canAct =
        isReview &&
        request.isPending &&
        !access.isOwnUser(request.requesterId) &&
        !access.isOwnEmployee(request.employeeId);

    Future<void> decide(LeaveDecision decision) async {
      final result = await showLeaveDecisionDialog(
        context,
        decision: decision,
        requesterLabel: request.requesterLabel,
      );
      if (result == null ||
          !context.mounted ||
          !ref.read(sessionAccessProvider).reviewLeave) {
        return;
      }

      pendingDecision.value = decision;
      try {
        await ref
            .read(updateLeaveRequestStatusProvider.notifier)
            .act(request.id, decision: result.decision, reason: result.reason);

        // Refresh the leave lists from here (the action provider is a
        // transient autoDispose that may already be disposed by now).
        if (context.mounted) {
          ref.invalidate(allLeaveRequestsProvider);
          ref.invalidate(leaveRequestsProvider);
          ref.invalidate(leaveBalancesProvider);
        }

        if (context.mounted) {
          SnackbarUtils.showSuccess(
            decision == LeaveDecision.approved
                ? 'Leave request approved'.tr()
                : 'Leave request rejected'.tr(),
          );
        }
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted && pendingDecision.value == decision) {
          pendingDecision.value = null;
        }
      }
    }

    final hasTimeline =
        request.createdAt != null ||
        request.updatedAt != null ||
        (request.approvedBy?.trim().isNotEmpty ?? false);
    final isDecisioned =
        request.status == LeaveStatus.approved ||
        request.status == LeaveStatus.rejected;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: canApprove
            ? Text(
                request.requesterLabel,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : Text('Leave Details'.tr()),
      ),
      bottomNavigationBar: canApprove && request.isPending
          ? _ApprovalBar(
              pendingDecision: pendingDecision.value,
              onReject: canAct ? () => decide(LeaveDecision.rejected) : null,
              onApprove: canAct ? () => decide(LeaveDecision.approved) : null,
            )
          : null,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          LeaveRequestDetailHeader(request: request),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Request'.tr(),
            icon: Icons.description_outlined,
            children: [
              DetailRow(
                label: 'Leave type'.tr(),
                value: request.leaveType?.displayTitle ?? '-',
              ),
              DetailRow(
                label: 'Start date'.tr(),
                value: formatLeaveDateFromIso(request.startDate),
              ),
              DetailRow(
                label: 'End date'.tr(),
                value: formatLeaveDateFromIso(request.endDate),
              ),
              DetailRow(
                label: 'Half day'.tr(),
                value: request.isHalfDay
                    ? 'Yes · {period}'.tr(
                        namedArgs: {'period': request.halfDayPeriod.label.tr()},
                      )
                    : 'No'.tr(),
              ),
              DetailRow(
                label: 'Total days'.tr(),
                value: formatDays(request.totalDays),
              ),
              DetailRow(
                label: 'Reason'.tr(),
                value: request.reason.trim().isEmpty ? '-' : request.reason,
                multiline: true,
              ),
            ],
          ),
          if (request.hasAttachment) ...[
            const SizedBox(height: 16),
            DetailSectionCard(
              title: 'Attachment'.tr(),
              icon: Icons.attach_file_rounded,
              children: [
                LeaveAttachmentPreview(
                  imageUrl: _resolveAttachmentUrl(request.attachmentUrl),
                  width: double.infinity,
                  height: 200,
                ),
              ],
            ),
          ],
          if (isDecisioned) ...[
            const SizedBox(height: 16),
            DetailSectionCard(
              title: 'Decision'.tr(),
              icon: Icons.fact_check_outlined,
              children: [
                DetailRow(
                  label: 'Status'.tr(),
                  value: leaveStatusLabel(request.status),
                ),
                if (request.approvedBy?.trim().isNotEmpty ?? false)
                  DetailRow(
                    label: 'Approved by'.tr(),
                    value: request.approvedBy!,
                  ),
                if (request.approvedAt != null)
                  DetailRow(
                    label: 'Decided on'.tr(),
                    value: formatLeaveDateTimeFromIso(request.approvedAt),
                  ),
                if ((request.rejectionReason?.trim().isNotEmpty ?? false))
                  DetailRow(
                    label: 'Rejection reason'.tr(),
                    value: request.rejectionReason!,
                    multiline: true,
                  ),
              ],
            ),
          ],
          if (hasTimeline) ...[
            const SizedBox(height: 16),
            DetailSectionCard(
              title: 'Timeline'.tr(),
              icon: Icons.timeline_rounded,
              children: [
                if (request.createdAt != null)
                  DetailRow(
                    label: 'Requested'.tr(),
                    value: formatLeaveDateTimeFromIso(request.createdAt),
                  ),
                if (request.updatedAt != null)
                  DetailRow(
                    label: 'Last updated'.tr(),
                    value: formatLeaveDateTimeFromIso(request.updatedAt),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _ApprovalBar extends StatelessWidget {
  const _ApprovalBar({
    required this.pendingDecision,
    required this.onReject,
    required this.onApprove,
  });

  final LeaveDecision? pendingDecision;
  final VoidCallback? onReject;
  final VoidCallback? onApprove;

  bool get _anyBusy => pendingDecision != null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: _anyBusy ? null : onReject,
                icon: pendingDecision == LeaveDecision.rejected
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Color(0xFFDC2626),
                        ),
                      )
                    : const Icon(Icons.close_rounded, size: 18),
                label: Text('Reject'.tr()),
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFFDC2626),
                  disabledForegroundColor: const Color(
                    0xFFDC2626,
                  ).withValues(alpha: 0.5),
                  side: const BorderSide(color: Color(0xFFDC2626), width: 1.2),
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusMd,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton.icon(
                onPressed: _anyBusy ? null : onApprove,
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF16A34A),
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusMd,
                    ),
                  ),
                ),
                icon: pendingDecision == LeaveDecision.approved
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.check_rounded, size: 18),
                label: Text('Approve'.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

LeaveRequest _resolveLatest(
  List<LeaveRequest>? requests,
  LeaveRequest fallback,
) {
  if (requests == null) return fallback;
  for (final request in requests) {
    if (request.id == fallback.id) return request;
  }
  return fallback;
}

/// Turns a stored attachment (full URL or bare file id) into a loadable URL.
String _resolveAttachmentUrl(String value) {
  if (value.startsWith('http')) return value;
  return '${ApiConfig().baseUrl}/api/v1/files/${Uri.encodeComponent(value)}';
}
