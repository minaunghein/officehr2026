import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/utils/clock_request_formatters.dart';
import 'package:office_hr/features/home/presentation/widgets/clock_request_status_chip.dart';

import 'package:easy_localization/easy_localization.dart';

/// Reviewer-facing list item for a remote clock in/out request: requester,
/// punch type/time, location context, reason, and a status accent bar.
class ClockRequestCard extends StatelessWidget {
  const ClockRequestCard({
    super.key,
    required this.request,
    this.trailing,
    this.onTap,
  });

  final ClockRequest request;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColor = clockRequestStatusColor(request.status);
    final displayName = request.userName.trim().isEmpty
        ? 'Employee'.tr()
        : request.userName.trim();

    return Container(
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(width: 5, color: statusColor),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _Avatar(label: displayName),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    displayName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium
                                        ?.copyWith(fontWeight: FontWeight.w700),
                                  ),
                                  if (request.branchTitle.isNotEmpty)
                                    Text(
                                      request.branchTitle,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            color: theme.colorScheme.onSurface
                                                .withValues(alpha: 0.55),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            ClockRequestStatusChip(status: request.status),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            _PunchTypeTag(punchType: request.punchType),
                            const SizedBox(width: 8),
                            Text(
                              '${formatDateId(request.dateId)} · ${formatPunchTime(request.punchTime)}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        _MetaRow(
                          icon: Icons.place_outlined,
                          text: _locationText(),
                        ),
                        if (request.reason.trim().isNotEmpty) ...[
                          const SizedBox(height: 6),
                          _MetaRow(
                            icon: Icons.notes_rounded,
                            text: request.reason.trim(),
                            maxLines: 3,
                          ),
                        ],
                        if (request.autoFlagged) ...[
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.flag_outlined,
                                size: 14,
                                color: theme.colorScheme.error,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'Auto-flagged by system'.tr(),
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.error,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (request.decisionNote != null &&
                            request.decisionNote!.trim().isNotEmpty) ...[
                          const SizedBox(height: 8),
                          _MetaRow(
                            icon: Icons.fact_check_outlined,
                            text:
                                'Decision note: ${request.decisionNote!.trim()}',
                            maxLines: 2,
                          ),
                        ],
                        if (trailing != null) ...[
                          const SizedBox(height: 12),
                          trailing!,
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _locationText() {
    final label = request.locationLabel?.trim() ?? '';
    final distance = request.distanceKm;
    final parts = <String>[
      if (label.isNotEmpty) label,
      if (distance != null)
        '{distance} km from branch'.tr(
          namedArgs: {'distance': distance.toStringAsFixed(1)},
        )
      else if (request.latitude != null && request.longitude != null)
        '${request.latitude!.toStringAsFixed(4)}, ${request.longitude!.toStringAsFixed(4)}',
    ];
    return parts.isEmpty ? 'Location unavailable'.tr() : parts.join(' · ');
  }
}

class _PunchTypeTag extends StatelessWidget {
  const _PunchTypeTag({required this.punchType});

  final ClockPunchType punchType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isIn = punchType == ClockPunchType.clockIn;
    final color = isIn ? const Color(0xFF15803D) : const Color(0xFFB91C1C);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isIn ? Icons.login_rounded : Icons.logout_rounded,
            size: 12,
            color: color,
          ),
          const SizedBox(width: 4),
          Text(
            clockPunchTypeLabel(punchType),
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 38,
      height: 38,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.12),
        shape: BoxShape.circle,
      ),
      child: Text(
        _initials(label),
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  String _initials(String value) {
    final source = value.trim();
    if (source.isEmpty) return '?';
    final parts = source.split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
    if (parts.isEmpty) return source[0].toUpperCase();
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
  }
}

class _MetaRow extends StatelessWidget {
  const _MetaRow({required this.icon, required this.text, this.maxLines = 1});

  final IconData icon;
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            icon,
            size: 14,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
              height: 1.35,
            ),
          ),
        ),
      ],
    );
  }
}
