import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/current_status_card.dart';
import 'package:office_hr/features/home/presentation/widgets/map_app_bar/map_sliver_app_bar.dart';
import 'package:office_hr/features/home/presentation/widgets/monthly_statistics.dart';
import 'package:office_hr/features/home/presentation/widgets/recent_activity.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(sessionAccessProvider);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => _onRefresh(context, ref),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            if (access.createPunch || access.requestClock)
              const MapSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed([
                  if (access.viewPunches ||
                      access.createPunch ||
                      access.requestClock) ...[
                    const CurrentStatusCard(),
                    const SizedBox(height: 24),
                  ],
                  if (access.viewPunches) ...[
                    const RecentActivity(),
                    const SizedBox(height: 24),
                    const MonthlyStatistics(),
                    const SizedBox(height: 24),
                  ],
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context, WidgetRef ref) async {
    await ref.read(currentUserProvider.notifier).loadSession();
    if (!context.mounted) return;
    final access = ref.read(sessionAccessProvider);
    if (access.createPunch || access.requestClock) {
      ref.invalidate(currentLocationProvider);
    }
    if (access.viewPunches) {
      ref.invalidate(monthlyAttendanceStatsProvider);
      await ref.read(attendanceProvider.notifier).refresh();
    }
  }
}
