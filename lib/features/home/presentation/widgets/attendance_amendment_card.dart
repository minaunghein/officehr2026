import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_amendment_status.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/shared/date_formatter.dart';

class AttendanceAmendmentCard extends StatelessWidget {
  const AttendanceAmendmentCard({
    super.key,
    required this.amendment,
    this.onTap,
  });

  final AttendanceAmendment amendment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final typeColor = amendmentTypeColor(amendment.amendmentType, theme);
    final hasTime =
        _hasValue(amendment.requestedClockIn) ||
        _hasValue(amendment.requestedClockOut);

    return Material(
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: typeColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      amendmentTypeIcon(amendment.amendmentType),
                      color: typeColor,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          attendanceStatusLabel(amendment.amendmentType),
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          formatAmendmentDate(amendment.dateId),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.55,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AmendmentStatusChip(status: amendment.status, dense: true),
                ],
              ),
              const SizedBox(height: 12),
              if (hasTime) ...[
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (_hasValue(amendment.requestedClockIn))
                      _TimePill(
                        icon: Icons.login_rounded,
                        label: 'In',
                        value: formatAttendanceTime(amendment.requestedClockIn),
                      ),
                    if (_hasValue(amendment.requestedClockOut))
                      _TimePill(
                        icon: Icons.logout_rounded,
                        label: 'Out',
                        value: formatAttendanceTime(
                          amendment.requestedClockOut,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
              ],
              Text(
                amendment.reason,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
                ),
              ),
              if (amendment.createdAt != null) ...[
                const SizedBox(height: 10),
                Text(
                  'Requested ${_relativeOrDate(amendment.createdAt!)}',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.45),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _TimePill extends StatelessWidget {
  const _TimePill({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
          const SizedBox(width: 6),
          Text(
            '$label $value',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

bool _hasValue(String? value) => value != null && value.trim().isNotEmpty;

IconData amendmentTypeIcon(String type) {
  switch (type.toUpperCase()) {
    case 'MISSED_IN':
      return Icons.login_rounded;
    case 'MISSED_OUT':
      return Icons.logout_rounded;
    case 'WRONG_TIME':
      return Icons.schedule_rounded;
    case 'SYSTEM_ERROR':
      return Icons.error_outline_rounded;
    case 'ON_DUTY':
      return Icons.work_outline_rounded;
    case 'TRAINING':
      return Icons.school_outlined;
    default:
      return Icons.edit_calendar_rounded;
  }
}

Color amendmentTypeColor(String type, ThemeData theme) {
  switch (type.toUpperCase()) {
    case 'MISSED_IN':
      return const Color(0xFF2563EB);
    case 'MISSED_OUT':
      return const Color(0xFF7C3AED);
    case 'WRONG_TIME':
      return const Color(0xFFD97706);
    case 'SYSTEM_ERROR':
      return const Color(0xFFDC2626);
    case 'ON_DUTY':
      return const Color(0xFF0891B2);
    case 'TRAINING':
      return const Color(0xFF16A34A);
    default:
      return theme.colorScheme.primary;
  }
}

/// Formats a backend `date_id` (`20240615` or `2024-06-15`) as `15 Jun 2024`.
String formatAmendmentDate(String dateId) {
  if (dateId.trim().isEmpty) return 'No date';
  final digits = dateId.replaceAll(RegExp(r'[^0-9]'), '');
  if (digits.length != 8) return dateId;

  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final year = digits.substring(0, 4);
  final month = int.parse(digits.substring(4, 6));
  final day = int.parse(digits.substring(6, 8));
  if (month < 1 || month > 12) return dateId;
  return '$day ${months[month - 1]} $year';
}

String _relativeOrDate(DateTime value) {
  final local = value.toLocal();
  final now = DateTime.now();
  final difference = now.difference(local);
  if (difference.inMinutes < 1) return 'just now';
  if (difference.inHours < 1) return '${difference.inMinutes}m ago';
  if (difference.inDays < 1) return '${difference.inHours}h ago';
  if (difference.inDays < 7) return '${difference.inDays}d ago';
  return formatDateString(local.toIso8601String());
}
