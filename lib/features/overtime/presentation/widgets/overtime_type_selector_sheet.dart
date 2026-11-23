import 'package:flutter/material.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

import 'package:easy_localization/easy_localization.dart';

/// Bottom sheet to choose an overtime type (OT1 / OT2 / OT3).
class OvertimeTypeSelectorSheet extends StatelessWidget {
  const OvertimeTypeSelectorSheet({super.key, this.selected});

  final OvertimeType? selected;

  static const _labels = {
    OvertimeType.ot1: 'OT1 · Weekday',
    OvertimeType.ot2: 'OT2 · Rest day',
    OvertimeType.ot3: 'OT3 · Public holiday',
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final types = OvertimeType.values;

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Text(
                  'Select Overtime Type'.tr(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          for (final type in types)
            ListTile(
              leading: Icon(
                Icons.bolt_rounded,
                color: theme.colorScheme.primary,
              ),
              title: Text(
                (_labels[type] ?? type.value).tr(),
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: selected == type
                  ? Icon(
                      Icons.check_circle_rounded,
                      color: theme.colorScheme.primary,
                    )
                  : null,
              onTap: () => Navigator.of(context).pop(type),
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
