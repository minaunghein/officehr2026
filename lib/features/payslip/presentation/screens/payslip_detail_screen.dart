import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/widgets/detail_row.dart';
import 'package:office_hr/core/widgets/detail_section_card.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/params/payslip_query.dart';
import 'package:office_hr/features/payslip/presentation/providers/payslip_providers.dart';
import 'package:office_hr/features/payslip/presentation/utils/payslip_formatters.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_amount_row.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_breakdown_card.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_detail_header.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_summary_row.dart';

import 'package:easy_localization/easy_localization.dart';

class PayslipDetailScreen extends ConsumerWidget {
  const PayslipDetailScreen({super.key, required this.initial});

  final Payslip initial;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payslips = ref.watch(payslipsProvider(PayslipQuery())).value;
    final payslip = _resolveLatest(payslips, initial);

    final earnings = <Widget>[
      _row('Basic salary'.tr(), payslip.basicSalary),
      _row('Attendance'.tr(), payslip.attendanceAmount),
      _row('In time'.tr(), payslip.inTimeAmount),
      _row('Overtime'.tr(), payslip.overtimeTotal),
      _row('Off day'.tr(), payslip.offDayAmount),
      _row('Meal'.tr(), payslip.mealAmount),
      _row('Phone bill'.tr(), payslip.phoneBillAmount),
      _row('Travelling'.tr(), payslip.travellingAmount),
      _row('Benefits'.tr(), payslip.benefitAmount),
      _row('Bonus'.tr(), payslip.bonusAmount),
    ];

    final deductions = <Widget>[
      _row('Income tax'.tr(), payslip.taxAmount),
      _row('SSB'.tr(), payslip.ssbAmount),
      _row('Late fine'.tr(), payslip.lateAmount),
      _row('Shortage'.tr(), payslip.underAmount),
      _row('Unpaid leave'.tr(), payslip.unpaidLeaveAmount),
      _row('Unpaid deduction'.tr(), payslip.unpaidDeductionAmount),
      _row('Loan'.tr(), payslip.loanAmount),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(formatPayslipMonth(payslip.startDate)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          PayslipDetailHeader(payslip: payslip),
          const SizedBox(height: 16),
          PayslipBreakdownCard(
            title: 'Earnings'.tr(),
            icon: Icons.trending_up_rounded,
            accent: const Color(0xFF16A34A),
            items: earnings,
            totals: [
              PayslipSummaryRow(
                label: 'Gross earnings'.tr(),
                value: formatMoney(payslip.totalEarnings),
                highlight: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          PayslipBreakdownCard(
            title: 'Deductions'.tr(),
            icon: Icons.trending_down_rounded,
            accent: const Color(0xFFDC2626),
            items: deductions,
            totals: [
              PayslipSummaryRow(
                label: 'Total deductions'.tr(),
                value: formatMoney(payslip.totalDeductions),
                highlight: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Summary'.tr(),
            icon: Icons.receipt_long_outlined,
            children: [
              DetailRow(
                label: 'Taxable income'.tr(),
                value: formatMoney(payslip.taxableIncome),
              ),
              DetailRow(
                label: 'Gross earnings'.tr(),
                value: formatMoney(payslip.totalEarnings),
              ),
              DetailRow(
                label: 'Total deductions'.tr(),
                value: formatMoney(payslip.totalDeductions),
              ),
              PayslipSummaryRow(
                label: 'Net pay'.tr(),
                value: formatMoney(payslip.netSalary),
                highlight: true,
                emphasize: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          DetailSectionCard(
            title: 'Period'.tr(),
            icon: Icons.event_outlined,
            children: [
              DetailRow(
                label: 'From'.tr(),
                value: formatPayslipDate(payslip.startDate),
              ),
              DetailRow(
                label: 'To'.tr(),
                value: formatPayslipDate(payslip.endDate),
              ),
              if (payslip.createdAt != null)
                DetailRow(
                  label: 'Issued'.tr(),
                  value: formatPayslipDate(payslip.createdAt),
                ),
            ],
          ),
        ],
      ),
    );
  }

  PayslipAmountRow _row(String label, double amount) {
    return PayslipAmountRow(
      label: label,
      value: formatMoney(amount),
      isMuted: amount == 0,
    );
  }
}

Payslip _resolveLatest(List<Payslip>? payslips, Payslip fallback) {
  if (payslips == null) return fallback;
  for (final payslip in payslips) {
    if (payslip.id == fallback.id) return payslip;
  }
  return fallback;
}
