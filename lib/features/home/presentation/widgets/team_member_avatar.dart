import 'package:flutter/material.dart';
import 'package:office_hr/shared/global.dart';

class TeamMemberAvatar extends StatelessWidget {
  const TeamMemberAvatar({super.key, required this.name, this.size = 46});

  final String name;
  final double size;

  static const _palette = [
    Color(0xFF2450EB),
    Color(0xFF0EA5E9),
    Color(0xFF16A34A),
    Color(0xFFD97706),
    Color(0xFF7C3AED),
    Color(0xFFDB2777),
  ];

  static Color _colorFor(String value) {
    if (value.isEmpty) return _palette.first;
    final hash = value.codeUnits.fold<int>(0, (sum, unit) => sum + unit);
    return _palette[hash % _palette.length];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _colorFor(name);
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        shape: BoxShape.circle,
      ),
      child: Text(
        initials(name) ?? '?',
        style: theme.textTheme.titleSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
