import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:office_hr/features/home/domain/entities/attendance.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';
import 'package:office_hr/shared/date_formatter.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _MapSliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                _CurrentStatusCard(),
                SizedBox(height: 24),
                _RecentActivity(),
                SizedBox(height: 24),
                _MonthlyStatistics(),
                SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _MapSliverAppBar extends ConsumerStatefulWidget {
  const _MapSliverAppBar();

  @override
  ConsumerState<_MapSliverAppBar> createState() => _MapSliverAppBarState();
}

class _MapSliverAppBarState extends ConsumerState<_MapSliverAppBar>
    with TickerProviderStateMixin {
  final MapController _mapController = MapController();
  LatLng _currentCenter = const LatLng(21.9588, 96.0891);
  late final ProviderSubscription<AsyncValue<Branch?>> _branchSubscription;
  bool _isMapReady = false;
  bool _hasMovedToBranch = false;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _branchSubscription = ref.listenManual<AsyncValue<Branch?>>(
      branchProvider,
      (previous, next) => next.whenData(_handleBranchChanged),
    );
    _loadCachedLocation();
  }

  @override
  void dispose() {
    _branchSubscription.close();
    _animationController?.dispose();
    super.dispose();
  }

  Future<void> _loadCachedLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final lat = prefs.getDouble('last_branch_lat');
    final lng = prefs.getDouble('last_branch_lng');
    if (lat != null && lng != null && mounted) {
      final cachedCenter = LatLng(lat, lng);
      setState(() {
        _currentCenter = cachedCenter;
      });
      if (_isMapReady) {
        _mapController.move(cachedCenter, 15.0);
      }
    }
  }

  Future<void> _handleBranchChanged(Branch? branch) async {
    if (branch == null) return;

    final newLatLng = LatLng(branch.latitude, branch.longitude);
    if (mounted) {
      if (_hasMovedToBranch) {
        _animatedMapMove(newLatLng, 15.0);
      } else {
        _moveMap(newLatLng, 15.0);
        _hasMovedToBranch = true;
      }
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('last_branch_lat', branch.latitude);
    await prefs.setDouble('last_branch_lng', branch.longitude);
  }

  void _moveMap(LatLng location, double zoom) {
    _animationController?.dispose();
    setState(() {
      _currentCenter = location;
    });
    if (_isMapReady) {
      _mapController.move(location, zoom);
    }
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    if (!_isMapReady) {
      _moveMap(destLocation, destZoom);
      return;
    }

    _animationController?.dispose();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    final latTween = Tween<double>(
      begin: _currentCenter.latitude,
      end: destLocation.latitude,
    );
    final lngTween = Tween<double>(
      begin: _currentCenter.longitude,
      end: destLocation.longitude,
    );

    final animation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.fastOutSlowIn,
    );

    _animationController!.addListener(() {
      final newLat = latTween.evaluate(animation);
      final newLng = lngTween.evaluate(animation);
      final newPosition = LatLng(newLat, newLng);

      _mapController.move(newPosition, destZoom);
    });

    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        setState(() {
          _currentCenter = destLocation;
        });
      }
    });

    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locationAsync = ref.watch(currentLocationProvider);
    final shiftAsync = ref.watch(shiftProvider);
    final branchAsync = ref.watch(branchProvider);
    final branch = branchAsync.hasValue ? branchAsync.value : null;
    final location = locationAsync.hasValue ? locationAsync.value : null;

    return SliverAppBar(
      expandedHeight: 280.0,
      floating: false,
      pinned: true,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.schedule_rounded,
              size: 16,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 8),

            Text(
              formatShiftWorkHours(shiftAsync.value),
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                shiftAsync.value?.shiftId ?? "Shift",
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: _currentCenter,
                initialZoom: 15.0,
                onMapReady: () {
                  _isMapReady = true;
                  _mapController.move(_currentCenter, 15.0);
                },
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.none,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.tps.officehr',
                ),
                if (branch != null)
                  CircleLayer(
                    circles: [
                      CircleMarker(
                        point: LatLng(branch.latitude, branch.longitude),
                        radius: 200,
                        useRadiusInMeter: true,
                        color: const Color(0xFF0052CC).withValues(alpha: 0.2),
                        borderColor: const Color(
                          0xFF0052CC,
                        ).withValues(alpha: 0.4),
                        borderStrokeWidth: 2,
                      ),
                    ],
                  ),
                if (location != null && !locationAsync.isLoading)
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: LatLng(location.latitude, location.longitude),
                        width: 24,
                        height: 24,
                        child: _buildMapPin(),
                      ),
                    ],
                  ),
              ],
            ),

            if (locationAsync.isLoading)
              Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 14,
                          height: 14,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Getting location...',
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            if (locationAsync.hasError)
              Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD32F2F).withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Location Error',
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    ref.invalidate(currentLocationProvider);
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.my_location_rounded,
                      color: theme.colorScheme.primary,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapPin() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2196F3),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF2196F3).withValues(alpha: 0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}

class _CurrentStatusCard extends ConsumerWidget {
  const _CurrentStatusCard();

