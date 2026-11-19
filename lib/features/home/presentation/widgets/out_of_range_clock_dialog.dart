import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/home/domain/entities/attendance_location.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/utils/clock_photo_upload.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_photo_preview_dialog.dart';

/// Shown when the user punches outside the branch geofence and location is
/// mandatory (`optional_location = false`). Collects a mandatory photo and a
/// reason, then records the punch through the regular clock in/out API with
/// the reason sent as `notes` for manager approval.
Future<void> showOutOfRangeClockRequestDialog(
  BuildContext context, {
  required bool isClockIn,
  required Position location,
  double? distance,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => _OutOfRangeClockRequestDialog(
      isClockIn: isClockIn,
      location: location,
      distance: distance,
    ),
  );
}

class _OutOfRangeClockRequestDialog extends HookConsumerWidget {
  const _OutOfRangeClockRequestDialog({
    required this.isClockIn,
    required this.location,
    this.distance,
  });

  final bool isClockIn;
  final Position location;
  final double? distance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final attendanceState = ref.watch(attendanceProvider).value;
    final isUploading = useState(false);
    final isSubmitting =
        isUploading.value ||
        (isClockIn
            ? (attendanceState?.isClockInLoading ?? false)
            : (attendanceState?.isClockOutLoading ?? false));

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final reasonController = useTextEditingController();
    final photoPath = useState<String?>(null);
    final showPhotoError = useState(false);

    Future<void> takePhoto() async {
      FocusScope.of(context).unfocus();
      final path = await captureClockPhoto(context);
      if (path != null) {
        photoPath.value = path;
        showPhotoError.value = false;
      }
    }

    Future<void> submit() async {
      final hasPhoto = photoPath.value != null;
      showPhotoError.value = !hasPhoto;
      final reasonValid = formKey.currentState?.validate() ?? false;
      if (!hasPhoto || !reasonValid) return;

      isUploading.value = true;
      final String imgId;
      try {
        imgId = await uploadClockPhoto(ref, photoPath.value!);
      } catch (error) {
        isUploading.value = false;
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
        return;
      }
      isUploading.value = false;

      final params = ClockAttendanceParams(
        location: AttendanceLocation(
          latitude: location.latitude,
          longitude: location.longitude,
          accuracy: location.accuracy,
        ),
        imgId: imgId,
        notes: reasonController.text.trim(),
      );

      try {
        if (isClockIn) {
          await ref.read(attendanceProvider.notifier).clockIn(params);
        } else {
          await ref.read(attendanceProvider.notifier).clockOut(params);
        }
        SnackbarUtils.showSuccess(
          isClockIn
              ? 'Clock in request submitted for approval'
              : 'Clock out request submitted for approval',
        );
        if (context.mounted) Navigator.of(context).pop();
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      }
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: PopScope(
        canPop: !isSubmitting,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Row(
            children: [
              Icon(Icons.place_outlined, color: theme.colorScheme.error),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  isClockIn
                      ? 'Outside Clock In Area'
                      : 'Outside Clock Out Area',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'You are outside your branch area, so this punch needs '
                    'manager approval. Attach a photo and provide a reason.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.75,
                      ),
                      height: 1.4,
                    ),
                  ),
                  if (distance != null) ...[
                    const SizedBox(height: 10),
                    Text(
                      'Distance to branch: ${(distance! / 1000).toStringAsFixed(2)} km',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.error,
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: isSubmitting ? null : takePhoto,
                    borderRadius: BorderRadius.circular(8),
                    child: Row(
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.04,
                            ),
                            border: Border.all(
                              color: showPhotoError.value
                                  ? theme.colorScheme.error
                                  : theme.colorScheme.outline.withValues(
                                      alpha: 0.35,
                                    ),
                            ),
                          ),
                          child: photoPath.value == null
                              ? Icon(
                                  Icons.photo_camera_outlined,
                                  size: 28,
                                  color: theme.colorScheme.onSurface.withValues(
                                    alpha: 0.45,
                                  ),
                                )
                              : Image.file(
                                  File(photoPath.value!),
                                  width: 72,
                                  height: 72,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Take Photo',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                photoPath.value == null
                                    ? 'Required for this punch'
                                    : 'Tap to retake',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurface.withValues(
                                    alpha: 0.55,
                                  ),
                                ),
                              ),
                              if (showPhotoError.value) ...[
                                const SizedBox(height: 2),
                                Text(
                                  'Photo is required',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.error,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: reasonController,
                    enabled: !isSubmitting,
                    maxLines: 3,
                    minLines: 2,
                    decoration: InputDecoration(
                      labelText: 'Reason',
                      hintText: 'e.g. On client site visit',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter a reason';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: isSubmitting
                  ? null
                  : () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: isSubmitting ? null : submit,
              child: isSubmitting
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }
}
