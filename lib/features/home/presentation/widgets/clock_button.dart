import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/branch/branch.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/home/presentation/utils/clock_photo_upload.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_photo_preview_dialog.dart';
import 'package:office_hr/features/home/presentation/widgets/out_of_range_clock_dialog.dart';

import 'package:easy_localization/easy_localization.dart';

class ClockButton extends HookConsumerWidget {
  const ClockButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendanceAsync = ref.watch(attendanceProvider);
    final attendanceState = attendanceAsync.value;
    final currentUser = ref.watch(currentUserProvider);
    final isClockedIn = attendanceState?.isClockedIn ?? false;
    final isUploadingPhoto = useState(false);
    final isLoading =
        attendanceAsync.isLoading ||
        isUploadingPhoto.value ||
        (attendanceState?.isPrimaryClockButtonLoading ?? false);

    final user = currentUser.value;
    final branch = user?.employee?.workInfo.branch;
    final optionalLocation = user?.optionalLocation ?? false;
    final currentLocation = ref.watch(currentLocationProvider).value;

    final distanceToBranch = _distanceToBranch(currentLocation, branch);
    final inRange =
        distanceToBranch != null &&
        branch != null &&
        distanceToBranch <= branch.geofence.radiusKm * 1000;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        onPressed: isLoading
            ? null
            : () async {
                final location = ref.read(currentLocationProvider).value;

                // Inside the geofence, or location is optional for this user:
                // capture the mandatory punch photo, then clock directly.
                if (inRange || optionalLocation) {
                  final photoPath = await captureClockPhoto(context);
                  if (photoPath == null || !context.mounted) return;

                  isUploadingPhoto.value = true;
                  final String imgId;
                  try {
                    imgId = await uploadClockPhoto(ref, photoPath);
                  } catch (error) {
                    isUploadingPhoto.value = false;
                    if (context.mounted) {
                      SnackbarUtils.showError(getUserFriendlyError(error));
                    }
                    return;
                  }
                  isUploadingPhoto.value = false;

                  if (context.mounted) {
                    await _clock(context, ref, location, imgId);
                  }
                  return;
                }

                // Location is mandatory and the user is outside the branch
                // radius: a location fix is required before a request can be
                // submitted for approval.
                if (location == null) {
                  SnackbarUtils.showInfo(
                    'Please wait for location to be available'.tr(),
                  );
                  return;
                }

                if (context.mounted) {
                  await showOutOfRangeClockRequestDialog(
                    context,
                    isClockIn: !isClockedIn,
                    location: location,
                    distance: distanceToBranch,
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
                isClockedIn ? Icons.exit_to_app_rounded : Icons.login_rounded,
                color: Colors.white,
              ),
        label: Text(
          isClockedIn ? 'Clock Out Now'.tr() : 'Clock In Now'.tr(),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          backgroundColor: isClockedIn
              ? const Color(0xFFC62828)
              : const Color(0xFF2E7D32),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
      ),
    );
  }

  double? _distanceToBranch(Position? location, Branch? branch) {
    if (location == null || branch == null) return null;
    return Geolocator.distanceBetween(
      location.latitude,
      location.longitude,
      branch.geofence.latitude,
      branch.geofence.longitude,
    );
  }

  Future<void> _clock(
    BuildContext context,
    WidgetRef ref,
    Position? location,
    String? imgId,
  ) async {
    final attendanceState = ref.read(attendanceProvider).value;
    final isClockedIn = attendanceState?.isClockedIn ?? false;
    final params = ClockAttendanceParams(
      location: location == null
          ? null
          : AttendanceLocation(
              latitude: location.latitude,
              longitude: location.longitude,
              accuracy: location.accuracy,
            ),
      imgId: imgId,
    );

    try {
      if (isClockedIn) {
        await ref.read(attendanceProvider.notifier).clockOut(params);
      } else {
        await ref.read(attendanceProvider.notifier).clockIn(params);
      }
    } catch (error) {
      if (!context.mounted) return;
      SnackbarUtils.showError(getUserFriendlyError(error));
    }
  }
}
