import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => _onRefresh(ref),
        child: CustomScrollView(
          slivers: [
            MapSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed([
                  CurrentStatusCard(),
                  SizedBox(height: 24),
                  RecentActivity(),
                  SizedBox(height: 24),
                  MonthlyStatistics(),
                  SizedBox(height: 24),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh(WidgetRef ref) async {
    ref.read(attendanceProvider.notifier).refresh();
    ref.invalidate(monthlyAttendanceStatsProvider);
    ref.invalidate(currentLocationProvider);
    await ref.read(currentUserProvider.notifier).loadSession();
  }
}