  bool _isWithinRange(Position? currentLocation, Branch? branch) {
    if (currentLocation == null || branch == null) return false;
    final distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      branch.latitude,
      branch.longitude,
    );
    return distance <= 200;
  }

  String _getDistance(Position? currentLocation, Branch? branch) {
    if (currentLocation == null || branch == null) return 'N/A';
    final distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      branch.latitude,
      branch.longitude,
    );
    return distance.toStringAsFixed(1);
  }

  bool _isLate(DateTime? clockTime, Shift? shift) {
    if (clockTime == null || shift == null || shift.workingDays.isEmpty) {
      return false;
    }

    final todayDayId = (clockTime.weekday % 7) + 1;
    final todayWorkingDay = shift.workingDays.firstWhere(
      (workingDay) => workingDay.dayId == todayDayId,
      orElse: () => shift.workingDays.first,
    );
    if (todayWorkingDay.isOffDay) return false;

    final clockMinutes = clockTime.hour * 60 + clockTime.minute;
    final startMinutes =
        (todayWorkingDay.workStart ~/ 100) * 60 +
        (todayWorkingDay.workStart % 100);
    return clockMinutes > startMinutes;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceState = ref.watch(attendanceProvider);
    final locationAsync = ref.watch(currentLocationProvider);
    final branchAsync = ref.watch(branchProvider);
    final shiftAsync = ref.watch(shiftProvider);

    final isClockedIn = attendanceState.isClockedIn;
    final clockTime = attendanceState.clockTime;
    final location = locationAsync.hasValue ? locationAsync.value : null;
    final branch = branchAsync.hasValue ? branchAsync.value : null;
    final shift = shiftAsync.hasValue ? shiftAsync.value : null;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: isClockedIn
                      ? const Color(0xFF4CAF50)
                      : const Color(0xFF9E9E9E),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                isClockedIn ? 'Currently Clocked In' : 'Currently Clocked Out',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${branch?.name ?? 'Not Loaded'}${hasDistance && !inRange ? ' | ${_getDistance(location, branch)}m away' : ''}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: hasDistance && inRange ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            isClockedIn
                ? 'Clocked in at ${clockTime != null ? formatTime(clockTime) : "--:--"}'
                : 'Not clocked in yet',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          if (isClockedIn && _isLate(clockTime, shift))
            Text(
              'Late',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xFFD32F2F),
              ),
            ),
          const SizedBox(height: 24),
          const ClockButton(),
          if (attendanceState.error != null) ...[
            const SizedBox(height: 12),
            Text(
              'Error: ${attendanceState.error}',
              style: const TextStyle(color: Colors.red, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
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
    final attendanceState = ref.watch(attendanceProvider);
    final attendances = attendanceState.todayAttendances;
    final isLoading = attendanceState.isLoading;

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
            if (attendances.isNotEmpty)
              Text(
                '${attendances.length} record${attendances.length > 1 ? 's' : ''}',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        if (isLoading && attendances.isEmpty)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              side: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            ),
          )
        else if (attendances.isEmpty)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              side: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                children: [
                  Icon(
                    Icons.history_rounded,
                    size: 40,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'No activity today',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.45,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              side: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.15),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                for (int i = 0; i < attendances.length; i++) ...[
                  _AttendanceActivityTile(
                    attendance: attendances[i],
                    isFirst: i == 0,
                  ),
                  if (i < attendances.length - 1)
                    Divider(
                      height: 1,
                      indent: 60,
                      endIndent: 0,
                      color: theme.colorScheme.outline.withValues(alpha: 0.12),
                    ),
                ],
              ],
            ),
          ),
      ],
    );
  }
}

class _AttendanceActivityTile extends StatelessWidget {
  const _AttendanceActivityTile({
    required this.attendance,
    required this.isFirst,
  });

  final Attendance attendance;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSod = attendance.isSod;
    final clockTime = attendance.clockIn.toLocal();

    final Color iconBgColor = isSod
        ? const Color(0xFF1565C0).withValues(alpha: 0.1)
        : const Color(0xFFC62828).withValues(alpha: 0.1);
    final Color iconColor = isSod
        ? const Color(0xFF1565C0)
        : const Color(0xFFC62828);
    final IconData icon = isSod ? Icons.login_rounded : Icons.logout_rounded;
    final String label = isSod ? 'Clock In' : 'Clock Out';
    final String statusBadge = attendance.status?.titles.firstOrNull ?? '';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$label  ${formatTime(clockTime)}',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    // if (isFirst) ...[
                    //   const SizedBox(width: 8),
                    //   Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 7,
                    //       vertical: 2,
                    //     ),
                    //     decoration: BoxDecoration(
                    //       color: theme.colorScheme.primary.withValues(
                    //         alpha: 0.1,
                    //       ),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Text(
                    //       'Latest',
                    //       style: theme.textTheme.labelSmall?.copyWith(
                    //         color: theme.colorScheme.primary,
                    //         fontWeight: FontWeight.w700,
                    //         fontSize: 10,
                    //       ),
                    //     ),
                    //   ),
                    // ],
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      'Via ${attendance.clockInBy}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    if (statusBadge.isNotEmpty) ...[
                      Text(
                        '  ·  ',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.3,
                          ),
                        ),
                      ),
                      Text(
                        statusBadge,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.5,
                          ),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MonthlyStatistics extends StatelessWidget {
  const _MonthlyStatistics();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Monthly Statistics',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'January 2026',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.15),
            ),
            color: theme.colorScheme.surface,
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                _buildStatItem(theme, 'ATTENDANCE', '20 Days', null),
                VerticalDivider(
                  width: 1,
                  color: theme.colorScheme.outline.withValues(alpha: 0.15),
                ),
                _buildStatItem(
                  theme,
                  'LATE',
                  '1h 12m',
                  const Color(0xFFD32F2F),
                ),
                VerticalDivider(
                  width: 1,
                  color: theme.colorScheme.outline.withValues(alpha: 0.15),
                ),
                _buildStatItem(theme, 'OVERTIME', '4h 30m', null),
                VerticalDivider(
                  width: 1,
                  color: theme.colorScheme.outline.withValues(alpha: 0.15),
                ),
                _buildStatItem(theme, 'LEAVE', '1.5 Days', null),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(
    ThemeData theme,
    String title,
    String value,
    Color? valueColor,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.labelSmall?.copyWith(
                fontSize: 9,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.2,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: valueColor,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
