import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/presentation/widgets/team_quick_action.dart';

class TeamQuickActions extends StatelessWidget {
  const TeamQuickActions({super.key, required this.actions});

  final List<TeamQuickAction> actions;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final action in actions)
          OutlinedButton.icon(
            onPressed: action.onTap,
            icon: Icon(action.icon, size: 18),
            label: Text(action.label),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              ),
            ),
          ),
      ],
    );
  }
}
