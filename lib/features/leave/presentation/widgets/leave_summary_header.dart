import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';

class LeaveSummaryHeader extends StatelessWidget {
  const LeaveSummaryHeader({super.key, required this.balances});

  final List<LeaveBalance> balances;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradient = theme.extension<OfficeHrThemeExtension>()?.gradient;

    var available = 0.0;
    var granted = 0.0;
    var used = 0.0;
    var pending = 0.0;
    for (final balance in balances) {
      available += balance.available;
      granted += balance.totalGranted;
      used += balance.used;
      pending += balance.pending;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: 0.25),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.beach_access_rounded,
                size: 18,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(width: 8),
              Text(
                'Leave Balance',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.9),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _formatNumber(available),
                style: theme.textTheme.displayMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
              const SizedBox(width: 6),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  available == 1 ? 'day available' : 'days available',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.85),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              _Stat(
                label: 'Allocated',
                value: _formatNumber(granted),
                color: theme.colorScheme.onPrimary,
              ),
              _Stat(
                label: 'Used',
                value: _formatNumber(used),
                color: theme.colorScheme.onPrimary,
              ),
              _Stat(
                label: 'Pending',
                value: _formatNumber(pending),
                color: theme.colorScheme.onPrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  static String _formatNumber(double value) {
    if (value == value.roundToDouble()) return value.toInt().toString();
    return value.toStringAsFixed(1);
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value, required this.color});

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: theme.textTheme.titleLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: color.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
