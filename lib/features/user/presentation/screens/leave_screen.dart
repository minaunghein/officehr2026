import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';

class LeaveScreen extends ConsumerWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final userDtlAsync = ref.watch(userDetailsProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Leave',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: userDtlAsync.when(
        data: (userDetails) {
          if (userDetails?.userLeaves == null ||
              userDetails!.userLeaves.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.hourglass_empty_rounded,
                    size: 64,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No leaves found',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(userDetailsProvider.notifier).fetch();
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: userDetails.userLeaves.length,
              itemBuilder: (context, index) {
                final leave = userDetails.userLeaves[index];
                return LeaveItem(leave: leave);
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
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
                const SizedBox(height: 16),
                Text(
                  'Failed to load leave',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () =>
                      ref.read(userDetailsProvider.notifier).fetch(),
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LeaveItem extends HookConsumerWidget {
  const LeaveItem({super.key, required this.leave});

  final UserLeave leave;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isExpanded = useState(false);

    // IconData getLeaveIcon(String title) {
    //   final t = title.toLowerCase();
    //   if (t.contains('sick') || t.contains('medical')) {
    //     return Icons.medical_services_rounded;
    //   } else if (t.contains('vacation') ||
    //       t.contains('annual') ||
    //       t.contains('casual')) {
    //     return Icons.beach_access_rounded;
    //   } else if (t.contains('maternity') || t.contains('paternity')) {
    //     return Icons.child_care_rounded;
    //   } else if (t.contains('absent')) {
    //     return Icons.cancel_presentation_rounded;
    //   }
    //   return Icons.calendar_today_rounded;
    // }

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.4),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        onTap: () => isExpanded.value = !isExpanded.value,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          leave.leaveTitle,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Year: ${leave.yearId}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: leave.isPaid
                          ? Colors.green.withValues(alpha: 0.1)
                          : Colors.orange.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      leave.isPaid ? 'Paid' : 'Unpaid',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: leave.isPaid ? Colors.green : Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    isExpanded.value
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _StatTile(
                    label: 'Allowed / Yr',
                    value: '${leave.allowedDaysPerYear} Days',
                  ),
                  _StatTile(label: 'Taken', value: '${leave.leaveTaken} Days'),
                  _StatTile(
                    label: 'Remaining',
                    value: leave.allowedDaysPerYear > 0
                        ? '${leave.allowedDaysPerYear - leave.leaveTaken} Days'
                        : 'N/A',
                  ),
                ],
              ),
              if (isExpanded.value) ...[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Divider(height: 1),
                ),
                _DetailRow(
                  label: 'Consecutive Days Limit',
                  value: '${leave.consecutiveDays} Days',
                ),
                _DetailRow(
                  label: 'Allowed (6 Months)',
                  value: '${leave.allowedDaysSixMonth} Days',
                ),
                _DetailRow(
                  label: 'Required Service Days',
                  value: '${leave.requiredServiceDays} Days',
                ),
                _DetailRow(
                  label: 'Required Working Days',
                  value: '${leave.requiredWorkingDays} Days',
                ),
                _DetailRow(
                  label: 'Valid Days Next Year',
                  value: '${leave.validDaysNextYear} Days',
                ),
                _DetailRow(
                  label: 'Carry Over to Next Year',
                  value: leave.carryNextYear ? 'Yes' : 'No',
                ),
                _DetailRow(
                  label: 'No Clock In/Out Default',
                  value: leave.defaultForNoClockInOut ? 'Yes' : 'No',
                ),
                _DetailRow(
                  label: 'Add to All Employees',
                  value: leave.addToAll ? 'Yes' : 'No',
                ),
                if (leave.createdAt != null)
                  _DetailRow(
                    label: 'Created At',
                    value: _formatDate(leave.createdAt!),
                  ),
                if (leave.tags.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Tags',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: leave.tags.map((tag) {
                      return Chip(
                        label: Text(tag, style: theme.textTheme.bodySmall),
                        padding: EdgeInsets.zero,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor:
                            theme.colorScheme.surfaceContainerHighest,
                      );
                    }).toList(),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
