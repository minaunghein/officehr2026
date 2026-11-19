import 'package:flutter/material.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';

Color clockRequestStatusColor(ClockRequestStatus status) {
  return switch (status) {
    ClockRequestStatus.pending => const Color(0xFFB45309),
    ClockRequestStatus.approved => const Color(0xFF15803D),
    ClockRequestStatus.rejected => const Color(0xFFB91C1C),
    ClockRequestStatus.cancelled => const Color(0xFF6B7280),
  };
}

Color clockRequestStatusBackground(ClockRequestStatus status) {
  return clockRequestStatusColor(status).withValues(alpha: 0.1);
}

/// Small pill showing PENDING / APPROVED / REJECTED / CANCELLED.
class ClockRequestStatusChip extends StatelessWidget {
  const ClockRequestStatusChip({super.key, required this.status});

  final ClockRequestStatus status;

  @override
  Widget build(BuildContext context) {
    final color = clockRequestStatusColor(status);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: clockRequestStatusBackground(status),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        status.label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
