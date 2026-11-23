import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';

/// One selectable row inside [showSettingsOptionSheet].
class SettingsOption<T> {
  const SettingsOption({
    required this.value,
    required this.label,
    required this.icon,
    required this.selected,
  });

  final T value;
  final String label;
  final IconData icon;
  final bool selected;
}

/// Bottom sheet used by Settings for single-choice lists (theme, language).
Future<T?> showSettingsOptionSheet<T>(
  BuildContext context, {
  required String title,
  required List<SettingsOption<T>> options,
}) => showModalBottomSheet<T>(
  context: context,
  showDragHandle: true,
  builder: (sheetContext) => _OptionSheet<T>(title: title, options: options),
);

class _OptionSheet<T> extends StatelessWidget {
  const _OptionSheet({required this.title, required this.options});

  final String title;
  final List<SettingsOption<T>> options;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSizes.md,
          0,
          AppSizes.md,
          AppSizes.md,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm),
              child: Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.sm),
            for (final option in options)
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                ),
                selected: option.selected,
                selectedTileColor: theme.colorScheme.surfaceContainerHighest,
                selectedColor: theme.colorScheme.onSurface,
                iconColor: theme.colorScheme.onSurfaceVariant,
                leading: Icon(option.icon),
                title: Text(option.label),
                trailing: option.selected
                    ? const Icon(Icons.check_rounded)
                    : null,
                onTap: () => Navigator.pop(context, option.value),
              ),
          ],
        ),
      ),
    );
  }
}
