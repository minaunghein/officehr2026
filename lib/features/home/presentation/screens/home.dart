import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/branch/branch.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/map_sliver_app_bar.dart';
import 'package:office_hr/shared/date_formatter.dart';

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
                  _CurrentStatusCard(),
                  SizedBox(height: 24),
                  _RecentActivity(),
                  SizedBox(height: 24),
                  // _MonthlyStatistics(),
                  // SizedBox(height: 24),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh(WidgetRef ref) async {
    ref.invalidate(currentLocationProvider);
    await ref.read(currentUserProvider.notifier).loadSession();
  }
}

class _CurrentStatusCard extends ConsumerWidget {
  const _CurrentStatusCard();

  bool _isWithinRange(Position? currentLocation, Branch? branch) {
    if (currentLocation == null || branch == null) return false;
    final distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      branch.geofence.latitude,
      branch.geofence.longitude,
    );
    return distance <= 200;
  }

  String _getDistance(Position? currentLocation, Branch? branch) {
    if (currentLocation == null || branch == null) return 'N/A';
    final distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      branch.geofence.latitude,
      branch.geofence.longitude,
    );
    return distance.toStringAsFixed(1);
  }

  bool _isLate(DateTime? clockTime, Shift? shift) {
    final diffMinutes = _getLateDurationMinutes(clockTime, shift);
    return diffMinutes != null && diffMinutes > 0;
  }

  String _getLateDurationText(DateTime? clockTime, Shift? shift) {
    final diffMinutes = _getLateDurationMinutes(clockTime, shift);
    if (diffMinutes == null || diffMinutes <= 0) return '';

    final hours = diffMinutes ~/ 60;
    final minutes = diffMinutes % 60;

    if (hours > 0) {
      if (minutes > 0) {
        return '$hours hr $minutes min';
      } else {
        return '$hours hr';
      }
    } else {
      return '$minutes min';
    }
  }

  int? _getLateDurationMinutes(DateTime? clockTime, Shift? shift) {
    if (clockTime == null || shift == null || shift.days.isEmpty) {
      return null;
    }

    final todayWorkingDay = shift.days.where((workingDay) {
      return workingDay.dayNo == clockTime.weekday ||
          workingDay.day.toLowerCase() == _weekdayName(clockTime.weekday);
    }).firstOrNull;
    if (todayWorkingDay == null ||
        todayWorkingDay.isOffDay ||
        !todayWorkingDay.isWorkingDay) {
      return null;
    }

    final startMinutes = _timeToMinutes(
      todayWorkingDay.workStart ?? shift.defaultStart,
    );
    if (startMinutes == null) return null;

    final clockMinutes = clockTime.hour * 60 + clockTime.minute;
    return clockMinutes - startMinutes;
  }

  int? _timeToMinutes(String time) {
    final trimmed = time.trim();
    if (trimmed.isEmpty) return null;

    final parts = trimmed.split(':');
    if (parts.length >= 2) {
      final hour = int.tryParse(parts[0]);
      final minute = int.tryParse(parts[1]);
      if (hour == null || minute == null) return null;
      return hour * 60 + minute;
    }

    final compactTime = int.tryParse(trimmed);
    if (compactTime == null) return null;
    return (compactTime ~/ 100) * 60 + (compactTime % 100);
  }

  String _weekdayName(int weekday) {
    const weekdays = [
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday',
      'sunday',
    ];
    return weekdays[weekday - 1];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    // final attendanceState = ref.watch(attendanceProvider);
    final locationAsync = ref.watch(currentLocationProvider);
    final currentUser = ref.watch(currentUserProvider);

    // final isClockedIn = attendanceState.isClockedIn;
    // final clockTime = attendanceState.clockTime;
    final location = locationAsync.hasValue ? locationAsync.value : null;
    final branch = currentUser.value?.employee?.workInfo.branch;
    final shift = currentUser.value?.employee?.workInfo.shift;
    final inRange = _isWithinRange(location, branch);
    final hasDistance = location != null && branch != null;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Current Status',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       width: 10,
          //       height: 10,
          //       decoration: BoxDecoration(
          //         color: isClockedIn
          //             ? const Color(0xFF4CAF50)
          //             : const Color.fromARGB(255, 255, 0, 0),
          //         shape: BoxShape.circle,
          //       ),
          //     ),
          //     const SizedBox(width: 8),
          //     Text(
          //       isClockedIn ? 'Currently Clocked In' : 'Currently Clocked Out',
          //       style: theme.textTheme.bodyMedium?.copyWith(
          //         color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 8),
          Text(
            '${branch?.title ?? 'Not Loaded'}${hasDistance && !inRange ? ' | ${_getDistance(location, branch)}m away' : ''}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: hasDistance && inRange ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // Text(
          //   isClockedIn
          //       ? 'Clocked in at ${clockTime != null ? formatTime(clockTime.toLocal()) : "--:--"}'
          //       : 'Clocked out at ${clockTime != null ? formatTime(clockTime.toLocal()) : "--:--"}',
          //   style: theme.textTheme.titleMedium?.copyWith(
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          // const SizedBox(height: 4),
          // if (isClockedIn && _isLate(clockTime, shift))
          //   Text(
          //     'Late (${_getLateDurationText(clockTime, shift)})',
          //     style: theme.textTheme.bodyMedium?.copyWith(
          //       fontWeight: FontWeight.w700,
          //       color: const Color(0xFFD32F2F),
          //     ),
          //   ),
          const SizedBox(height: 24),
          // const ClockButton(),
          // if (attendanceState.error != null) ...[
          //   const SizedBox(height: 12),
          //   Text(
          //     'Error: ${attendanceState.error}',
          //     style: const TextStyle(color: Colors.red, fontSize: 12),
          //     textAlign: TextAlign.center,
          //   ),
          // ],
          const SizedBox(height: 24),
          const _LiveClockText(),
        ],
      ),
    );
  }
}

