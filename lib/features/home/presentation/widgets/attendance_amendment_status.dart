import 'package:flutter/material.dart';

/// Colors used consistently for attendance amendment request statuses.
Color amendmentStatusColor(String? status, ThemeData theme) {
  switch (status?.toUpperCase()) {
    case 'APPROVED':
      return const Color(0xFF16A34A);
    case 'REJECTED':
      return const Color(0xFFDC2626);
    case 'PENDING':
      return const Color(0xFFD97706);
    default:
      return theme.colorScheme.onSurface.withValues(alpha: 0.45);
  }
}

String amendmentStatusLabel(String? status) {
  if (status == null || status.trim().isEmpty) return 'Unknown';
  return status
      .split('_')
      .where((word) => word.isNotEmpty)
      .map((word) => '${word[0]}${word.substring(1).toLowerCase()}')
      .join(' ');
}

class AmendmentStatusChip extends StatelessWidget {
  const AmendmentStatusChip({
    super.key,
    required this.status,
    this.dense = false,
  });

  final String? status;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = amendmentStatusColor(status, theme);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dense ? 8 : 12,
        vertical: dense ? 3 : 6,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: dense ? 6 : 8,
            height: dense ? 6 : 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          SizedBox(width: dense ? 5 : 7),
          Text(
            amendmentStatusLabel(status),
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
