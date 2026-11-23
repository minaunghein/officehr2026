import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';

class RecordSurface extends StatelessWidget {
  const RecordSurface({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        side: BorderSide(color: colors.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}

/// Stacks related sections on phones and gives the main record more room on
/// wider screens. At larger text sizes the sections keep their full width.
class RecordColumns extends StatelessWidget {
  const RecordColumns({
    super.key,
    required this.primary,
    required this.secondary,
    this.dividerOnStack = false,
  });

  final Widget primary;
  final Widget secondary;
  final bool dividerOnStack;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = MediaQuery.textScalerOf(context).scale(16) / 16;
        if (constraints.maxWidth < 640 * scale.clamp(1.0, double.infinity)) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              primary,
              const SizedBox(height: AppSizes.xl),
              if (dividerOnStack) ...[
                Divider(height: 1, color: Theme.of(context).detailRule),
                const SizedBox(height: AppSizes.md),
              ],
              secondary,
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3, child: primary),
            const SizedBox(width: AppSizes.xxl),
            Expanded(flex: 2, child: secondary),
          ],
        );
      },
    );
  }
}

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({
    super.key,
    required this.title,
    required this.icon,
    this.description,
    required this.children,
  });

  final String title;
  final IconData icon;
  final String? description;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RecordSurface(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: AppSizes.iconMd,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: AppSizes.sm),
                Expanded(
                  child: Semantics(
                    header: true,
                    child: Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (description != null) ...[
              const SizedBox(height: AppSizes.xxxs),
              Text(
                description!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            const SizedBox(height: AppSizes.xs),
            Divider(height: 1, color: theme.colorScheme.outlineVariant),
            const SizedBox(height: AppSizes.xs),
            ...children,
          ],
        ),
      ),
    );
  }
}

class UserProfileInfoRow extends StatelessWidget {
  const UserProfileInfoRow({
    super.key,
    required this.label,
    this.value,
    this.valueWidget,
  });

  final String label;
  final String? value;
  final Widget? valueWidget;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final displayValue = value?.trim() ?? '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.xxs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSizes.xxxs),
          valueWidget ??
              Text(
                displayValue.isEmpty ? '—' : displayValue,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: displayValue.isEmpty
                      ? theme.colorScheme.onSurfaceVariant
                      : null,
                ),
              ),
        ],
      ),
    );
  }
}

class UserProfileFieldGrid extends StatelessWidget {
  const UserProfileFieldGrid({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
        final columns = constraints.maxWidth < 300 * scale
            ? 1
            : constraints.maxWidth >= 640 * scale
            ? 3
            : 2;
        const spacing = AppSizes.spaceBtwItems;
        final width =
            (constraints.maxWidth - spacing * (columns - 1)) / columns;
        return Wrap(
          spacing: spacing,
          runSpacing: 6,
          children: children
              .map((child) => SizedBox(width: width, child: child))
              .toList(),
        );
      },
    );
  }
}