class _LiveClockText extends StatefulWidget {
  const _LiveClockText();

  @override
  State<_LiveClockText> createState() => _LiveClockTextState();
}

class _LiveClockTextState extends State<_LiveClockText> {
  late DateTime _now;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _now = DateTime.now();
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      formatDateTimeWithSeconds(_now),
      style: theme.textTheme.bodyMedium?.copyWith(
        color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _RecentActivity extends ConsumerWidget {
  const _RecentActivity();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    // final attendanceState = ref.watch(attendanceProvider);
    // final attendances = attendanceState.todayAttendances;
    // final isLoading = attendanceState.isLoading;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TODAY\'S ACTIVITY',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            // if (attendances.isNotEmpty)
            //   Text(
            //     '${attendances.length} record${attendances.length > 1 ? 's' : ''}',
            //     style: theme.textTheme.labelSmall?.copyWith(
            //       color: theme.colorScheme.primary,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
          ],
        ),
        const SizedBox(height: 12),
        //       if (isLoading && attendances.isEmpty)
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        //             side: BorderSide(
        //               color: theme.colorScheme.outline.withValues(alpha: 0.15),
        //             ),
        //           ),
        //           child: const Padding(
        //             padding: EdgeInsets.all(24),
        //             child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
        //           ),
        //         )
        //       else if (attendances.isEmpty)
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        //             side: BorderSide(
        //               color: theme.colorScheme.outline.withValues(alpha: 0.15),
        //             ),
        //           ),
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        //             child: Column(
        //               children: [
        //                 Icon(
        //                   Icons.history_rounded,
        //                   size: 40,
        //                   color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
        //                 ),
        //                 const SizedBox(height: 12),
        //                 Text(
        //                   'No activity today',
        //                   style: theme.textTheme.bodyMedium?.copyWith(
        //                     color: theme.colorScheme.onSurface.withValues(
        //                       alpha: 0.45,
        //                     ),
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         )
        //       else
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        //             side: BorderSide(
        //               color: theme.colorScheme.outline.withValues(alpha: 0.15),
        //             ),
        //           ),
        //           clipBehavior: Clip.hardEdge,
        //           child: Column(
        //             children: [
        //               for (int i = 0; i < attendances.length; i++) ...[
        //                 _AttendanceActivityTile(
        //                   attendance: attendances[i],
        //                   isFirst: i == 0,
        //                 ),
        //                 if (i < attendances.length - 1)
        //                   Divider(
        //                     height: 1,
        //                     indent: 60,
        //                     endIndent: 0,
        //                     color: theme.colorScheme.outline.withValues(alpha: 0.12),
        //                   ),
        //               ],
        //             ],
        //           ),
        //         ),
      ],
    );
  }
}

// class _AttendanceActivityTile extends StatelessWidget {
//   const _AttendanceActivityTile({
//     required this.attendance,
//     required this.isFirst,
//   });

//   final Attendance attendance;
//   final bool isFirst;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final isSod = attendance.isSod;
//     final clockTime = attendance.clockIn.toLocal();

