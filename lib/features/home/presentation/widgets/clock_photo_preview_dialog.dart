import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';

import 'package:easy_localization/easy_localization.dart';

/// Opens the camera (camera source only) and previews the taken photo with
/// Retake / Use Photo actions at the bottom. Returns the confirmed photo
/// path, or `null` when the user cancels the camera or closes the preview.
Future<String?> captureClockPhoto(BuildContext context) async {
  while (true) {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 70,
      maxWidth: 1280,
    );
    if (picked == null || !context.mounted) return null;

    final usePhoto = await showClockPhotoPreviewDialog(
      context,
      filePath: picked.path,
    );
    if (usePhoto == true) return picked.path;
    if (usePhoto == null || !context.mounted) return null;
  }
}

/// Shows the taken photo for confirmation. Returns `true` for Use Photo,
/// `false` for Retake, and `null` when dismissed.
Future<bool?> showClockPhotoPreviewDialog(
  BuildContext context, {
  required String filePath,
}) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => _ClockPhotoPreviewDialog(filePath: filePath),
  );
}

class _ClockPhotoPreviewDialog extends HookWidget {
  const _ClockPhotoPreviewDialog({required this.filePath});

  final String filePath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final maxImageHeight = MediaQuery.sizeOf(context).height * 0.55;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: maxImageHeight),
            child: Image.file(
              File(filePath),
              width: double.infinity,
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) => SizedBox(
                height: 200,
                child: Center(
                  child: Icon(
                    Icons.broken_image_outlined,
                    size: 40,
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Retake'.tr()),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Use Photo'.tr()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
