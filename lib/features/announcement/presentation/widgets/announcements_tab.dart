import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/announcement/presentation/providers/announcement_providers.dart';
import 'package:office_hr/features/announcement/presentation/widgets/announcement_card.dart';

import 'package:easy_localization/easy_localization.dart';

List<({String value, String label})> _statusFilters() => [
  (value: 'ALL', label: 'All'.tr()),
  (value: 'PUBLISHED', label: 'Published'.tr()),
  (value: 'DRAFT', label: 'Drafts'.tr()),
];

/// Published-announcement feed with a status filter and pull-to-refresh.
class AnnouncementsTab extends HookConsumerWidget {
  const AnnouncementsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcementsAsync = ref.watch(announcementsProvider);
    final selectedStatus = useState('ALL');

    return Column(
      children: [
        SizedBox(
          height: 62,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: _statusFilters().length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final filter = _statusFilters()[index];
              return ChoiceChip(
                label: Text(filter.label),
                selected: filter.value == selectedStatus.value,
                onSelected: (_) {
                  selectedStatus.value = filter.value;
                  ref
                      .read(announcementsProvider.notifier)
                      .setStatusFilter(filter.value);
                },
              );
            },
          ),
        ),
        Expanded(
          child: announcementsAsync.when(
            loading: () => ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ContainerShimmer(height: 140),
                SizedBox(height: 12),
                ContainerShimmer(height: 140),
                SizedBox(height: 12),
                ContainerShimmer(height: 140),
              ],
            ),
            error: (error, _) => ErrorStateWidget(
              message: getUserFriendlyError(error),
              onRetry: () => ref.read(announcementsProvider.notifier).refresh(),
            ),
            data: (announcements) {
              if (announcements.isEmpty) {
                return EmptyStateWidget(
                  icon: Icons.campaign_outlined,
                  title: 'No announcements'.tr(),
                  message: 'Company announcements will appear here.'.tr(),
                  onRefresh: () =>
                      ref.read(announcementsProvider.notifier).refresh(),
                  centered: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () =>
                    ref.read(announcementsProvider.notifier).refresh(),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: announcements.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) =>
                      AnnouncementCard(announcement: announcements[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
