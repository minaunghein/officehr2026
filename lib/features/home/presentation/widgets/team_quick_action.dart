import 'package:flutter/widgets.dart';

class TeamQuickAction {
  const TeamQuickAction({
    required this.icon,
    required this.label,
    this.onTap,
    this.badgeCount = 0,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final int badgeCount;
}
