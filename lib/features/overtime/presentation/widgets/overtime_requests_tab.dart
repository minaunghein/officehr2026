import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/presentation/providers/overtime_providers.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_request_card.dart';

import 'package:easy_localization/easy_localization.dart';

enum _StatusFilter {
  all('All'),
  pending('Pending'),
  approved('Approved'),
  rejected('Rejected');

  const _StatusFilter(this.label);

  final String label;

  bool matches(OvertimeRequest request) {
    return switch (this) {
      _StatusFilter.all => true,
      _StatusFilter.pending => request.status == OvertimeStatus.pending,
      _StatusFilter.approved => request.status == OvertimeStatus.approved,
      _StatusFilter.rejected => request.status == OvertimeStatus.rejected,
    };
  }
}

/// The signed-in user's own overtime requests with status filter chips.
class OvertimeRequestsTab extends HookConsumerWidget {
  const OvertimeRequestsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsAsync = ref.watch(overtimeRequestsProvider);
    final filter = useState(_StatusFilter.all);

    Future<void> refresh() =>
        ref.read(overtimeRequestsProvider.notifier).refresh();

    return requestsAsync.when(
      loading: () => ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ContainerShimmer(height: 140),
          SizedBox(height: 12),
          ContainerShimmer(height: 140),
        ],
      ),
      error: (error, _) => ErrorStateWidget(
        message: getUserFriendlyError(error),
        onRetry: refresh,
      ),
      data: (requests) => Column(
        children: [
          SizedBox(
            height: 52,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: _StatusFilter.values.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final option = _StatusFilter.values[index];
                return ChoiceChip(
                  label: Text(option.label.tr()),
                  selected: option == filter.value,
                  onSelected: (_) => filter.value = option,
                );
              },
            ),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                final visible = requests.where(filter.value.matches).toList();
                if (visible.isEmpty) {
                  return EmptyStateWidget(
                    icon: Icons.bolt_outlined,
                    title: 'No overtime requests'.tr(),
                    message:
                        'Tap the Request button to submit your first overtime request.'
                            .tr(),
                    onRefresh: refresh,
                  );
                }
                return RefreshIndicator(
                  onRefresh: refresh,
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 96),
                    itemCount: visible.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) =>
                        OvertimeRequestCard(request: visible[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
