import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/map_location_status.dart';
import 'package:office_hr/features/home/presentation/widgets/map_pin.dart';
import 'package:office_hr/features/home/presentation/widgets/map_refresh_button.dart';
import 'package:office_hr/features/home/presentation/widgets/map_shift_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapSliverAppBar extends HookConsumerWidget {
  const MapSliverAppBar({super.key});

  static const _defaultCenter = LatLng(21.9588, 96.0891);
  static const _mapZoom = 15.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = useMemoized(MapController.new);
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 1500),
    );
    final currentCenter = useState(_defaultCenter);
    final centerRef = useRef(_defaultCenter);
    final mapReady = useRef(false);
    final hasMovedToLocation = useRef(false);
    final isDisposed = useRef(false);
    final animationListener = useRef<VoidCallback?>(null);
    final animationStatusListener = useRef<AnimationStatusListener?>(null);

    void updateCenter(LatLng center) {
      centerRef.value = center;
      currentCenter.value = center;
    }

    void moveMap(LatLng center) {
      animationController.stop();
      updateCenter(center);
      if (mapReady.value) mapController.move(center, _mapZoom);
    }

    void animateMapMove(LatLng destination) {
      if (!mapReady.value) {
        moveMap(destination);
        return;
      }

      final oldListener = animationListener.value;
      if (oldListener != null) animationController.removeListener(oldListener);
      final oldStatusListener = animationStatusListener.value;
      if (oldStatusListener != null) {
        animationController.removeStatusListener(oldStatusListener);
      }

      final animation = CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      );
      final latTween = Tween<double>(
        begin: centerRef.value.latitude,
        end: destination.latitude,
      );
      final lngTween = Tween<double>(
        begin: centerRef.value.longitude,
        end: destination.longitude,
      );

      void moveListener() {
        mapController.move(
          LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
          _mapZoom,
        );
      }

      void statusListener(AnimationStatus status) {
        if (status == AnimationStatus.completed && !isDisposed.value) {
          updateCenter(destination);
          animationController.removeListener(moveListener);
          animationController.removeStatusListener(statusListener);
          animationListener.value = null;
          animationStatusListener.value = null;
          animation.dispose();
        }
      }

      animationListener.value = moveListener;
      animationStatusListener.value = statusListener;
      animationController
        ..reset()
        ..addListener(moveListener)
        ..addStatusListener(statusListener)
        ..forward();
    }

    Future<void> handleLocationChanged(Position position) async {
      final location = LatLng(position.latitude, position.longitude);
      if (isDisposed.value) return;

      if (hasMovedToLocation.value) {
        animateMapMove(location);
      } else {
        moveMap(location);
        hasMovedToLocation.value = true;
      }

      final preferences = await SharedPreferences.getInstance();
      await preferences.setDouble('last_location_lat', position.latitude);
      await preferences.setDouble('last_location_lng', position.longitude);
    }

    useEffect(() {
      Future<void> loadCachedLocation() async {
        final preferences = await SharedPreferences.getInstance();
        final latitude = preferences.getDouble('last_location_lat');
        final longitude = preferences.getDouble('last_location_lng');
        if (isDisposed.value || latitude == null || longitude == null) return;

        final cachedCenter = LatLng(latitude, longitude);
        updateCenter(cachedCenter);
        if (mapReady.value) mapController.move(cachedCenter, _mapZoom);
      }

      final subscription = ref.listenManual<AsyncValue<Position>>(
        currentLocationProvider,
        (previous, next) => next.whenData(handleLocationChanged),
      );
      loadCachedLocation();

      return () {
        isDisposed.value = true;
        subscription.close();
        final listener = animationListener.value;
        if (listener != null) animationController.removeListener(listener);
        final statusListener = animationStatusListener.value;
        if (statusListener != null) {
          animationController.removeStatusListener(statusListener);
        }
      };
    }, const []);

    final currentUser = ref.watch(currentUserProvider);
    final locationAsync = ref.watch(currentLocationProvider);
    final location = locationAsync.hasValue ? locationAsync.value : null;
    final branch = currentUser.value?.employee?.workInfo.branch;

    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      title: MapShiftTitle(shift: currentUser.value?.employee?.workInfo.shift),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            FlutterMap(
              mapController: mapController,
              options: MapOptions(
                initialCenter: currentCenter.value,
                initialZoom: _mapZoom,
                onMapReady: () {
                  mapReady.value = true;
                  mapController.move(currentCenter.value, _mapZoom);
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
                        point: LatLng(
                          branch.geofence.latitude,
                          branch.geofence.longitude,
                        ),
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
                        child: const MapPin(),
                      ),
                    ],
                  ),
              ],
            ),
            MapLocationStatus(locationAsync: locationAsync),
            MapRefreshButton(
              onPressed: () => ref.invalidate(currentLocationProvider),
            ),
          ],
        ),
      ),
    );
  }
}
