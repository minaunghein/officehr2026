import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_colors.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/constants/durations.dart';
import 'package:office_hr/core/extensions/str_extension.dart';
import 'package:office_hr/core/helpers/shimmer_helper.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.radius = 0,
    this.boxFit = BoxFit.cover,
    this.color,
    this.placeholder,
  });

  final String? imageUrl;
  final double? width, height;
  final double radius;
  final BoxFit boxFit;
  final Color? color;
  final Widget? placeholder;

  factory ImageWidget.product({
    String? imageUrl,
    double? width,
    double? height,
    double radius = 0,
    BoxFit fit = .cover,
  }) {
    return ImageWidget(
      imageUrl: imageUrl,
      width: width,
      height: height,
      radius: radius,
      boxFit: fit,
      placeholder: Padding(
        padding: const EdgeInsets.all(AppSizes.xl),
        child: Icon(Icons.photo_size_select_actual_rounded),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isNotAvailable) return _buildPlaceholder();

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cacheSize = _resolveCacheSize(context, constraints);

          return _resolveImageSource(
            cacheWidth: cacheSize.width,
            cacheHeight: cacheSize.height,
          );
        },
      ),
    );
  }

  Widget _resolveImageSource({int? cacheWidth, int? cacheHeight}) {
    if (imageUrl.isNetworkImage) {
      return _buildNetworkImage(
        imageUrl!,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      );
    }
    // if (imageUrl.isSvg) return _buildSvgImage(imageUrl!);
    if (imageUrl.isLocalFile) {
      return _buildFileImage(
        imageUrl!,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      );
    }
    return _buildAssetImage(
      imageUrl!,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  /// Returns one decode constraint so Flutter retains the source aspect ratio.
  /// The logical render size is converted to physical pixels and capped to the
  /// display resolution to avoid retaining unnecessarily large decoded images.
  ({int? width, int? height}) _resolveCacheSize(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);
    final screenSize = MediaQuery.sizeOf(context);

    int? toPhysicalPixels(double? logicalSize, double screenLimit) {
      if (logicalSize == null || !logicalSize.isFinite || logicalSize <= 0) {
        return null;
      }

      final cappedLogicalSize = screenLimit > 0
          ? logicalSize.clamp(0, screenLimit)
          : logicalSize;
      final physicalSize = (cappedLogicalSize * devicePixelRatio).ceil();
      return physicalSize > 0 ? physicalSize : null;
    }

    // Prefer an explicitly supplied dimension over a parent constraint. This
    // handles images that specify only height without decoding at parent width.
    final explicitWidth = toPhysicalPixels(width, screenSize.width);
    if (explicitWidth != null) return (width: explicitWidth, height: null);

    final explicitHeight = toPhysicalPixels(height, screenSize.height);
    if (explicitHeight != null) return (width: null, height: explicitHeight);

    final constrainedWidth = toPhysicalPixels(
      constraints.hasBoundedWidth ? constraints.maxWidth : null,
      screenSize.width,
    );
    if (constrainedWidth != null) {
      return (width: constrainedWidth, height: null);
    }

    final constrainedHeight = toPhysicalPixels(
      constraints.hasBoundedHeight ? constraints.maxHeight : null,
      screenSize.height,
    );
    if (constrainedHeight != null) {
      return (width: null, height: constrainedHeight);
    }

    // An unconstrained image should still not decode wider than the display.
    return (
      width: toPhysicalPixels(screenSize.width, screenSize.width),
      height: null,
    );
  }

  Widget _buildNetworkImage(
    String imageUrl, {
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      fit: boxFit,
      color: color,
      fadeInDuration: AppDurs.k100MLS,
      progressIndicatorBuilder: (_, _, _) => ShimmerHelper.showShimmer(
        width: width,
        height: height,
        radius: radius,
      ),
      errorWidget: (_, _, _) => _buildErrorFallback(),
    );
  }

  // Widget _buildSvgImage(String assetPath) {
  //   return SvgPicture.asset(
  //     assetPath,
  //     width: width,
  //     height: height,
  //     fit: boxFit,
  //     colorFilter: color != null
  //         ? ColorFilter.mode(color!, BlendMode.srcIn)
  //         : null,
  //   );
  // }

  Widget _buildAssetImage(
    String assetPath, {
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
      fit: boxFit,
      color: color,
    );
  }

  Widget _buildFileImage(String filePath, {int? cacheWidth, int? cacheHeight}) {
    return Image.file(
      File(filePath),
      width: width,
      height: height,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
      fit: boxFit,
      color: color,
      errorBuilder: (context, error, stackTrace) => _buildErrorFallback(),
    );
  }

  Widget _buildPlaceholder() {
    return placeholder ??
        Card(
          elevation: 0,
          child: SizedBox(
            width: width,
            height: height,
            child: const Icon(
              Icons.image_not_supported,
              color: AppColors.error,
              size: 32,
            ),
          ),
        );
  }

  Widget _buildErrorFallback() {
    return placeholder ??
        const Icon(Icons.info, color: AppColors.error, size: 24);
  }
}
