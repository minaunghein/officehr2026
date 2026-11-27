import 'package:flutter/material.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/presentation/utils/overtime_formatters.dart';

class OvertimeStatusChip extends StatelessWidget {
  const OvertimeStatusChip({super.key, required this.status});

  final OvertimeStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: overtimeStatusBackground(status),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        overtimeStatusLabel(status),
        style: theme.textTheme.labelSmall?.copyWith(
          color: overtimeStatusColor(status),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
