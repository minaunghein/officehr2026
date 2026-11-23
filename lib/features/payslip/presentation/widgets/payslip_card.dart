import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/presentation/utils/payslip_formatters.dart';

/// A month summary card for the payslip list. The salary period is the visual
/// anchor (large, left) so it can be read at a glance, with net pay on the
/// right and the employee line below.
class PayslipCard extends StatelessWidget {
  const PayslipCard({super.key, required this.payslip, this.onTap});

  final Payslip payslip;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final name = payslip.employeeName.trim().isEmpty
        ? (payslip.employeeCode.trim().isEmpty
              ? 'Employee'.tr()
              : payslip.employeeCode)
        : payslip.employeeName;

    return Material(
      color: theme.cardColor,
      borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.18),
            ),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Container(width: 4, color: const Color(0xFF16A34A)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _PeriodBadge(payslip: payslip),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                _subtitle(payslip),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurface.withValues(
                                    alpha: 0.65,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(
                                    Icons.event_outlined,
                                    size: 14,
                                    color: theme.colorScheme.onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                                  const SizedBox(width: 5),
                                  Flexible(
                                    child: Text(
                                      formatPayslipPeriod(
                                        payslip.startDate,
                                        payslip.endDate,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            color: theme.colorScheme.onSurface
                                                .withValues(alpha: 0.55),
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        // Text(
                        //   'Net pay',
                        //   style: theme.textTheme.labelMedium?.copyWith(
                        //     color: theme.colorScheme.onSurface.withValues(
                        //       alpha: 0.5,
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(height: 3),
                        // Text(
                        //   formatMoney(payslip.netSalary),
                        //   style: theme.textTheme.titleMedium?.copyWith(
                        //     fontWeight: FontWeight.w800,
                        //     color: const Color(0xFF16A34A),
                        //   ),
                        // ),
                        //   ],
                        // ),
                        // const SizedBox(width: 4),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.3,
                          ),
                        ),
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

  String _subtitle(Payslip payslip) {
    final parts = <String>[
      if (payslip.positionTitle.trim().isNotEmpty) payslip.positionTitle,
      if (payslip.employeeCode.trim().isNotEmpty)
        'ID {id}'.tr(namedArgs: {'id': payslip.employeeCode}),
    ];
    return parts.isEmpty ? 'Employee'.tr() : parts.join(' · ');
  }
}

/// Left visual block showing the salary period: short month and year, sized
/// so it reads at a glance.
class _PeriodBadge extends StatelessWidget {
  const _PeriodBadge({required this.payslip});

  final Payslip payslip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final month = formatPayslipMonthShort(payslip.startDate);
    final year = formatPayslipYear(payslip.startDate);

    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            month,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
              color: theme.colorScheme.primary,
            ),
          ),
          if (year.isNotEmpty)
            Text(
              year,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
        ],
      ),
    );
  }
}
