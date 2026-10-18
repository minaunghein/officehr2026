import 'package:flutter/widgets.dart';

class TeamQuickAction {
  const TeamQuickAction({required this.icon, required this.label, this.onTap});

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
}
