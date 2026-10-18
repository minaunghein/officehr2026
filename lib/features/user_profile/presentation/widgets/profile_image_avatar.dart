import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/shared/global.dart';

class ProfileImageAvatar extends HookConsumerWidget {
  const ProfileImageAvatar({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final picker = useMemoized(ImagePicker.new);
    final cropper = useMemoized(ImageCropper.new);
    final choosing = useState(false);
    final uploading = ref.watch(updateProfileImageProvider).isLoading;
    final busy = choosing.value || uploading;

    Future<void> changeImage() async {
      if (choosing.value || ref.read(updateProfileImageProvider).isLoading) {
        return;
      }
      choosing.value = true;
      var saving = false;
      try {
        final source = await showModalBottomSheet<ImageSource>(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (context) => SafeArea(
            top: false,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: AppSizes.md),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.lg,
                      ),
                      child: Text(
                        'Change profile image',
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: AppSizes.sm),
                    ListTile(
                      leading: const Icon(Icons.camera_alt_outlined),
                      title: const Text('Camera'),
                      subtitle: const Text('Take a new photo'),
                      onTap: () => Navigator.pop(context, ImageSource.camera),
                    ),
                    ListTile(
                      leading: const Icon(Icons.photo_library_outlined),
                      title: const Text('Gallery'),
                      subtitle: const Text('Choose an existing photo'),
                      onTap: () => Navigator.pop(context, ImageSource.gallery),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        if (source == null || !context.mounted) return;

        final picked = await picker.pickImage(
          source: source,
          maxWidth: 1600,
          maxHeight: 1600,
          imageQuality: 90,
        );
        if (picked == null || !context.mounted) return;

        final colors = Theme.of(context).colorScheme;
        final cropped = await cropper.cropImage(
          sourcePath: picked.path,
          maxWidth: 1024,
          maxHeight: 1024,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          compressFormat: ImageCompressFormat.png,
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: 'Crop profile image',
              toolbarColor: colors.primary,
              toolbarWidgetColor: colors.onPrimary,
              activeControlsWidgetColor: colors.primary,
              cropStyle: CropStyle.circle,
              lockAspectRatio: true,
              showCropGrid: false,
              initAspectRatio: CropAspectRatioPreset.square,
              aspectRatioPresets: [CropAspectRatioPreset.square],
            ),
            IOSUiSettings(
              title: 'Crop profile image',
              doneButtonTitle: 'Save',
              cropStyle: CropStyle.circle,
              aspectRatioLockEnabled: true,
              resetAspectRatioEnabled: false,
              aspectRatioPickerButtonHidden: true,
              aspectRatioPresets: [CropAspectRatioPreset.square],
            ),
          ],
        );
        if (cropped == null || !context.mounted) return;

        saving = true;
        await ref
            .read(updateProfileImageProvider.notifier)
            .submit(filePath: cropped.path, fileName: 'profile.png');
        if (context.mounted) {
          SnackbarUtils.showSuccess('Profile image updated.');
        }
      } catch (error, stack) {
        AppLogger.e('Profile image change failed', error: error, stack: stack);
        if (!context.mounted) return;
        final message = switch (error) {
          PlatformException(code: 'camera_access_denied') =>
            'Please allow camera access in Settings to take a profile photo.',
          PlatformException(code: 'photo_access_denied') =>
            'Please allow photo access in Settings to choose a profile image.',
          _ =>
            saving
                ? getUserFriendlyError(error)
                : 'Could not open the image picker or cropper. Please try again.',
        };
        SnackbarUtils.showError(message);
      } finally {
        if (context.mounted) choosing.value = false;
      }
    }

    const avatarSize = 88.0;
    const editButtonSize = 34.0;

    return SizedBox.square(
      dimension: avatarSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: ClipOval(
              child: ImageWidget(
                imageUrl: session.profileUrl,
                width: avatarSize,
                height: avatarSize,
                placeholder: ColoredBox(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
                  child: Center(
                    child: Text(
                      initials(session.displayName) ?? '?',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (uploading)
            Positioned.fill(
              child: ClipOval(
                child: ColoredBox(
                  color: Colors.black.withValues(alpha: 0.4),
                  child: const Center(
                    child: SizedBox.square(
                      dimension: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                        semanticsLabel: 'Updating profile image',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            right: -8,
            bottom: -10,
            child: IconButton.filled(
              tooltip: 'Change profile image',
              onPressed: busy ? null : changeImage,
              style: IconButton.styleFrom(
                backgroundColor: theme.colorScheme.surface,
                foregroundColor: theme.colorScheme.primary,
                disabledBackgroundColor: theme.colorScheme.surface,
                disabledForegroundColor: theme.disabledColor,
                minimumSize: const Size.square(editButtonSize),
                maximumSize: const Size.square(editButtonSize),
                padding: EdgeInsets.zero,
                side: BorderSide(color: theme.colorScheme.primary, width: 2),
              ),
              icon: const Icon(Icons.edit_outlined, size: AppSizes.iconSm),
            ),
          ),
        ],
      ),
    );
  }
}
