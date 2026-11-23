import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';

/// Rounded tinted square that fronts every settings row, sized so the icons
/// line up across groups.
class SettingsIconBadge extends StatelessWidget {
  const SettingsIconBadge({
    super.key,
    required this.icon,
    this.color,
    this.size = 38,
  });

  final IconData icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = color ?? theme.colorScheme.primary;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: accent.withValues(
          alpha: theme.brightness == Brightness.dark ? 0.22 : 0.12,
        ),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Icon(icon, size: AppSizes.iconMd, color: accent),
    );
  }
}
