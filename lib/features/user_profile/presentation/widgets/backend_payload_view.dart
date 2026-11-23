import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_section.dart';
import 'package:office_hr/shared/date_formatter.dart';

import 'package:easy_localization/easy_localization.dart';

class CompanyPayloadView extends StatelessWidget {
  const CompanyPayloadView({
    super.key,
    required this.title,
    required this.payload,
  });

  final String title;
  final Map<String, dynamic> payload;

  @override
  Widget build(BuildContext context) {
    final entries = payload.entries
        .where((entry) => _hasValue(entry.value))
        .toList();
    return RecordSection(
      title: title,
      children: entries.isEmpty
          ? [
              Text(
                'No information provided.'.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ]
          : entries
                .map(
                  (entry) => _PayloadField(
                    label: _payloadLabel(entry.key),
                    keyName: entry.key,
                    value: entry.value,
                  ),
                )
                .toList(),
    );
  }
}

class _PayloadField extends StatelessWidget {
  const _PayloadField({required this.label, required this.value, this.keyName});

  final String label;
  final String? keyName;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (value is Map || value is List) {
      final children = switch (value) {
        final Map map => [
          for (final entry in map.entries)
            if (_hasValue(entry.value))
              _PayloadField(
                label: _payloadLabel(entry.key.toString()),
                keyName: entry.key.toString(),
                value: entry.value,
              ),
        ],
        final List list => [
          for (final (index, item) in list.indexed)
            _PayloadField(label: '${index + 1}', value: item),
        ],
        _ => <Widget>[],
      };
      return ExpansionTile(
        shape: const Border(),
        collapsedShape: const Border(),
        tilePadding: EdgeInsets.zero,
        expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
        iconColor: theme.detailMuted,
        collapsedIconColor: theme.detailMuted,
        childrenPadding: const EdgeInsetsDirectional.only(
          start: AppSizes.md,
          bottom: AppSizes.xxxs,
        ),
        title: Text(
          value is List ? '$label (${children.length})' : label,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        children: children,
      );
    }
    return RecordField(
      label: label,
      value: _displayPayloadValue(value, keyName),
    );
  }
}

String _payloadLabel(String key) {
  final normalized = key.replaceAll('_', ' ').replaceAll('-', ' ');
  return normalized
      .replaceAllMapped(
        RegExp(r'([a-z])([A-Z])'),
        (match) => '${match[1]} ${match[2]}',
      )
      .split(RegExp(r'\s+'))
      .where((part) => part.isNotEmpty)
      .indexed
      .map(
        (part) => part.$1 == 0
            ? '${part.$2[0].toUpperCase()}${part.$2.substring(1)}'
            : part.$2,
      )
      .join(' ');
}

bool _hasValue(Object? value) =>
    value != null &&
    (value is! String || value.trim().isNotEmpty) &&
    (value is! Map || value.isNotEmpty) &&
    (value is! List || value.isNotEmpty);

String _displayPayloadValue(Object? value, String? keyName) {
  if (value == null) return '-';
  final keyLooksLikeDate =
      keyName != null &&
      RegExp(
        r'(date|time|createdat|updatedat|deletedat)',
        caseSensitive: false,
      ).hasMatch(keyName);
  if (value is String && keyLooksLikeDate) return formatDateString(value);
  final text = value.toString().trim();
  return text.isEmpty ? '-' : text;
}
