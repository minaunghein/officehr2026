import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/home/domain/entities/attendance_stats.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/shared/date_formatter.dart';

class MonthlyStatistics extends ConsumerWidget {
  const MonthlyStatistics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final statsAsync = ref.watch(monthlyAttendanceStatsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'MONTHLY STATISTICS',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
            Text(
              formatMonthYear(DateTime.now()),
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        statsAsync.when(
          data: (stats) => _StatsCard(stats: stats),
          loading: () => Container(
            decoration: _statsDecoration(theme),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: const Row(
              children: [
                Expanded(child: ContainerShimmer(height: 42)),
                SizedBox(width: 12),
                Expanded(child: ContainerShimmer(height: 42)),
                SizedBox(width: 12),
                Expanded(child: ContainerShimmer(height: 42)),
              ],
            ),
          ),
          error: (error, stackTrace) => Container(
            decoration: _statsDecoration(theme),
            padding: const EdgeInsets.all(16),
            child: Text(
              'Unable to load monthly statistics',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _StatsCard extends StatelessWidget {
  const _StatsCard({required this.stats});

  final AttendanceStats stats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: _statsDecoration(theme),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                _buildStatItem(theme, 'PRESENT', '${stats.present} Days', null),
                _divider(theme),
                _buildStatItem(
                  theme,
                  'LATE',
                  '${stats.late} Days',
                  const Color(0xFFD32F2F),
                ),
                _divider(theme),
                _buildStatItem(
                  theme,
                  'ABSENT',
                  '${stats.absent} Days',
                  const Color(0xFFD32F2F),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: theme.colorScheme.outline.withValues(alpha: 0.15),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                _buildStatItem(
                  theme,
                  'HALF DAY',
                  '${stats.halfDay} Days',
                  null,
                ),
                _divider(theme),
                _buildStatItem(
                  theme,
                  'ON LEAVE',
                  '${stats.onLeave} Days',
                  null,
                ),
                _divider(theme),
                _buildStatItem(theme, 'HOLIDAY', '${stats.holiday} Days', null),
                _divider(theme),
                _buildStatItem(
                  theme,
                  'REST DAY',
                  '${stats.restDay} Days',
                  null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider(ThemeData theme) {
    return VerticalDivider(
      width: 1,
      color: theme.colorScheme.outline.withValues(alpha: 0.15),
    );
  }

  Widget _buildStatItem(
    ThemeData theme,
    String title,
    String value,
    Color? valueColor,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.labelSmall?.copyWith(
                fontSize: 9,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.2,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: valueColor,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration _statsDecoration(ThemeData theme) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: theme.colorScheme.outline.withValues(alpha: 0.15),
    ),
    color: theme.colorScheme.surface,
  );
}
