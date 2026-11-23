import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/amendment_decision_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_card.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_status.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/shared/date_formatter.dart';

import 'package:easy_localization/easy_localization.dart';

/// Navigation args for the amendment detail screen. `canApprove` is set when
/// the screen is opened from the approvals queue.
class AttendanceAmendmentRouteArgs {
  const AttendanceAmendmentRouteArgs({
    required this.amendment,
    this.canApprove = false,
  });

  final AttendanceAmendment amendment;
  final bool canApprove;
}

class AttendanceAmendmentDetailScreen extends HookConsumerWidget {
  const AttendanceAmendmentDetailScreen({
    super.key,
    required this.initial,
    this.canApprove = false,
  });

  final AttendanceAmendment initial;
  final bool canApprove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // The by-id endpoint may not embed the requester, so keep the name that
    // came with the list payload.
    AttendanceAmendment keepRequester(AttendanceAmendment value) =>
        value.requesterName.isEmpty && initial.requesterName.isNotEmpty
        ? value.copyWith(requesterName: initial.requesterName)
        : value;

    final amendment = useState(keepRequester(initial));
    final refreshing = useState(false);
    final error = useState<String?>(null);
    final pendingDecision = useState<String?>(null);

    Future<void> load() async {
      refreshing.value = true;
      error.value = null;
      try {
        final fresh = await ref.read(getAmendmentByIdUsecaseProvider)(
          initial.id,
        );
        amendment.value = keepRequester(fresh);
      } catch (e) {
        error.value = getUserFriendlyError(e);
      } finally {
        refreshing.value = false;
      }
    }

    useEffect(() {
      load();
      return null;
    }, [initial.id]);

    final current = amendment.value;
    final access = ref.watch(sessionAccessProvider);
    final canAct =
        canApprove &&
        access.reviewAmendments &&
        !access.isOwnUser(current.userId) &&
        current.status.toUpperCase() == 'PENDING';

    Future<void> decide(bool approve) async {
      final requesterLabel = current.requesterName.trim().isEmpty
          ? 'this employee'.tr()
          : current.requesterName.trim();
      final result = await showAmendmentDecisionDialog(
        context,
        isApprove: approve,
        requesterLabel: requesterLabel,
        typeLabel: attendanceStatusLabel(current.amendmentType),
      );
      if (result == null ||
          !context.mounted ||
          !ref.read(sessionAccessProvider).reviewAmendments) {
        return;
      }

      pendingDecision.value = result.status;
      try {
        final updated = await ref.read(updateAmendmentStatusUsecaseProvider)(
          current.id,
          status: result.status,
          rejectionReason: result.reason,
        );
        amendment.value = keepRequester(updated);
        ref.invalidate(attendanceAmendmentsProvider);
        ref.invalidate(amendmentApprovalsProvider);
        ref.invalidate(pendingAmendmentsBadgeCountProvider);
        SnackbarUtils.showSuccess(
          approve ? 'Request approved'.tr() : 'Request rejected'.tr(),
        );
      } catch (e) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(e));
        }
      } finally {
        if (context.mounted) pendingDecision.value = null;
      }
    }

    final requesterName = current.requesterName.trim();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: requesterName.isNotEmpty
            ? Text(requesterName, maxLines: 1, overflow: TextOverflow.ellipsis)
            : Text('Request Details'.tr()),
      ),
      bottomNavigationBar: canAct
          ? _ApprovalBar(
              pendingDecision: pendingDecision.value,
              onReject: () => decide(false),
              onApprove: () => decide(true),
            )
          : null,
      body: RefreshIndicator(
        onRefresh: load,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          children: [
            if (refreshing.value)
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: ContainerShimmer(height: 4, width: double.infinity),
              ),
            if (error.value != null)
              _ErrorBanner(message: error.value!, onRetry: load),
            _Header(amendment: current),
            const SizedBox(height: 16),
            _DetailsCard(amendment: current),
            const SizedBox(height: 16),
            _TimelineCard(amendment: current),
          ],
        ),
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

  final String? pendingDecision;
  final VoidCallback onReject;
  final VoidCallback onApprove;

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
                icon: pendingDecision == 'REJECTED'
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
                  disabledBackgroundColor: const Color(
                    0xFF16A34A,
                  ).withValues(alpha: 0.5),
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusMd,
                    ),
                  ),
                ),
                icon: pendingDecision == 'APPROVED'
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

class _Header extends StatelessWidget {
  const _Header({required this.amendment});

  final AttendanceAmendment amendment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final typeColor = amendmentTypeColor(amendment.amendmentType, theme);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: typeColor.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              amendmentTypeIcon(amendment.amendmentType),
              color: typeColor,
              size: 32,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            attendanceStatusLabel(amendment.amendmentType),
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            formatAmendmentDate(amendment.dateId),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
            ),
          ),
          const SizedBox(height: 14),
          AmendmentStatusChip(status: amendment.status),
        ],
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  const _DetailsCard({required this.amendment});

  final AttendanceAmendment amendment;

  @override
  Widget build(BuildContext context) {
    final hasIn = _hasValue(amendment.requestedClockIn);
    final hasOut = _hasValue(amendment.requestedClockOut);

    return _SectionCard(
      title: 'Request'.tr(),
      icon: Icons.description_outlined,
      children: [
        if (hasIn)
          _DetailRow(
            label: 'Requested clock in'.tr(),
            value: formatAttendanceTime(amendment.requestedClockIn),
          ),
        if (hasOut)
          _DetailRow(
            label: 'Requested clock out'.tr(),
            value: formatAttendanceTime(amendment.requestedClockOut),
          ),
        _DetailRow(
          label: 'Reason'.tr(),
          value: amendment.reason.isEmpty ? '-' : amendment.reason,
          multiline: true,
        ),
      ],
    );
  }
}

class _TimelineCard extends StatelessWidget {
  const _TimelineCard({required this.amendment});

  final AttendanceAmendment amendment;

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'Timeline'.tr(),
      icon: Icons.timeline_rounded,
      children: [
        if (amendment.createdAt != null)
          _DetailRow(
            label: 'Requested'.tr(),
            value: formatDateTime(amendment.createdAt!),
          ),
        if (amendment.updatedAt != null)
          _DetailRow(
            label: 'Last updated'.tr(),
            value: formatDateTime(amendment.updatedAt!),
          ),
        if (amendment.approvedAt != null)
          _DetailRow(
            label: 'Approved'.tr(),
            value: formatDateTime(amendment.approvedAt!),
          ),
      ],
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  final String title;
  final IconData icon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
    this.multiline = false,
  });

  final String label;
  final String value;
  final bool multiline;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: multiline
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.error.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline_rounded,
            size: 18,
            color: theme.colorScheme.error,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ),
          TextButton(onPressed: onRetry, child: Text('Retry'.tr())),
        ],
      ),
    );
  }
}

bool _hasValue(String? value) => value != null && value.trim().isNotEmpty;
