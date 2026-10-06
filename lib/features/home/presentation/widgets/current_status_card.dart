import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/branch/branch.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/state/attendance_state.dart';
import 'package:office_hr/features/home/presentation/widgets/break_action.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_button.dart';
import 'package:office_hr/features/home/presentation/widgets/live_clock.dart';
import 'package:office_hr/shared/date_formatter.dart';

class CurrentStatusCard extends ConsumerWidget {
  const CurrentStatusCard({super.key});

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

  bool _isLate(String? clockInTime, Shift? shift) {
    final clockIn = parseClockTime(clockInTime);
    final shiftStart = getTodayShiftStart(shift);
    if (clockIn == null || shiftStart == null) return false;

    return clockIn.isAfter(shiftStart);
  }

  String _getLateDurationText(String? clockInTime, Shift? shift) {
    final clockIn = parseClockTime(clockInTime);
    final shiftStart = getTodayShiftStart(shift);
    if (clockIn == null || shiftStart == null || !clockIn.isAfter(shiftStart)) {
      return '';
    }

    final duration = clockIn.difference(shiftStart);
    return formatDurationText(duration);
  }

  String _getPrimaryClockTimeText(AttendanceState attendanceState) {
    if (attendanceState.isClockedIn) {
      return 'Clocked in at ${formatAttendanceTime(attendanceState.clockInTime)}';
    }

    if (attendanceState.clockOutTime != null &&
        attendanceState.clockOutTime!.isNotEmpty) {
      return 'Clocked out at ${formatAttendanceTime(attendanceState.clockOutTime)}';
    }

    return '--:--';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceAsync = ref.watch(attendanceProvider);
    final locationAsync = ref.watch(currentLocationProvider);
    final currentUser = ref.watch(currentUserProvider);

    final attendanceState = attendanceAsync.value ?? const AttendanceState();
    final isClockedIn = attendanceState.isClockedIn;
    final location = locationAsync.hasValue ? locationAsync.value : null;
    final branch = currentUser.value?.employee?.workInfo.branch;
    final shift = currentUser.value?.employee?.workInfo.shift;
    final inRange = _isWithinRange(location, branch);
    final hasDistance = location != null && branch != null;
    final isLate = _isLate(attendanceState.clockInTime, shift);
    final lateDurationText = _getLateDurationText(
      attendanceState.clockInTime,
      shift,
    );

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current Status',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          attendanceState.isRefreshing
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ContainerShimmer(width: 12, height: 12),
                    const SizedBox(width: 8),
                    ContainerShimmer(width: 140, height: 14),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: attendanceState.isClockedIn
                            ? const Color(0xFF4CAF50)
                            : const Color.fromARGB(255, 255, 0, 0),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      attendanceState.statusText,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

          const SizedBox(height: 8),

          attendanceState.isRefreshing
              ? ContainerShimmer(width: 100, height: 14)
              : Text(
                  '${branch?.title ?? 'No Branch'}${hasDistance && !inRange ? ' | ${_getDistance(location, branch)}m away' : ''}',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: hasDistance && inRange ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Column(
            children: [
              attendanceState.isRefreshing
                  ? ContainerShimmer(width: 100, height: 22)
                  : Text(
                      _getPrimaryClockTimeText(attendanceState),
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.8,
                        ),
                        fontWeight: FontWeight.w700,
                      ),
                    ),

              const SizedBox(height: 4),
              if (isClockedIn && isLate)
                Text(
                  'Late ($lateDurationText)',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFD32F2F),
                  ),
                ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const ClockButton(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              BreakActions(shift: shift),
              if (attendanceState.error != null) ...[
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'Error: ${attendanceState.error}',
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),

          const SizedBox(height: 24),
          const LiveClockText(),
        ],
      ),
    );
  }
}
