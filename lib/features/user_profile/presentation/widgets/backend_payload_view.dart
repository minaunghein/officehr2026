import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/date_formatter.dart';

class CompanyPayloadView extends StatelessWidget {
  const CompanyPayloadView({
    super.key,
    required this.title,
    required this.icon,
    required this.payload,
  });

  final String title;
  final IconData icon;
  final Map<String, dynamic> payload;

  @override
  Widget build(BuildContext context) {
    final entries = payload.entries
        .where((entry) => _hasValue(entry.value))
        .toList();
    return UserProfileSection(
      title: title,
      icon: icon,
      children: entries.isEmpty
          ? [
              Text(
                'No information provided.',
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
    if (value is Map) {
      final map = Map<String, dynamic>.from(value as Map);
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ExpansionTile(
          shape: const Border(),
          collapsedShape: const Border(),
          tilePadding: EdgeInsets.zero,
          childrenPadding: const EdgeInsets.only(
            left: AppSizes.lg,
            bottom: AppSizes.xxxs,
          ),
          initiallyExpanded: false,
          title: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          children: map.entries
              .where((entry) => _hasValue(entry.value))
              .map(
                (entry) => _PayloadField(
                  label: _payloadLabel(entry.key),
                  keyName: entry.key,
                  value: entry.value,
                ),
              )
              .toList(),
        ),
      );
    }
    if (value is List) {
      final list = value as List;
      return ExpansionTile(
        shape: const Border(),
        collapsedShape: const Border(),
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(
          left: AppSizes.lg,
          bottom: AppSizes.xxxs,
        ),
        title: Text('$label (${list.length})'),
        children: list
            .asMap()
            .entries
            .map(
              (entry) => _PayloadField(
                label: 'Entry ${entry.key + 1}',
                value: entry.value,
              ),
            )
            .toList(),
      );
    }
    return UserProfileInfoRow(
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
