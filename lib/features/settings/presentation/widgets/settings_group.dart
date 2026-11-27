import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';

/// Whitespace and a single section rule keep the setting rows on one canvas.
class SettingsGroup extends StatelessWidget {
  const SettingsGroup({
    super.key,
    this.title,
    this.description,
    this.nested = false,
    required this.children,
  });

  final String? title;
  final String? description;

  final bool nested;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      type: MaterialType.transparency,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!nested) Divider(height: 1, color: theme.detailRule),
          if (title != null)
            Padding(
              padding: EdgeInsets.only(
                top: nested ? AppSizes.xs : AppSizes.md,
                bottom: AppSizes.xxxs,
              ),
              child: Semantics(
                header: true,
                child: Text(
                  title!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: nested
                        ? theme.detailMuted
                        : theme.colorScheme.onSurface,
                    fontSize: nested ? 12 : 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ...children,
          if (description != null)
            Padding(
              padding: const EdgeInsets.only(
                top: AppSizes.xs,
                bottom: AppSizes.xxxs,
              ),
              child: Text(
                description!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.detailMuted,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
