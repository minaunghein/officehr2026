import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';

/// A document section with a heading and one light rule, without a card shell.
class RecordSection extends StatelessWidget {
  const RecordSection({
    super.key,
    required this.title,
    required this.children,
    this.showRule = true,
  });

  final String title;
  final List<Widget> children;
  final bool showRule;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (showRule) ...[
          Divider(height: 1, color: theme.detailRule),
          const SizedBox(height: AppSizes.md),
        ],
        Semantics(
          header: true,
          child: Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.15,
            ),
          ),
        ),
        const SizedBox(height: AppSizes.sm),
        ...children,
      ],
    );
  }
}

class RecordFields extends StatelessWidget {
  const RecordFields({
    super.key,
    required this.children,
    this.singleColumn = false,
  });

  final List<RecordField> children;
  final bool singleColumn;

  @override
  Widget build(BuildContext context) {
    final available = children.where((field) => field.hasValue).toList();
    if (available.isEmpty) {
      return Text(
        'No information provided.'.tr(),
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).detailMuted),
      );
    }
    return singleColumn
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: available,
          )
        : UserProfileFieldGrid(children: available);
  }
}

class RecordField extends StatelessWidget {
  const RecordField({super.key, required this.label, required this.value});

  final String label;
  final String? value;

  bool get hasValue {
    final text = value?.trim();
    return text != null && text.isNotEmpty && text != '-' && text != '—';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.xxxs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.detailMuted,
              fontSize: 12,
              height: 1.4,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: AppSizes.xxxxs),
          Text(
            hasValue ? value!.trim() : '—',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
