import 'package:flutter/material.dart';
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
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            ...payload.entries.map(
              (entry) => _PayloadField(
                label: _payloadLabel(entry.key),
                keyName: entry.key,
                value: entry.value,
              ),
            ),
          ],
        ),
      ),
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
    if (value is Map) {
      final map = Map<String, dynamic>.from(value as Map);
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ExpansionTile(
          shape: const Border(),
          collapsedShape: const Border(),
          tilePadding: EdgeInsets.zero,
          childrenPadding: const EdgeInsets.only(left: 16, bottom: 4),
          initiallyExpanded: true,
          title: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          children: map.entries
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
        childrenPadding: const EdgeInsets.only(left: 16, bottom: 4),
        title: Text('$label (${list.length})'),
        children: list
            .asMap()
            .entries
            .map(
              (entry) =>
                  _PayloadField(label: '#${entry.key + 1}', value: entry.value),
            )
            .toList(),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: Text(
              _displayPayloadValue(value, keyName),
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
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
      .map((part) => '${part[0].toUpperCase()}${part.substring(1)}')
      .join(' ');
}

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
