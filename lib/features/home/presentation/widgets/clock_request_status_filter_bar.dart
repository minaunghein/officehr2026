import 'package:flutter/material.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';

import 'package:easy_localization/easy_localization.dart';

/// Horizontal choice chips filtering clock requests by status.
/// `null` selects all statuses.
class ClockRequestStatusFilterBar extends StatelessWidget {
  const ClockRequestStatusFilterBar({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final ClockRequestStatus? selected;
  final ValueChanged<ClockRequestStatus?> onChanged;

  @override
  Widget build(BuildContext context) {
    final filters = <ClockRequestStatus?>[null, ...ClockRequestStatus.values];

    return SizedBox(
      height: 62,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: filters.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final filter = filters[index];
          return ChoiceChip(
            label: Text(filter?.label.tr() ?? 'All'.tr()),
            selected: filter == selected,
            onSelected: (_) => onChanged(filter),
          );
        },
      ),
    );
  }
}
