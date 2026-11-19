import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_form_sheet.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendments_tab.dart';
import 'package:office_hr/features/home/presentation/widgets/my_clock_requests_tab.dart';

/// Attendance requests hub: the user's amendment requests and their own
/// remote clock in/out requests, one per tab.
class AttendanceRequestsScreen extends HookConsumerWidget {
  const AttendanceRequestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final tabController = useTabController(initialLength: 2);
    final tabIndex = useState(0);

    useEffect(() {
      void listener() => tabIndex.value = tabController.index;
      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    final isAmendmentsTab = tabIndex.value == 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Attendance Requests'),
        bottom: TabBar(
          controller: tabController,
          dividerColor: Colors.transparent,
          labelColor: theme.colorScheme.primary,
          unselectedLabelColor: theme.colorScheme.onSurface.withValues(
            alpha: 0.5,
          ),
          enableFeedback: true,
          padding: const EdgeInsets.all(8),
          splashBorderRadius: BorderRadius.circular(8),
          labelStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
          tabs: const [
            Tab(text: 'Amendments'),
            Tab(text: 'Clock Requests'),
          ],
        ),
      ),
      floatingActionButton: isAmendmentsTab
          ? FloatingActionButton.extended(
              onPressed: () => showAttendanceAmendmentForm(context),
              icon: const Icon(Icons.add_rounded),
              label: const Text('New Request'),
            )
          : null,
      body: TabBarView(
        controller: tabController,
        children: const [AttendanceAmendmentsTab(), MyClockRequestsTab()],
      ),
    );
  }
}
