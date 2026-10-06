import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_card.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_form_sheet.dart';

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

class AttendanceRequestsScreen extends HookConsumerWidget {
  const AttendanceRequestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = useState(_StatusFilter.all);
    final rangeStart = useState<DateTime?>(null);
    final rangeEnd = useState<DateTime?>(null);
    final amendmentsAsync = ref.watch(attendanceAmendmentsProvider);

    Future<void> onRefresh() =>
        ref.read(attendanceAmendmentsProvider.notifier).refresh();

    Future<void> pickRange() async {
      final now = DateTime.now();
      final picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(now.year - 2),
        lastDate: now,
        helpText: 'Filter by date range',
        initialDateRange: rangeStart.value != null && rangeEnd.value != null
            ? DateTimeRange(start: rangeStart.value!, end: rangeEnd.value!)
            : null,
      );
      if (picked == null) return;
      rangeStart.value = picked.start;
      rangeEnd.value = picked.end;
      await ref
          .read(attendanceAmendmentsProvider.notifier)
          .setDateFilter(start: picked.start, end: picked.end);
    }

    Future<void> clearRange() async {
      rangeStart.value = null;
      rangeEnd.value = null;
      await ref.read(attendanceAmendmentsProvider.notifier).setDateFilter();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Attendance Requests'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showAttendanceAmendmentForm(context),
        icon: const Icon(Icons.add_rounded),
        label: const Text('New Request'),
      ),
      body: Column(
        children: [
          _DateFilterBar(
            start: rangeStart.value,
            end: rangeEnd.value,
            onPick: pickRange,
            onClear: clearRange,
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
      ),
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
            label: Text(filter.label),
            selected: filter == selected,
            onSelected: (_) => onChanged(filter),
          );
        },
      ),
    );
  }
}

class _DateFilterBar extends StatelessWidget {
  const _DateFilterBar({
    required this.start,
    required this.end,
    required this.onPick,
    required this.onClear,
  });

  final DateTime? start;
  final DateTime? end;
  final VoidCallback onPick;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasRange = start != null && end != null;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: onPick,
              icon: const Icon(Icons.date_range_rounded, size: 18),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  hasRange
                      ? '${_shortDate(start!)}  -  ${_shortDate(end!)}'
                      : 'Filter by date range',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(46),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          if (hasRange) ...[
            const SizedBox(width: 8),
            IconButton(
              onPressed: onClear,
              tooltip: 'Clear date filter',
              icon: Icon(
                Icons.close_rounded,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

String _shortDate(DateTime date) {
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}

class _AmendmentList extends StatelessWidget {
  const _AmendmentList({required this.amendments});

  final List<AttendanceAmendment> amendments;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (amendments.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.55,
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
                  'No attendance requests',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Tap "New Request" to submit a correction.',
                  style: theme.textTheme.bodySmall?.copyWith(
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
      itemCount: amendments.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final amendment = amendments[index];
        return AttendanceAmendmentCard(
          amendment: amendment,
          onTap: () => context.push(
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
          height: MediaQuery.sizeOf(context).height * 0.55,
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
                  label: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
