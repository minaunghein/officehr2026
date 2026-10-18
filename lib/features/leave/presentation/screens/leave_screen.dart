import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_balances_tab.dart';
import 'package:office_hr/features/leave/presentation/widgets/leave_requests_tab.dart';

class LeaveScreen extends HookConsumerWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final tabController = useTabController(initialLength: 2);

    Future<void> refresh() async {
      await Future.wait([
        ref.read(leaveBalancesProvider.notifier).refresh(),
        ref.read(leaveRequestsProvider.notifier).refresh(),
      ]);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Leave', style: theme.textTheme.headlineMedium),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: 'Balances'),
              Tab(text: 'My Requests'),
            ],
            labelColor: theme.colorScheme.primary,
            unselectedLabelColor: theme.colorScheme.onSurface.withValues(
              alpha: 0.5,
            ),
            enableFeedback: true,
            padding: const EdgeInsets.all(8),
            splashBorderRadius: BorderRadius.circular(8),
            dividerColor: Colors.transparent,
            indicatorColor: theme.colorScheme.primary,
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          LeaveBalancesTab(onRefresh: refresh),
          LeaveRequestsTab(onRefresh: refresh),
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
