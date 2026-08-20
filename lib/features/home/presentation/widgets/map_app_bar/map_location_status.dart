import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MapLocationStatus extends StatelessWidget {
  const MapLocationStatus({required this.locationAsync, super.key});

  final AsyncValue<Object?> locationAsync;

  @override
  Widget build(BuildContext context) {
    if (!locationAsync.isLoading && !locationAsync.hasError) {
      return const SizedBox.shrink();
    }

    final isError = locationAsync.hasError;
    return Positioned(
      top: 60,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: isError
                ? const Color(0xFFD32F2F).withValues(alpha: 0.9)
                : Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isError)
                const Icon(Icons.error_outline, size: 16, color: Colors.white)
              else
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Color(0xFF0052CC),
                  ),
                ),
              const SizedBox(width: 8),
              Text(
                isError ? 'Location Error' : 'Getting location...',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: isError ? Colors.white : const Color(0xFF0052CC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
