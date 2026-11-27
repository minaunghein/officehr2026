import 'package:flutter/material.dart';

/// Small pill showing a badge count. Hidden when [count] is zero or less and
/// capped at `99+`. Used inline next to tab labels and inside tiles; for icon
/// overlays prefer the Material `Badge.count` widget.
class CountBadge extends StatelessWidget {
  const CountBadge({super.key, required this.count, this.color});

  final int count;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (count <= 0) return const SizedBox.shrink();

    final theme = Theme.of(context);
    final background = color ?? theme.colorScheme.error;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        count > 99 ? '99+' : '$count',
        textAlign: TextAlign.center,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color == null ? theme.colorScheme.onError : Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w800,
          height: 1,
        ),
      ),
    );
  }
}
