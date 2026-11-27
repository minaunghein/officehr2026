import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_card.dart';
import 'package:office_hr/features/home/presentation/widgets/date_range_filter_bar.dart';

import 'package:easy_localization/easy_localization.dart';

enum _StatusFilter { all, pending, approved, rejected }

extension on _StatusFilter {
  String get label {
    switch (this) {
      case _StatusFilter.all:
        return 'All';
      case _StatusFilter.pending:
        return 'Pending';
      case _StatusFilter.approved:
        return 'Approved';
      case _StatusFilter.rejected:
        return 'Rejected';
    }
  }

  List<String> get statuses {
    switch (this) {
      case _StatusFilter.all:
        return const [];
      case _StatusFilter.pending:
        return const ['PENDING'];
      case _StatusFilter.approved:
        return const ['APPROVED'];
      case _StatusFilter.rejected:
        return const ['REJECTED'];
    }
  }
}

/// The user's attendance amendment requests with status and date-range
/// filters.
class AttendanceAmendmentsTab extends HookConsumerWidget {
  const AttendanceAmendmentsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = useState(_StatusFilter.all);
    final rangeStart = useState<DateTime?>(null);
    final rangeEnd = useState<DateTime?>(null);
    final amendmentsAsync = ref.watch(attendanceAmendmentsProvider);

    Future<void> onRefresh() =>
        ref.read(attendanceAmendmentsProvider.notifier).refresh();

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
                  .read(attendanceAmendmentsProvider.notifier)
                  .setDateFilter(start: start, end: end);
            },
          ),
        ),
        _FilterBar(
          selected: filter.value,
          onChanged: (value) {
            filter.value = value;
            ref
                .read(attendanceAmendmentsProvider.notifier)
                .setStatusFilter(value.statuses);
          },
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: onRefresh,
            child: amendmentsAsync.when(
              data: (amendments) => _AmendmentList(amendments: amendments),
              loading: () => const _AmendmentListSkeleton(),
              error: (error, stack) => _ErrorView(
                message: getUserFriendlyError(error),
                onRetry: onRefresh,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _FilterBar extends StatelessWidget {
  const _FilterBar({required this.selected, required this.onChanged});

  final _StatusFilter selected;
  final ValueChanged<_StatusFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: _StatusFilter.values.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final filter = _StatusFilter.values[index];
          return ChoiceChip(
            label: Text(filter.label.tr()),
            selected: filter == selected,
            onSelected: (_) => onChanged(filter),
          );
        },
      ),
    );
  }
}

class _AmendmentList extends ConsumerWidget {
  const _AmendmentList({required this.amendments});

  final List<AttendanceAmendment> amendments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final access = ref.watch(sessionAccessProvider);

    if (amendments.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit_calendar_outlined,
                  size: 56,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                ),
                const SizedBox(height: 14),
                Text(
                  'No attendance requests'.tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                  ),
                ),
                const SizedBox(height: 6),
                if (access.amendPunch)
                  Text(
                    'Tap "New Request" to submit a correction.'.tr(),
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

    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 96),
      itemCount: amendments.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final amendment = amendments[index];
        return AttendanceAmendmentCard(
          amendment: amendment,
          onTap: appRouteTap(
            context,
            access,
            AppRoutes.attendanceAmendmentDetail,
            extra: amendment,
          ),
        );
      },
    );
  }
}

class _AmendmentListSkeleton extends StatelessWidget {
  const _AmendmentListSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
      children: [
        for (int i = 0; i < 5; i++) ...[
          ContainerShimmer(
            height: 130,
            width: double.infinity,
            borderRadius: BorderRadius.circular(16),
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 48,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(height: 14),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: onRetry,
                  icon: const Icon(Icons.refresh_rounded),
                  label: Text('Retry'.tr()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
