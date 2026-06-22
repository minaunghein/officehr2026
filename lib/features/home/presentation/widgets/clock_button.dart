import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/location_provider.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';

class ClockButton extends ConsumerWidget {
  const ClockButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendanceState = ref.watch(attendanceProvider);
    final isClockedIn = attendanceState.isClockedIn;
    final isLoading = attendanceState.isLoading;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        onPressed: isLoading
            ? null
            : () async {
                final location = ref.read(currentLocationProvider).value;
                if (location == null) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please wait for location to be available',
                        ),
                      ),
                    );
                  }
                  return;
                }

                final branch = ref.read(branchProvider).value;
                bool inRange = false;
                double? distance;

                if (branch != null) {
                  distance = Geolocator.distanceBetween(
                    location.latitude,
                    location.longitude,
                    branch.latitude,
                    branch.longitude,
                  );
                  inRange = distance <= 200;
                }

                if (inRange) {
                  await ref
                      .read(attendanceProvider.notifier)
                      .toggleClockIn(
                        lat: location.latitude,
                        long: location.longitude,
                      );
                } else {
                  if (context.mounted) {
                    showDialog(
                      context: context,
                      barrierDismissible: !isLoading,
                      builder: (dialogContext) => _OutOfRangeClockDialog(
                        isClockIn: !isClockedIn,
                        distance: distance,
                        onConfirm: (description) async {
                          await ref
                              .read(attendanceProvider.notifier)
                              .toggleClockIn(
                                lat: location.latitude,
                                long: location.longitude,
                                needApproval: true,
                                desc: description,
                              );
                        },
                      ),
                    );
                  }
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
      ),
    );
  }
}

class _OutOfRangeClockDialog extends HookConsumerWidget {
  final bool isClockIn;
  final double? distance;
  final Future<void> Function(String description) onConfirm;

  const _OutOfRangeClockDialog({
    required this.isClockIn,
    this.distance,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final attendanceState = ref.watch(attendanceProvider);
    final isLoading = attendanceState.isLoading;
    final error = attendanceState.error;

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final descController = useTextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: colorScheme.error),
            const SizedBox(width: 8),
            Text(
              isClockIn ? 'Out of Range Clock In' : 'Out of Range Clock Out',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
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
                  'You are currently outside the designated branch area.',
                  style: theme.textTheme.bodyMedium,
                ),
                if (distance != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Distance to branch: ${distance!.toStringAsFixed(1)} meters',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.error,
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                Text(
                  'A manual approval request will be submitted. Please specify the reason or description below:',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: descController,
                  enabled: !isLoading,
                  maxLines: 3,
                  minLines: 2,
                  decoration: InputDecoration(
                    hintText: 'e.g., Client site meeting, Work from home',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter a description/reason';
                    }
                    return null;
                  },
                ),
                if (error != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    error,
                    style: TextStyle(color: colorScheme.error, fontSize: 12),
                  ),
                ],
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: isLoading ? null : () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: isLoading
                ? null
                : () async {
                    if (formKey.currentState?.validate() ?? false) {
                      await onConfirm(descController.text.trim());
                      if (context.mounted) {
                        final currentError = ref.read(attendanceProvider).error;
                        if (currentError == null) {
                          Navigator.of(context).pop();
                        }
                      }
                    }
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: isClockIn
                  ? const Color(0xFF2E7D32)
                  : const Color(0xFFC62828),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    isClockIn ? 'Request Clock In' : 'Request Clock Out',
                    style: const TextStyle(color: Colors.white),
                  ),
          ),
        ],
      ),
    );
  }
}
