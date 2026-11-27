import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/dashboard/presentation/providers/dashboard_provider.dart';
import 'package:office_hr/features/dashboard/presentation/widgets/dashboard_drawer.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/home/presentation/screens/attendance.dart';
import 'package:office_hr/features/home/presentation/screens/home.dart';
import 'package:office_hr/features/home/presentation/screens/team.dart';

import 'package:easy_localization/easy_localization.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(dashboardIndexProvider);
    final access = ref.watch(sessionAccessProvider);
    final enabled = [true, access.viewPunches, access.team];
    final selected =
        currentIndex >= 0 &&
            currentIndex < enabled.length &&
            enabled[currentIndex]
        ? currentIndex
        : 0;

    return Scaffold(
      appBar: _DashboardAppBar(isTeamTab: selected == 2),
      drawer: const DashboardDrawer(),
      body: IndexedStack(
        index: selected,
        children: [
          const HomeScreen(),
          access.viewPunches
              ? const AttendanceScreen()
              : const SizedBox.shrink(),
          access.team ? const TeamScreen() : const SizedBox.shrink(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        height: 56,
        indicatorColor: Colors.transparent,
        selectedIndex: selected,
        onDestinationSelected: (i) {
          if (enabled[i]) ref.read(dashboardIndexProvider.notifier).select(i);
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard_rounded),
            label: 'Home'.tr(),
          ),
          NavigationDestination(
            enabled: access.viewPunches,
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Attendance'.tr(),
          ),
          NavigationDestination(
            enabled: access.team,
            icon: Icon(Icons.groups_2_outlined),
            selectedIcon: Icon(Icons.groups_2_rounded),
            label: 'Team'.tr(),
          ),
        ],
      ),
    );
  }
}

class _DashboardAppBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const _DashboardAppBar({required this.isTeamTab});
  final bool isTeamTab;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8);

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'GOOD MORNING'.tr();
    } else if (hour < 17) {
      return 'GOOD AFTERNOON'.tr();
    } else if (hour < 20) {
      return 'GOOD EVENING'.tr();
    } else {
      return 'GOOD NIGHT'.tr();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final themeStyle = ref.watch(themeProvider);
    final theme = Theme.of(context);
    final currentUser = ref.watch(currentUserProvider);
    final fullName = currentUser.value?.displayName;
    // buildFullName(bio?.basicInfo) ?? userDetails.value?.username;

    final access = ref.watch(sessionAccessProvider);

    // The bell badge only surfaces items awaiting action.
    final totalBadgeCount = access.viewAnnouncements && access.reviewClock
        ? ref.watch(pendingClockRequestsBadgeCountProvider).value ?? 0
        : 0;

    return AppBar(
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      // leadingWidth: 38,
      title: Row(
        children: [
          !currentUser.hasError &&
                  currentUser.value != null &&
                  currentUser.value!.profileUrl.isNotEmpty
              ? ClipOval(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CachedNetworkImage(
                      imageUrl: currentUser.value!.profileUrl,
                      httpHeaders: ref.watch(authImageHeadersProvider),
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: theme.colorScheme.primaryContainer,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.primaryColor),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.person),
                ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _getGreeting(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              if (currentUser.hasError)
                Text(
                  'Error Getting User Info'.tr(),
                  style: theme.textTheme.bodySmall?.copyWith(color: Colors.red),
                )
              else
                Text(
                  fullName ?? 'UNKNOWN'.tr(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
            ],
          ),
        ],
      ),
      actions: [
        if (isTeamTab)
          IconButton(
            tooltip: 'Scan Staff ID Card'.tr(),
            color: theme.colorScheme.primary,
            icon: const Icon(Icons.qr_code_scanner_rounded),
            onPressed: appRouteTap(context, access, AppRoutes.qrScanner),
          ),
        IconButton(
          tooltip: 'Announcements'.tr(),
          color: theme.colorScheme.primary,
          icon: Badge.count(
            count: totalBadgeCount,
            isLabelVisible: totalBadgeCount > 0,
            child: const Icon(Icons.notifications_none_rounded),
          ),
          onPressed: appRouteTap(context, access, AppRoutes.announcements),
        ),
        // IconButton(
        //   icon: Icon(
        //     themeStyle == OfficeHrTheme.dark
        //         ? Icons.dark_mode_outlined
        //         : Icons.light_mode_outlined,
        //     color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
        //   ),
        //   onPressed: () {
        //     ref
        //         .read(themeProvider.notifier)
        //         .setTheme(
        //           themeStyle == OfficeHrTheme.dark
        //               ? OfficeHrTheme.light
        //               : OfficeHrTheme.dark,
        //         );
        //   },
        // ),
      ],
    );
  }
}
