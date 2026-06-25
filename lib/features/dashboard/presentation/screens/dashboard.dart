import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/attendance/presentation/screens/team.dart';
import 'package:office_hr/features/dashboard/presentation/providers/dashboard_provider.dart';
import 'package:office_hr/features/attendance/presentation/screens/home.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';
import 'package:office_hr/features/dashboard/presentation/widgets/dashboard_drawer.dart';
import 'package:office_hr/shared/global.dart';

class Dashboard extends ConsumerWidget {
  Dashboard({super.key});

  final _pages = <Widget>[
    HomeScreen(),
    SizedBox(child: Center(child: Text('Attendance'))),
    TeamScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(dashboardIndexProvider);
    final safeIndex = currentIndex >= _pages.length ? 0 : currentIndex;

    return Scaffold(
      appBar: _DashboardAppBar(ref: ref),
      drawer: const DashboardDrawer(),
      body: IndexedStack(index: safeIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        iconSize: 22,
        currentIndex: safeIndex,
        onTap: (i) => ref.read(dashboardIndexProvider.notifier).select(i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_outlined),
            activeIcon: Icon(Icons.groups_2_rounded),
            label: 'Team',
          ),
        ],
      ),
    );
  }
}

class _DashboardAppBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const _DashboardAppBar({required this.ref});
  final WidgetRef ref;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 8);

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'GOOD MORNING';
    } else if (hour < 17) {
      return 'GOOD AFTERNOON';
    } else if (hour < 20) {
      return 'GOOD EVENING';
    } else {
      return 'GOOD NIGHT';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final themeStyle = ref.watch(themeProvider);
    final theme = Theme.of(context);
    final userDetails = ref.watch(userDetailsProvider);
    final bio = userDetails.value?.userBio;
    final fullName =
        buildFullName(bio?.basicInfo) ?? userDetails.value?.username;

    return AppBar(
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          !userDetails.hasError &&
                  userDetails.value != null &&
                  userDetails.value!.profileUrl.isNotEmpty
              ? ClipOval(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CachedNetworkImage(
                      imageUrl: userDetails.value!.profileUrl,
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
              if (userDetails.hasError)
                Text(
                  'Error Getting User Info',
                  style: theme.textTheme.bodySmall?.copyWith(color: Colors.red),
                )
              else
                Text(
                  fullName ?? 'UNKNOWN',
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
        IconButton(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: theme.colorScheme.primary,
          ),
          onPressed: () {},
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
