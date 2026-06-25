import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/presentation/providers/payslip_providers.dart';

class PayslipScreen extends ConsumerWidget {
  const PayslipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final payslipState = ref.watch(payslipProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payslips'),
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: payslipState.when(
        data: (payslips) {
          if (payslips.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.receipt_long_rounded,
                    size: 64,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No payslips found',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () => ref.read(payslipProvider.notifier).fetch(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: payslips.length,
              itemBuilder: (context, index) {
                return _PayslipCard(payslip: payslips[index]);
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 48,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  'Failed to load payslips',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () => ref.read(payslipProvider.notifier).fetch(),
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PayslipCard extends StatelessWidget {
  final Payslip payslip;

  const _PayslipCard({required this.payslip});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final periodText = _formatPayslipPeriod(
      payslip.salaryStartDate,
      payslip.salaryEndDate,
    );

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        periodText,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Salary Period',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: payslip.isAcknowledged
                        ? Colors.green.withValues(alpha: 0.1)
                        : Colors.orange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        payslip.isAcknowledged
                            ? Icons.check_circle_outline_rounded
                            : Icons.info_outline_rounded,
                        color: payslip.isAcknowledged
                            ? Colors.green
                            : Colors.orange,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        payslip.isAcknowledged ? 'Acknowledged' : 'Pending',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: payslip.isAcknowledged
                              ? Colors.green
                              : Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(height: 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        payslip.finalSalary.toStringAsFixed(0),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Net Salary',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () => _showBreakdownBottomSheet(context, payslip),
                  style: ButtonStyle(
                    maximumSize: WidgetStateProperty.all(const Size(120, 50)),
                    minimumSize: WidgetStateProperty.all(const Size(100, 40)),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSizes.borderRadiusSm,
                        ),
                      ),
                    ),
                  ),
                  child: const Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatPayslipPeriod(String? start, String? end) {
    if (start == null || end == null) return 'N/A';
    final startDate = DateTime.tryParse(start);
    final endDate = DateTime.tryParse(end);
    if (startDate == null || endDate == null) return 'N/A';

    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    if (startDate.year == endDate.year && startDate.month == endDate.month) {
      return '${months[startDate.month - 1]} ${startDate.year}';
    }

    final startMonth = months[startDate.month - 1].substring(0, 3);
    final endMonth = months[endDate.month - 1].substring(0, 3);
    return '$startMonth ${startDate.day}, ${startDate.year} - $endMonth ${endDate.day}, ${endDate.year}';
  }

  void _showBreakdownBottomSheet(BuildContext context, Payslip payslip) {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          expand: false,
          builder: (context, scrollController) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.4,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Salary Breakdown',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          const _SectionHeader(title: 'Base & Attendance Info'),
                          _BreakdownRow(
                            label: 'Salary per Day',
                            value: payslip.salaryPerDay,
                          ),
                          _BreakdownRow(
                            label: 'Unpaid Leave Days',
                            value: payslip.unpaidLeave,
                            suffix: 'Days',
                          ),
                          const Divider(height: 24),
                          const _SectionHeader(title: 'Earnings'),
                          _BreakdownRow(
                            label: 'Attendance Salary',
                            value: payslip.salaryAttendance,
                          ),
                          _BreakdownRow(
                            label: 'In-Time Salary',
                            value: payslip.salaryInTime,
                          ),
                          _BreakdownRow(label: 'Bonus', value: payslip.bonus),
                          _BreakdownRow(
                            label: 'Benefits',
                            value: payslip.salaryBenefit,
                          ),
                          _BreakdownRow(
                            label: 'Overtime 1 (1.5x)',
                            value: payslip.salaryOt1,
                          ),
                          _BreakdownRow(
                            label: 'Overtime 2 (2.0x)',
                            value: payslip.salaryOt2,
                          ),
                          _BreakdownRow(
                            label: 'Overtime 3 (3.0x)',
                            value: payslip.salaryOt3,
                          ),
                          _BreakdownRow(
                            label: 'Total Overtime',
                            value: payslip.salaryOt,
                            fontWeight: FontWeight.bold,
                          ),
                          const Divider(height: 24),
                          const _SectionHeader(title: 'Deductions'),
                          _BreakdownRow(
                            label: 'Late In Deduction',
                            value: payslip.salaryLate,
                            isDeduction: true,
                          ),
                          _BreakdownRow(
                            label: 'Under-Time Deduction',
                            value: payslip.salaryUnder,
                            isDeduction: true,
                          ),
                          _BreakdownRow(
                            label: 'Unpaid Leave Deduction',
                            value: payslip.unpaidDeduction,
                            isDeduction: true,
                          ),
                          _BreakdownRow(
                            label: 'SSB Contribution',
                            value: payslip.salarySsb,
                            isDeduction: true,
                          ),
                          _BreakdownRow(
                            label: 'Loan Payment',
                            value: payslip.loan,
                            isDeduction: true,
                          ),
                          _BreakdownRow(
                            label: 'Other Deductions',
                            value: payslip.salaryDeduction,
                            isDeduction: true,
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Net Pay',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${payslip.finalSalary.toStringAsFixed(0)} Kyat',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class _BreakdownRow extends StatelessWidget {
  final String label;
  final num value;
  final bool isDeduction;
  final String suffix;
  final FontWeight? fontWeight;

  const _BreakdownRow({
    required this.label,
    required this.value,
    this.isDeduction = false,
    this.suffix = 'Kyat',
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formattedVal = value.toStringAsFixed(0);
    final displayValue = isDeduction
        ? '- $formattedVal $suffix'
        : '$formattedVal $suffix';
    final valueColor = isDeduction ? Colors.red : theme.colorScheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(fontWeight: fontWeight),
          ),
          Text(
            displayValue,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: fontWeight ?? FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
