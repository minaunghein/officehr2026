import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

abstract final class ShimmerHelper {
  ShimmerHelper._();

  static Widget showShimmer({
    Key? key,
    double? width,
    double? height,
    double? radius,
    Color? baseColor,
    Color? highlightColor,
  }) {
    return Shimmer.fromColors(
      key: key,
      baseColor: baseColor ?? Colors.grey.shade300,
      highlightColor: highlightColor ?? Colors.grey.shade100,
      period: const Duration(milliseconds: 1200),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius ?? 0.0),
        ),
      ),
    );
  }

  static Widget skeletonContent({required Widget child, Key? key}) {
    return Shimmer(
      key: key,
      gradient: const LinearGradient(
        // colors: [Color(0xFFE8E8E8), Color(0xFFF5F5F5), Color(0xFFE8E8E8)],
        colors: [Color(0xFFDADADA), Color(0xFFF0F0F0), Color(0xFFDADADA)],
        stops: [0.1, 0.5, 0.9],
        begin: Alignment(-1.0, -0.3),
        end: Alignment(1.0, 0.3),
      ),
      period: const Duration(milliseconds: 1800),
      child: child,
    );
  }
}
