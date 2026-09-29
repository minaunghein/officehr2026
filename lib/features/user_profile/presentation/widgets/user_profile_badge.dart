import 'package:flutter/material.dart';

class UserProfileBadge extends StatelessWidget {
  const UserProfileBadge({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 15, color: theme.colorScheme.primary),
            const SizedBox(width: 5),
            Text(label, style: theme.textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}

class UserProfileActiveStatus extends StatelessWidget {
  const UserProfileActiveStatus({
    super.key,
    required this.isActive,
    this.onPrimary = false,
  });

  final bool isActive;
  final bool onPrimary;

  @override
  Widget build(BuildContext context) {
    final color = onPrimary
        ? Theme.of(context).colorScheme.onPrimary
        : isActive
        ? Colors.green
        : Theme.of(context).colorScheme.error;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.circle, size: 10, color: color),
        const SizedBox(width: 6),
        Text(isActive ? 'Active' : 'Inactive', style: TextStyle(color: color)),
      ],
    );
  }
}
