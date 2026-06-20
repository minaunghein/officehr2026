import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/shared/date_formatter.dart';
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
                SizedBox(height: 1000),
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
  bool _isFirstLocationUpdate = true;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _loadCachedLocation();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  Future<void> _loadCachedLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final lat = prefs.getDouble('last_lat');
    final lng = prefs.getDouble('last_lng');
    if (lat != null && lng != null && mounted) {
      setState(() {
        _currentCenter = LatLng(lat, lng);
      });
      if (_isFirstLocationUpdate) {
        _mapController.move(_currentCenter, 15.0);
      }
    }
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
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
      setState(() {
        _currentCenter = newPosition;
      });
    });

    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locationAsync = ref.watch(currentLocationProvider);

    ref.listen<AsyncValue<Position>>(currentLocationProvider, (previous, next) {
      next.whenData((position) async {
        final newLatLng = LatLng(position.latitude, position.longitude);
        if (mounted) {
          _isFirstLocationUpdate = false;
          _animatedMapMove(newLatLng, 15.0);
        }

        final prefs = await SharedPreferences.getInstance();
        await prefs.setDouble('last_lat', position.latitude);
        await prefs.setDouble('last_lng', position.longitude);
      });
    });

    return SliverAppBar(
      expandedHeight: 280.0,
      floating: false,
      pinned: true,
      // backgroundColor: theme.colorScheme.surface,
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
              '09:00 AM - 06:00 PM',
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
                'Shift A',
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
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.none,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.tps.officehr',
                ),
                if (locationAsync.hasValue &&
                    !locationAsync.isLoading &&
                    !_isFirstLocationUpdate)
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: _currentCenter,
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceState = ref.watch(attendanceProvider);
    final isClockedIn = attendanceState.isClockedIn;
    final clockTime = attendanceState.clockTime;
    final isLoading = attendanceState.isLoading;

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
              color: const Color(0xFF0D1B2A),
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
          const SizedBox(height: 16),
          Text(
            isClockedIn
                ? 'Clocked in at ${clockTime != null ? formatTime(clockTime) : "--:--"}'
                : 'Not clocked in yet',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: const Color(0xFF0D1B2A),
            ),
          ),
          const SizedBox(height: 4),
          if (isClockedIn && clockTime != null && clockTime.hour > 9)
            Text(
              'Late',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xFFD32F2F),
              ),
            ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton.icon(
              onPressed: isLoading
                  ? null
                  : () async {
                      final location = ref.read(currentLocationProvider).value;
                      if (location != null) {
                        await ref
                            .read(attendanceProvider.notifier)
                            .toggleClockIn(
                              lat: location.latitude,
                              long: location.longitude,
                            );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Please wait for location to be available',
                            ),
                          ),
                        );
                      }
                    },
              icon: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Icon(
                      isClockedIn
                          ? Icons.exit_to_app_rounded
                          : Icons.login_rounded,
                      color: Colors.white,
                    ),
              label: Text(
                isClockedIn ? 'Clock Out Now' : 'Clock In Now',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: isClockedIn
                    ? const Color(0xFFC62828)
                    : const Color(0xFF2E7D32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
            ),
          ),
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

class _RecentActivity extends StatelessWidget {
  const _RecentActivity();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'RECENT ACTIVITY',
          style: theme.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.2),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.02),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Material(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: const Icon(
                Icons.login_rounded,
                color: Color(0xFF1565C0),
                size: 28,
              ),
              title: Text(
                'Clock In: 09:06 AM',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF0D1B2A),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  '84 Street, Mandalay, Myanmar',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right_rounded,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
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
                color: const Color(0xFF0D1B2A),
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
            color: const Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.15),
            ),
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
                color: valueColor ?? const Color(0xFF0D1B2A),
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
