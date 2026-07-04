import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/attendance/domain/entities/master_attendance.dart';
import 'package:office_hr/features/attendance/presentation/providers/attendance_provider.dart';

enum AttendancePeriod { day, month, year }

class MasterAttendanceScreen extends ConsumerStatefulWidget {
  const MasterAttendanceScreen({super.key});

  @override
  ConsumerState<MasterAttendanceScreen> createState() =>
      _MasterAttendanceScreenState();
}

class _MasterAttendanceScreenState
    extends ConsumerState<MasterAttendanceScreen> {
  AttendancePeriod _period = AttendancePeriod.month;
  DateTime _selectedDate = DateTime.now();
  late Future<List<MasterAttendance>> _attendanceFuture;

  @override
  void initState() {
    super.initState();
    _attendanceFuture = _loadAttendance();
  }

  Future<List<MasterAttendance>> _loadAttendance() {
    final range = _dateRange;
    return ref
        .read(attendanceRepositoryProvider)
        .getMasterClockIn(
          startDateId: _dateId(range.$1),
          endDateId: _dateId(range.$2),
        );
  }

  (DateTime, DateTime) get _dateRange {
    final date = _selectedDate;
    switch (_period) {
      case AttendancePeriod.day:
        return (
          DateTime(date.year, date.month, date.day),
          DateTime(date.year, date.month, date.day),
        );
      case AttendancePeriod.month:
        return (
          DateTime(date.year, date.month),
          DateTime(date.year, date.month + 1, 0),
        );
      case AttendancePeriod.year:
        return (DateTime(date.year), DateTime(date.year, 12, 31));
    }
  }

  void _refresh() {
    setState(() {
      _attendanceFuture = _loadAttendance();
    });
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(DateTime.now().year + 2, 12, 31),
    );
    if (picked == null || !mounted) return;
    setState(() {
      _selectedDate = picked;
      _attendanceFuture = _loadAttendance();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => _refresh(),
          child: FutureBuilder<List<MasterAttendance>>(
            future: _attendanceFuture,
            builder: (context, snapshot) {
              final records = List<MasterAttendance>.from(snapshot.data ?? [])
                ..sort((a, b) => b.dateId.compareTo(a.dateId));

              return CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverToBoxAdapter(
                      child: _Header(
                        period: _period,
                        selectedDate: _selectedDate,
                        dateRange: _dateRange,
                        onPeriodChanged: (period) {
                          setState(() {
                            _period = period;
                            _attendanceFuture = _loadAttendance();
                          });
                        },
                        onPickDate: _pickDate,
                      ),
                    ),
                  ),
                  if (snapshot.connectionState == ConnectionState.waiting)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    )
                  else if (snapshot.hasError)
                    SliverFillRemaining(
                      child: _ErrorState(
                        message: snapshot.error.toString(),
                        onRetry: _refresh,
                      ),
                    )
                  else if (records.isEmpty)
                    SliverFillRemaining(
                      child: _EmptyState(periodLabel: _period.label),
                    )
                  else ...[
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverToBoxAdapter(
                        child: _SummaryPanel(records: records),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverList.separated(
                        itemCount: records.length,
                        separatorBuilder: (context, index) => const SizedBox(),
                        itemBuilder: (context, index) => _AttendanceRecordCard(
                          record: records[index],
                          theme: theme,
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.period,
    required this.selectedDate,
    required this.dateRange,
    required this.onPeriodChanged,
    required this.onPickDate,
  });

  final AttendancePeriod period;
  final DateTime selectedDate;
  final (DateTime, DateTime) dateRange;
  final ValueChanged<AttendancePeriod> onPeriodChanged;
  final VoidCallback onPickDate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Attendance Records',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _rangeLabel(period, dateRange),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton.outlined(
                  onPressed: onPickDate,
                  icon: const Icon(Icons.calendar_today_outlined, size: 20),
                  tooltip: 'Select date',
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: SegmentedButton<AttendancePeriod>(
                showSelectedIcon: false,
                segments: AttendancePeriod.values
                    .map(
                      (item) =>
                          ButtonSegment(value: item, label: Text(item.label)),
                    )
                    .toList(),
                selected: {period},
                onSelectionChanged: (selection) =>
                    onPeriodChanged(selection.first),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryPanel extends StatelessWidget {
  const _SummaryPanel({required this.records});

  final List<MasterAttendance> records;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final complete = records.where((item) => item.isComplete).length;
    final missing = records
        .where((item) => item.hasClockIn && !item.hasClockOut)
        .length;
    final absent = records.where((item) => item.isAbsent).length;
    final late = records.fold<num>(0, (sum, item) => sum + item.late);
    final whr = records.fold<num>(0, (sum, item) => sum + item.workingHours);
    final ot = records.fold<num>(0, (sum, item) => sum + item.totalOt);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            _SummaryItem(label: 'Records', value: records.length.toString()),
            _SummaryItem(label: 'Complete', value: complete.toString()),
            _SummaryItem(label: 'Missing Out', value: missing.toString()),
            _SummaryItem(label: 'Leave/Absent', value: absent.toString()),
            _SummaryItem(label: 'Work Hrs', value: _number(whr)),
            _SummaryItem(label: 'OT Hrs', value: _number(ot)),
            _SummaryItem(label: 'Late', value: _number(late)),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 94,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _AttendanceRecordCard extends StatelessWidget {
  const _AttendanceRecordCard({required this.record, required this.theme});

  final MasterAttendance record;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final status = _status(record);
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    _dayOfMonth(record.dateId),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _dateLabel(record.dateId),
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Break ${_timeFromInt(record.restStart)} - ${_timeFromInt(record.restEnd)}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                _StatusBadge(label: status.$1, color: status.$2),
              ],
            ),
            const SizedBox(height: 14),
            Divider(
              height: 1,
              color: theme.colorScheme.outline.withValues(alpha: 0.12),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: _MetricCell(
                    label: 'Final In',
                    value: _timeFromInt(record.adjin),
                  ),
                ),
                Expanded(
                  child: _MetricCell(
                    label: 'Final Out',
                    value: _timeFromInt(record.adjout),
                  ),
                ),
                Expanded(
                  child: _MetricCell(
                    label: 'Work Hrs',
                    value: _number(record.workingHours),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _MetricCell(
                    label: 'Late',
                    value: _number(record.late),
                  ),
                ),
                Expanded(
                  child: _MetricCell(
                    label: 'Under',
                    value: _number(record.under),
                  ),
                ),
                Expanded(
                  child: _MetricCell(
                    label: 'OT',
                    value: _number(record.totalOt),
                  ),
                ),
              ],
            ),
            if (record.hasAdminTime ||
                record.clockInBy != null ||
                (record.remark ?? '').trim().isNotEmpty) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  if (record.hasAdminTime)
                    _InfoPill(
                      icon: Icons.admin_panel_settings_outlined,
                      label:
                          'Admin In/Out ${_timeFromInt(record.amin)} - ${_timeFromInt(record.amout)}',
                    ),
                  if (record.clockInBy != null)
                    _InfoPill(
                      icon: Icons.devices_outlined,
                      label: 'Via ${record.clockInBy}',
                    ),
                  if ((record.remark ?? '').trim().isNotEmpty)
                    _InfoPill(
                      icon: Icons.notes_outlined,
                      label: record.remark!.trim(),
                    ),
                ],
              ),
            ],
            if ((record.leaveTitle ?? '').isNotEmpty ||
                record.clockIn != null ||
                record.clockOut != null) ...[
              const SizedBox(height: 12),
              Text(
                [
                  record.leaveTitle,
                  if (record.clockIn != null)
                    'Raw in ${_timeFromDate(record.clockIn)}',
                  if (record.clockOut != null)
                    'Raw out ${_timeFromDate(record.clockOut)}',
                ].where((text) => (text ?? '').trim().isNotEmpty).join(' • '),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _InfoPill extends StatelessWidget {
  const _InfoPill({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricCell extends StatelessWidget {
  const _MetricCell({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.periodLabel});

  final String periodLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.event_busy_outlined,
              size: 56,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.28),
            ),
            const SizedBox(height: 14),
            Text(
              'No attendance records',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'No records were found for the selected $periodLabel.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 56, color: theme.colorScheme.error),
            const SizedBox(height: 14),
            Text(
              'Unable to load attendance',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              message,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

extension on AttendancePeriod {
  String get label {
    switch (this) {
      case AttendancePeriod.day:
        return 'Day';
      case AttendancePeriod.month:
        return 'Month';
      case AttendancePeriod.year:
        return 'Year';
    }
  }
}

int _dateId(DateTime date) => date.year * 10000 + date.month * 100 + date.day;

String _rangeLabel(AttendancePeriod period, (DateTime, DateTime) range) {
  switch (period) {
    case AttendancePeriod.day:
      return _formatDate(range.$1);
    case AttendancePeriod.month:
      return '${_monthName(range.$1.month)} ${range.$1.year}';
    case AttendancePeriod.year:
      return range.$1.year.toString();
  }
}

String _formatDate(DateTime date) {
  return '${date.day.toString().padLeft(2, '0')} ${_monthName(date.month)} ${date.year}';
}

String _dateLabel(int dateId) {
  final date = _dateFromId(dateId);
  if (date == null) return dateId.toString();
  return _formatDate(date);
}

String _dayOfMonth(int dateId) {
  final date = _dateFromId(dateId);
  return date?.day.toString().padLeft(2, '0') ?? '--';
}

DateTime? _dateFromId(int dateId) {
  final text = dateId.toString();
  if (text.length != 8) return null;
  final year = int.tryParse(text.substring(0, 4));
  final month = int.tryParse(text.substring(4, 6));
  final day = int.tryParse(text.substring(6, 8));
  if (year == null || month == null || day == null) return null;
  return DateTime(year, month, day);
}

String _monthName(int month) {
  const names = [
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
  if (month < 1 || month > 12) return '';
  return names[month - 1];
}

String _timeFromDate(DateTime? value) {
  if (value == null) return '--:--';
  return _formatTime(value.hour, value.minute);
}

String _timeFromInt(int value) {
  if (value <= 0) return '--:--';
  final hour = value ~/ 100;
  final minute = value % 100;
  if (hour < 0 || hour > 23 || minute < 0 || minute > 59) return '--:--';
  return _formatTime(hour, minute);
}

String _formatTime(int hour, int minute) {
  final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
  final suffix = hour >= 12 ? 'PM' : 'AM';
  return '$displayHour:${minute.toString().padLeft(2, '0')} $suffix';
}

String _number(num value) {
  if (value == value.roundToDouble()) return value.toInt().toString();
  return value.toStringAsFixed(1);
}

(String, Color) _status(MasterAttendance record) {
  if (record.isPublicHoliday) return ('Public Holiday', Colors.indigo);
  if ((record.leaveTitle ?? '').isNotEmpty) {
    return (record.leaveTitle!, Colors.orange.shade800);
  }
  if (record.isComplete) return ('Complete', Colors.green.shade700);
  if (record.hasClockIn && !record.hasClockOut) {
    return ('Missing Out', Colors.amber.shade900);
  }
  if (!record.hasClockIn && !record.hasClockOut) {
    return ('No Clock', Colors.blueGrey);
  }
  return ('Review', Colors.blueGrey);
}
