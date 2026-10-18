import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_balance_card.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_summary_header.dart';

class LeaveBalancesTab extends ConsumerWidget {
  const LeaveBalancesTab({super.key, required this.onRefresh});

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balancesState = ref.watch(leaveBalancesProvider);

    return balancesState.when(
      data: (balances) {
        if (balances.isEmpty) {
          return EmptyStateWidget(
            icon: Icons.beach_access_outlined,
            title: 'No leave balance yet',
            message:
                'Your leave entitlement will appear here once it is assigned.',
            onRefresh: onRefresh,
          );
        }
        return RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            children: [
              LeaveSummaryHeader(balances: balances),
              const SizedBox(height: 20),
              Text(
                'Your Entitlements',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              for (final balance in balances)
                LeaveBalanceCard(balance: balance),
            ],
          ),
        );
      },
      loading: () => const _BalancesLoadingView(),
      error: (error, _) => ErrorStateWidget(
        message: getUserFriendlyError(error),
        onRetry: () => ref.read(leaveBalancesProvider.notifier).refresh(),
      ),
    );
  }
}

class _BalancesLoadingView extends StatelessWidget {
  const _BalancesLoadingView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContainerShimmer(height: 150),
            const SizedBox(height: 20),
            const ContainerShimmer(height: 20, width: 120),
            const SizedBox(height: 12),
            for (int i = 0; i < 3; i++) ...[
              const ContainerShimmer(height: 120),
              const SizedBox(height: 12),
            ],
          ],
        ),
      ),
    );
  }
}
