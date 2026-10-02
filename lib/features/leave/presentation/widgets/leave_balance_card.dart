import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';

class LeaveBalanceCard extends StatelessWidget {
  const LeaveBalanceCard({super.key, required this.balance});

  final LeaveBalance balance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final type = balance.leaveType;
    final progress = balance.usedPercentage;
    final accent = _accentFor(type.code);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProgressRing(
            progress: progress,
            accent: accent,
            centerTop: _formatNumber(balance.available),
            centerBottom: 'left',
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        type.displayTitle,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (type.code.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: accent.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          type.code,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: accent,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 6,
                    backgroundColor: accent.withValues(alpha: 0.12),
                    valueColor: AlwaysStoppedAnimation(accent),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _Metric(
                      label: 'Allocated',
                      value: _formatNumber(balance.totalGranted),
                    ),
                    _Metric(
                      label: 'Used',
                      value: _formatNumber(balance.used),
                    ),
                    _Metric(
                      label: 'Pending',
                      value: _formatNumber(balance.pending),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static String _formatNumber(double value) {
    if (value == value.roundToDouble()) return value.toInt().toString();
    return value.toStringAsFixed(1);
  }

  static Color _accentFor(String code) {
    const palette = [
      Color(0xFF2450EB),
      Color(0xFF0EA5E9),
      Color(0xFF16A34A),
      Color(0xFFD97706),
      Color(0xFF7C3AED),
      Color(0xFFDB2777),
    ];
    if (code.isEmpty) return palette.first;
    final hash = code.codeUnits.fold<int>(0, (sum, unit) => sum + unit);
    return palette[hash % palette.length];
  }
}

class _ProgressRing extends StatelessWidget {
  const _ProgressRing({
    required this.progress,
    required this.accent,
    required this.centerTop,
    required this.centerBottom,
  });

  final double progress;
  final Color accent;
  final String centerTop;
  final String centerBottom;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 70,
      height: 70,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 6,
              backgroundColor: accent.withValues(alpha: 0.12),
              valueColor: AlwaysStoppedAnimation(accent),
              strokeCap: StrokeCap.round,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                centerTop,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: accent,
                ),
              ),
              Text(
                centerBottom,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric({required this.label, required this.value});

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
            value,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
