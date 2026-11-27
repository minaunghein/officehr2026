import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/presentation/utils/overtime_formatters.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_status_chip.dart';

class OvertimeRequestCard extends StatelessWidget {
  const OvertimeRequestCard({
    super.key,
    required this.request,
    this.showRequester = false,
    this.onTap,
    this.trailing,
  });

  final OvertimeRequest request;
  final bool showRequester;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColor = overtimeStatusColor(request.status);
    final timeRange =
        '${formatOvertimeClock(request.startTime)} - '
        '${formatOvertimeClock(request.endTime)}';

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
                        if (showRequester) ...[
                          Row(
                            children: [
                              _Avatar(label: request.requesterLabel),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  request.requesterLabel,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              OvertimeStatusChip(status: request.status),
                            ],
                          ),
                          const SizedBox(height: 12),
                        ] else
                          Row(
                            children: [
                              Expanded(child: _typeTag(theme)),
                              OvertimeStatusChip(status: request.status),
                            ],
                          ),
                        const SizedBox(height: 6),
                        _MetaRow(
                          icon: Icons.calendar_today_rounded,
                          text: formatOvertimeDate(request.date),
                        ),
                        const SizedBox(height: 6),
                        _MetaRow(
                          icon: Icons.timelapse_rounded,
                          text: timeRange,
                        ),
                        if (request.approvedHours != null) ...[
                          const SizedBox(height: 6),
                          _MetaRow(
                            icon: Icons.done_all_rounded,
                            text:
                                'Approved ${formatOvertimeHours(request.approvedHours)}',
                          ),
                        ],
                        if (request.reason.trim().isNotEmpty) ...[
                          const SizedBox(height: 10),
                          Text(
                            request.reason.trim(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withValues(
                                alpha: 0.6,
                              ),
                              height: 1.4,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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

  Widget _typeTag(ThemeData theme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.bolt_rounded, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          request.otType.value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
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
    if (source.contains('@')) return source[0].toUpperCase();
    final parts = source.split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
    if (parts.isEmpty) return source[0].toUpperCase();
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
  }
}

class _MetaRow extends StatelessWidget {
  const _MetaRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
            ),
          ),
        ),
      ],
    );
  }
}
