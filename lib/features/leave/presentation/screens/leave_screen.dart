import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_balance_card.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_request_card.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_summary_header.dart';

class LeaveScreen extends ConsumerStatefulWidget {
  const LeaveScreen({super.key});

  @override
  ConsumerState<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends ConsumerState<LeaveScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    await Future.wait([
      ref.read(leaveBalancesProvider.notifier).refresh(),
      ref.read(leaveRequestsProvider.notifier).refresh(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final balancesState = ref.watch(leaveBalancesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Leave', style: theme.textTheme.headlineMedium),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     tooltip: 'Refresh',
        //     onPressed: _refresh,
        //     icon: const Icon(Icons.refresh_rounded),
        //   ),
        // ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Balances'),
              Tab(text: 'My Requests'),
            ],
            labelColor: theme.colorScheme.primary,
            unselectedLabelColor: theme.colorScheme.onSurface.withValues(
              alpha: 0.5,
            ),
            enableFeedback: true,
            padding: EdgeInsets.all(8),
            splashBorderRadius: BorderRadius.circular(8),
            dividerColor: Colors.transparent,
            indicatorColor: theme.colorScheme.primary,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _BalancesTab(
            balancesState: balancesState,
            onRefresh: _refresh,
            onRetry: () => ref.read(leaveBalancesProvider.notifier).refresh(),
          ),
          _RequestsTab(onRefresh: _refresh),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(AppRoutes.createLeave),
        icon: const Icon(Icons.add_rounded),
        label: const Text('Request'),
      ),
    );
  }
}

class _BalancesTab extends StatelessWidget {
  const _BalancesTab({
    required this.balancesState,
    required this.onRefresh,
    required this.onRetry,
  });

  final AsyncValue<List<LeaveBalance>> balancesState;
  final Future<void> Function() onRefresh;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return balancesState.when(
      data: (balances) {
        if (balances.isEmpty) {
          return _EmptyState(
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
      loading: () => Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerShimmer(height: 150),
              const SizedBox(height: 20),
              ContainerShimmer(height: 20, width: 120),
              const SizedBox(height: 12),
              for (int i = 0; i < 3; i++) ...[
                ContainerShimmer(height: 120),
                const SizedBox(height: 12),
              ],
            ],
          ),
        ),
      ),
      error: (error, _) =>
          _ErrorState(message: getUserFriendlyError(error), onRetry: onRetry),
    );
  }
}

class _RequestsTab extends ConsumerWidget {
  const _RequestsTab({required this.onRefresh});

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsState = ref.watch(leaveRequestsProvider);

    return requestsState.when(
      data: (requests) {
        if (requests.isEmpty) {
          return _EmptyState(
            icon: Icons.event_note_rounded,
            title: 'No leave requests',
            message: 'Tap the Request button to submit your first leave.',
            onRefresh: onRefresh,
          );
        }
        return RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            itemCount: requests.length,
            itemBuilder: (context, index) =>
                LeaveRequestCard(request: requests[index]),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => _ErrorState(
        message: getUserFriendlyError(error),
        onRetry: () => ref.read(leaveRequestsProvider.notifier).refresh(),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.icon,
    required this.title,
    required this.message,
    required this.onRefresh,
  });

  final IconData icon;
  final String title;
  final String message;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RefreshIndicator(
      onRefresh: onRefresh,

      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 150, 16, 96),
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 64,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.55,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
