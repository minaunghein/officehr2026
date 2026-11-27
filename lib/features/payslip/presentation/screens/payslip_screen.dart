import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/security/widgets/biometric_gate.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/empty_state_widget.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/params/payslip_query.dart';
import 'package:office_hr/features/payslip/presentation/providers/payslip_providers.dart';
import 'package:office_hr/features/payslip/presentation/utils/payslip_formatters.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_card.dart';
import 'package:office_hr/features/payslip/presentation/widgets/payslip_period_filter.dart';

import 'package:easy_localization/easy_localization.dart';

class PayslipScreen extends StatelessWidget {
  const PayslipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payslips'.tr()), centerTitle: true),
      body: BiometricGate(
        reason: 'Authenticate to view your payslips'.tr(),
        title: 'Payslips are protected'.tr(),
        description:
            'Unlock with your fingerprint, face, or device passcode to continue.'
                .tr(),
        child: _PayslipContent(),
      ),
    );
  }
}

class _PayslipContent extends HookConsumerWidget {
  const _PayslipContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final range = useState<DateTimeRange?>(null);
    final firstDate = useMemoized(() => DateTime(now.year - 2));
    final lastDate = useMemoized(
      () => DateTime(now.year + 1, now.month, now.day),
    );

    final query = PayslipQuery(
      start: range.value?.start,
      end: range.value?.end,
    );
    final payslipsAsync = ref.watch(payslipsProvider(query));

    Future<void> refresh() async {
      ref.invalidate(payslipsProvider(query));
      await ref.read(payslipsProvider(query).future);
    }

    Future<void> pickRange() async {
      final picked = await showDateRangePicker(
        context: context,
        firstDate: firstDate,
        lastDate: lastDate,
        initialDateRange: range.value,
        helpText: 'Filter payslips'.tr(),
      );
      if (picked != null) range.value = picked;
    }

    return RefreshIndicator(
      onRefresh: refresh,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                PayslipPeriodFilter(
                  range: range.value,
                  onTap: pickRange,
                  onClear: () => range.value = null,
                ),
                const SizedBox(height: 14),
                payslipsAsync.maybeWhen(
                  data: (payslips) => payslips.isEmpty
                      ? const SizedBox.shrink()
                      : _TotalBanner(payslips: payslips),
                  loading: () => const Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Column(
                      children: [
                        ContainerShimmer(height: 56),
                        SizedBox(height: 14),
                      ],
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ]),
            ),
          ),
          ..._buildListBody(context, ref, payslipsAsync, refresh, query),
        ],
      ),
    );
  }

  List<Widget> _buildListBody(
    BuildContext context,
    WidgetRef ref,
    AsyncValue<List<Payslip>> async,
    Future<void> Function() refresh,
    PayslipQuery query,
  ) {
    final access = ref.watch(sessionAccessProvider);
    return async.when(
      data: (payslips) {
        if (payslips.isEmpty) {
          return [
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyStateWidget(
                icon: Icons.receipt_long_rounded,
                title: 'No payslips yet'.tr(),
                message:
                    'Payslips appear here once payroll is processed for your salary period.'
                        .tr(),
              ),
            ),
          ];
        }
        return [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 32),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final payslip = payslips[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: PayslipCard(
                    payslip: payslip,
                    onTap: appRouteTap(
                      context,
                      access,
                      AppRoutes.payslipDetail,
                      extra: payslip,
                    ),
                  ),
                );
              }, childCount: payslips.length),
            ),
          ),
        ];
      },
      loading: () => [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 32),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: ContainerShimmer(height: 92),
              ),
              childCount: 5,
            ),
          ),
        ),
      ],
      error: (error, _) => [
        SliverFillRemaining(
          hasScrollBody: false,
          child: ErrorStateWidget(
            message: getUserFriendlyError(error),
            onRetry: () => ref.invalidate(payslipsProvider(query)),
          ),
        ),
      ],
    );
  }
}

class _TotalBanner extends StatelessWidget {
  const _TotalBanner({required this.payslips});

  final List<Payslip> payslips;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalNet = payslips.fold<double>(0, (sum, p) => sum + p.netSalary);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total net pay'.tr(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  formatMoney(totalNet),
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF16A34A),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              payslips.length == 1
                  ? '1 month'.tr()
                  : '{count} months'.tr(
                      namedArgs: {'count': '${payslips.length}'},
                    ),
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