//     final Color iconBgColor = isSod
//         ? const Color(0xFF1565C0).withValues(alpha: 0.1)
//         : const Color(0xFFC62828).withValues(alpha: 0.1);
//     final Color iconColor = isSod
//         ? const Color(0xFF1565C0)
//         : const Color(0xFFC62828);
//     final IconData icon = isSod ? Icons.login_rounded : Icons.logout_rounded;
//     final String label = isSod ? 'Clock In' : 'Clock Out';
//     final String statusBadge = attendance.status?.titles.firstOrNull ?? '';

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       child: Row(
//         children: [
//           Container(
//             width: 44,
//             height: 44,
//             decoration: BoxDecoration(
//               color: iconBgColor,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: iconColor, size: 22),
//           ),
//           const SizedBox(width: 14),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       '$label  ${formatTime(clockTime)}',
//                       style: theme.textTheme.titleSmall?.copyWith(
//                         fontWeight: FontWeight.w700,
//                         color: theme.colorScheme.onSurface,
//                       ),
//                     ),
//                     // if (isFirst) ...[
//                     //   const SizedBox(width: 8),
//                     //   Container(
//                     //     padding: const EdgeInsets.symmetric(
//                     //       horizontal: 7,
//                     //       vertical: 2,
//                     //     ),
//                     //     decoration: BoxDecoration(
//                     //       color: theme.colorScheme.primary.withValues(
//                     //         alpha: 0.1,
//                     //       ),
//                     //       borderRadius: BorderRadius.circular(20),
//                     //     ),
//                     //     child: Text(
//                     //       'Latest',
//                     //       style: theme.textTheme.labelSmall?.copyWith(
//                     //         color: theme.colorScheme.primary,
//                     //         fontWeight: FontWeight.w700,
//                     //         fontSize: 10,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ],
//                   ],
//                 ),
//                 const SizedBox(height: 3),
//                 Row(
//                   children: [
//                     Text(
//                       'Via ${attendance.clockInBy}',
//                       style: theme.textTheme.bodySmall?.copyWith(
//                         color: theme.colorScheme.onSurface.withValues(
//                           alpha: 0.5,
//                         ),
//                       ),
//                     ),
//                     if (statusBadge.isNotEmpty) ...[
//                       Text(
//                         '  ·  ',
//                         style: theme.textTheme.bodySmall?.copyWith(
//                           color: theme.colorScheme.onSurface.withValues(
//                             alpha: 0.3,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         statusBadge,
//                         style: theme.textTheme.bodySmall?.copyWith(
//                           color: theme.colorScheme.onSurface.withValues(
//                             alpha: 0.5,
//                           ),
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ],
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _MonthlyStatistics extends StatelessWidget {
//   const _MonthlyStatistics();

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Text(
//               'Monthly Statistics',
//               style: theme.textTheme.titleLarge?.copyWith(
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             Text(
//               formatMonthYear(DateTime.now()),
//               style: theme.textTheme.bodyMedium?.copyWith(
//                 fontWeight: FontWeight.w600,
//                 color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(
//               color: theme.colorScheme.outline.withValues(alpha: 0.15),
//             ),
//             color: theme.colorScheme.surface,
//           ),
//           child: IntrinsicHeight(
//             child: Row(
//               children: [
//                 _buildStatItem(theme, 'ATTENDANCE', '20 Days', null),
//                 VerticalDivider(
//                   width: 1,
//                   color: theme.colorScheme.outline.withValues(alpha: 0.15),
//                 ),
//                 _buildStatItem(
//                   theme,
//                   'LATE',
//                   '1h 12m',
//                   const Color(0xFFD32F2F),
//                 ),
//                 VerticalDivider(
//                   width: 1,
//                   color: theme.colorScheme.outline.withValues(alpha: 0.15),
//                 ),
//                 _buildStatItem(theme, 'OVERTIME', '4h 30m', null),
//                 VerticalDivider(
//                   width: 1,
//                   color: theme.colorScheme.outline.withValues(alpha: 0.15),
//                 ),
//                 _buildStatItem(theme, 'LEAVE', '1.5 Days', null),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildStatItem(
//     ThemeData theme,
//     String title,
//     String value,
//     Color? valueColor,
//   ) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               style: theme.textTheme.labelSmall?.copyWith(
//                 fontSize: 9,
//                 fontWeight: FontWeight.w800,
//                 letterSpacing: 0.2,
//                 color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 6),
//             Text(
//               value,
//               style: theme.textTheme.titleSmall?.copyWith(
//                 fontWeight: FontWeight.w800,
//                 color: valueColor,
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
