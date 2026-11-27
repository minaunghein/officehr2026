import 'package:flutter/material.dart';

class RequestActionButton extends StatelessWidget {
  const RequestActionButton({super.key, required this.label, this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return FloatingActionButton.extended(
      onPressed: onPressed,
      foregroundColor: onPressed == null
          ? colors.onSurface.withValues(alpha: 0.38)
          : null,
      backgroundColor: onPressed == null
          ? colors.surfaceContainerHighest
          : null,
      disabledElevation: 0,
      icon: const Icon(Icons.add_rounded),
      label: Text(label),
    );
  }
}
