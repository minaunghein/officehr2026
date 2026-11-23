import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';

import 'package:easy_localization/easy_localization.dart';

/// Quick presets plus per-weekday toggles for a repeating reminder.
class WeekdaySelector extends StatelessWidget {
  const WeekdaySelector({
    super.key,
    required this.selected,
    required this.onChanged,
    this.enabled = true,
  });

  final Set<int> selected;
  final ValueChanged<Set<int>> onChanged;
  final bool enabled;

  static const List<(String, Set<int>)> _presets = [
    ('Every day', ReminderSetting.allDays),
    ('Weekdays', ReminderSetting.weekdays),
    ('Weekends', ReminderSetting.weekend),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: AppSizes.xs,
          runSpacing: AppSizes.xs,
          children: [
            for (final (label, days) in _presets)
              FilterChip(
                label: Text(label.tr()),
                selected: _sameSet(selected, days),
                showCheckmark: false,
                visualDensity: VisualDensity.compact,
                color: WidgetStateProperty.resolveWith(
                  (states) => _chipFill(
                    theme,
                    selected: states.contains(WidgetState.selected),
                    enabled: !states.contains(WidgetState.disabled),
                  ),
                ),
                labelStyle: _chipLabel(
                  theme,
                  selected: _sameSet(selected, days),
                  enabled: enabled,
                ),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                ),
                surfaceTintColor: Colors.transparent,
                onSelected: enabled ? (_) => onChanged(days) : null,
              ),
          ],
        ),
        const SizedBox(height: AppSizes.md),
        Row(
          children: [
            for (int weekday = 1; weekday <= 7; weekday++)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
                  child: _DayChip(
                    label: kWeekdayShortNames[weekday - 1].tr(),
                    selected: selected.contains(weekday),
                    onTap: enabled
                        ? () {
                            final next = {...selected};
                            if (next.contains(weekday)) {
                              next.remove(weekday);
                            } else {
                              next.add(weekday);
                            }
                            onChanged(next);
                          }
                        : null,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  static bool _sameSet(Set<int> a, Set<int> b) =>
      a.length == b.length && a.containsAll(b);
}

class _DayChip extends StatelessWidget {
  const _DayChip({required this.label, required this.selected, this.onTap});

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final enabled = onTap != null;

    return Semantics(
      label: label,
      selected: selected,
      button: true,
      enabled: enabled,
      child: Material(
        color: _chipFill(theme, selected: selected, enabled: enabled),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          child: Container(
            constraints: const BoxConstraints(minHeight: 38),
            alignment: Alignment.center,
            child: ExcludeSemantics(
              child: Text(
                // Single letter keeps the row readable on narrow screens.
                label.isEmpty ? '?' : label.substring(0, 1).toUpperCase(),
                style: _chipLabel(theme, selected: selected, enabled: enabled),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Color _chipFill(
  ThemeData theme, {
  required bool selected,
  required bool enabled,
}) {
  if (!enabled) return theme.detailInk(selected ? 0.09 : 0.04);
  if (!selected) return theme.detailInk(0.06);
  return Color.alphaBlend(
    theme.colorScheme.primary.withValues(alpha: 0.14),
    theme.detailCanvas,
  );
}

TextStyle? _chipLabel(
  ThemeData theme, {
  required bool selected,
  required bool enabled,
}) => theme.textTheme.labelLarge?.copyWith(
  color: !enabled
      ? theme.detailInk(0.48)
      : selected
      ? theme.colorScheme.primary
      : theme.detailMuted,
  fontWeight: FontWeight.w600,
);
