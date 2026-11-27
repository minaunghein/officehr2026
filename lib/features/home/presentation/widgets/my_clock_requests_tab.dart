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
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_cancel_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_card.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_status_filter_bar.dart';
import 'package:office_hr/features/home/presentation/widgets/date_range_filter_bar.dart';

import 'package:easy_localization/easy_localization.dart';

/// The signed-in user's own remote clock in/out requests with status and
/// date-range filters. Pending requests can be cancelled by their owner.
class MyClockRequestsTab extends HookConsumerWidget {
  const MyClockRequestsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsAsync = ref.watch(myClockRequestsProvider);
    final access = ref.watch(sessionAccessProvider);
    final selectedStatus = useState<ClockRequestStatus?>(null);
    final rangeStart = useState<DateTime?>(null);
    final rangeEnd = useState<DateTime?>(null);

    Future<void> refresh() =>
        ref.read(myClockRequestsProvider.notifier).refresh();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: DateRangeFilterBar(
            start: rangeStart.value,
            end: rangeEnd.value,
            onChanged: (start, end) {
              rangeStart.value = start;
              rangeEnd.value = end;
              ref
                  .read(myClockRequestsProvider.notifier)
                  .setDateFilter(start: start, end: end);
            },
          ),
        ),
        ClockRequestStatusFilterBar(
          selected: selectedStatus.value,
          onChanged: (status) {
            selectedStatus.value = status;
            ref
                .read(myClockRequestsProvider.notifier)
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
              ],
            ),
            error: (error, _) => ErrorStateWidget(
              message: getUserFriendlyError(error),
              onRetry: refresh,
            ),
            data: (requests) {
              if (requests.isEmpty) {
                return EmptyStateWidget(
                  icon: Icons.fact_check_outlined,
                  title: 'No clock requests'.tr(),
                  message: 'Your remote clock in/out requests will appear here.'
                      .tr(),
                  onRefresh: refresh,
                  centered: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: refresh,
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                  itemCount: requests.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final request = requests[index];
                    return ClockRequestCard(
                      request: request,
                      onTap: appRouteTap(
                        context,
                        access,
                        AppRoutes.clockRequestDetail,
                        extra: ClockRequestRouteArgs(
                          request: request,
                          canDecide: false,
                        ),
                      ),
                      trailing: request.isPending
                          ? _CancelButton(request: request)
                          : null,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CancelButton extends HookConsumerWidget {
  const _CancelButton({required this.request});

  final ClockRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCancelling = useState(false);
    final access = ref.watch(sessionAccessProvider);
    final canCancel = access.requestClock && access.isOwnUser(request.userId);

    Future<void> cancel() async {
      final result = await showClockRequestCancelDialog(
        context,
        punchLabel: request.punchType.label.tr().toLowerCase(),
      );
      if (result == null || !context.mounted) return;
      final access = ref.read(sessionAccessProvider);
      if (!access.requestClock || !access.isOwnUser(request.userId)) return;

      isCancelling.value = true;
      try {
        await ref
            .read(myClockRequestsProvider.notifier)
            .cancel(request.id, note: result.note);
        SnackbarUtils.showSuccess('Request cancelled'.tr());
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) isCancelling.value = false;
      }
    }

    return Align(
      alignment: Alignment.centerRight,
      child: OutlinedButton.icon(
        onPressed: isCancelling.value || !canCancel ? null : cancel,
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFFB91C1C),
          side: canCancel
              ? BorderSide(
                  color: const Color(0xFFB91C1C).withValues(alpha: 0.4),
                )
              : null,
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        icon: isCancelling.value
            ? const SizedBox(
                width: 14,
                height: 14,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Color(0xFFB91C1C),
                ),
              )
            : const Icon(Icons.cancel_outlined, size: 16),
        label: Text('Cancel Request'.tr()),
      ),
    );
  }
}
