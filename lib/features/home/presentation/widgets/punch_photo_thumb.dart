import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/widgets/image_widget.dart';

import 'package:easy_localization/easy_localization.dart';

/// Square thumbnail of a punch photo (`/api/v1/files/{img_id}`). Tapping it
/// opens a larger preview.
class PunchPhotoThumb extends ConsumerWidget {
  const PunchPhotoThumb({super.key, required this.imgId, this.size = 44});

  final String imgId;
  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final baseUrl = ref.watch(apiConfigProvider).baseUrl;
    final imageUrl = '$baseUrl/api/v1/files/$imgId';

    return Tooltip(
      message: 'View punch photo'.tr(),
      child: InkWell(
        onTap: () => showPunchPhotoPreview(context, imageUrl: imageUrl),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.18),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: ImageWidget(
            imageUrl: imageUrl,
            width: size,
            height: size,
            placeholder: Icon(
              Icons.photo_camera_outlined,
              size: size * 0.45,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.35),
            ),
          ),
        ),
      ),
    );
  }
}

/// Shows the punch photo in a larger, dismissible preview.
Future<void> showPunchPhotoPreview(
  BuildContext context, {
  required String imageUrl,
}) {
  return showDialog<void>(
    context: context,
    builder: (dialogContext) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Stack(
        children: [
          ImageWidget(
            imageUrl: imageUrl,
            width: double.infinity,
            boxFit: BoxFit.contain,
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton.filled(
              onPressed: () => Navigator.of(dialogContext).pop(),
              icon: const Icon(Icons.close_rounded, size: 18),
            ),
          ),
        ],
      ),
    ),
  );
}
