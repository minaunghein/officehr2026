import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/widgets/map_app_bar/map_pin.dart';

import 'package:easy_localization/easy_localization.dart';

/// Map showing where a clock request punch was taken. When the request
/// belongs to the reviewer's own branch, the branch geofence circle is drawn
/// for context.
class ClockRequestLocationMap extends ConsumerWidget {
  const ClockRequestLocationMap({
    super.key,
    required this.request,
    this.height = 220,
  });

  final ClockRequest request;
  final double height;

  static const _mapZoom = 14.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final latitude = request.latitude;
    final longitude = request.longitude;
    if (latitude == null || longitude == null) {
      return Container(
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.colorScheme.onSurface.withValues(alpha: 0.04),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.18),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_off_outlined,
              size: 28,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 8),
            Text(
              'No location data'.tr(),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
              ),
            ),
          ],
        ),
      );
    }

    final punchPoint = LatLng(latitude, longitude);
    final session = ref.watch(currentUserProvider).value;
    final branch = session?.employee?.workInfo.branch;
    final showBranchCircle =
        branch != null &&
        request.branchId.isNotEmpty &&
        branch.id == request.branchId;
    final radiusKm = request.branchRadiusKm ?? branch?.geofence.radiusKm ?? 0;

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: height,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: punchPoint,
            initialZoom: _mapZoom,
            backgroundColor: isDark
                ? theme.scaffoldBackgroundColor
                : const Color(0xFFE0E0E0),
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.tps.officehr',
              tileBuilder: isDark ? darkModeTileBuilder : null,
            ),
            if (showBranchCircle && radiusKm > 0)
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: LatLng(
                      branch.geofence.latitude,
                      branch.geofence.longitude,
                    ),
                    radius: radiusKm * 1000,
                    useRadiusInMeter: true,
                    color: const Color(0xFF0052CC).withValues(alpha: 0.15),
                    borderColor: const Color(0xFF0052CC).withValues(alpha: 0.4),
                    borderStrokeWidth: 2,
                  ),
                ],
              ),
            MarkerLayer(
              markers: [
                Marker(
                  point: punchPoint,
                  width: 24,
                  height: 24,
                  child: const MapPin(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
