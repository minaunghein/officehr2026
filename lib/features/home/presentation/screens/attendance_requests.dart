import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_form_sheet.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendments_tab.dart';
import 'package:office_hr/features/home/presentation/widgets/my_clock_requests_tab.dart';

import 'package:easy_localization/easy_localization.dart';

/// Attendance requests hub: the user's amendment requests and their own
/// remote clock in/out requests, one per tab.
class AttendanceRequestsScreen extends HookConsumerWidget {
  const AttendanceRequestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final access = ref.watch(sessionAccessProvider);
    final showTabs = access.viewPunches && access.viewOwnClockRequests;
    final tabController = useTabController(initialLength: 2);
    final tabIndex = useState(0);

    useEffect(() {
      void listener() => tabIndex.value = tabController.index;
      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    final canSubmitAmendment =
        access.amendPunch && (!showTabs || tabIndex.value == 0);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Attendance Requests'.tr()),
        bottom: !showTabs
            ? null
            : TabBar(
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
                tabs: [
                  Tab(text: 'Amendments'.tr()),
                  Tab(text: 'Clock Requests'.tr()),
                ],
              ),
      ),
      floatingActionButton: canSubmitAmendment
          ? FloatingActionButton.extended(
              onPressed: () => showAttendanceAmendmentForm(context),
              icon: const Icon(Icons.add_rounded),
              label: Text('New Request'.tr()),
            )
          : null,
      body: showTabs
          ? TabBarView(
              controller: tabController,
              children: const [AttendanceAmendmentsTab(), MyClockRequestsTab()],
            )
          : access.viewPunches
          ? const AttendanceAmendmentsTab()
          : access.viewOwnClockRequests
          ? const MyClockRequestsTab()
          : null,
    );
  }
}
