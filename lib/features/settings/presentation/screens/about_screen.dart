import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/core/widgets/error_state_widget.dart';
import 'package:office_hr/features/settings/presentation/providers/app_info_providers.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';

import 'package:easy_localization/easy_localization.dart';

/// Build, environment and support details for the app.
class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final info = ref.watch(appInfoProvider);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('About'.tr())),
      body: info.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorStateWidget(
          message: getUserFriendlyError(error),
          onRetry: () => ref.invalidate(appInfoProvider),
        ),
        data: (appInfo) => ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.md,
            AppSizes.md,
            AppSizes.md,
            AppSizes.xxl,
          ),
          children: [
            _Header(versionLabel: appInfo.versionLabel),
            const SizedBox(height: AppSizes.xl),
            SettingsGroup(
              title: 'Application'.tr(),
              children: [
                SettingsTile(
                  icon: Icons.tag_rounded,
                  title: 'Version'.tr(),
                  value: appInfo.version,
                  accessory: SettingsTileAccessory.value,
                ),
                SettingsTile(
                  icon: Icons.build_outlined,
                  title: 'Build number'.tr(),
                  value: appInfo.build,
                  accessory: SettingsTileAccessory.value,
                ),
                SettingsTile(
                  icon: Icons.layers_outlined,
                  title: 'Environment'.tr(),
                  value: appInfo.environment,
                  accessory: SettingsTileAccessory.value,
                ),
                SettingsTile(
                  icon: Icons.phone_android_rounded,
                  title: 'Platform'.tr(),
                  value: appInfo.platform,
                  accessory: SettingsTileAccessory.value,
                ),
                SettingsTile(
                  icon: Icons.schedule_rounded,
                  title: 'Time zone'.tr(),
                  subtitle: 'Reminders use this zone on your device.'.tr(),
                  value: appInfo.timezone,
                  accessory: SettingsTileAccessory.value,
                ),
              ],
            ),
            const SizedBox(height: AppSizes.lg),
            SettingsGroup(
              title: 'Server'.tr(),
              description:
                  'Requests are sent to this address. Tap to copy it if you are reporting a problem.'
                      .tr(),
              children: [
                SettingsTile(
                  icon: Icons.dns_outlined,
                  title: 'API endpoint'.tr(),
                  value: appInfo.baseUrl,
                  accessory: SettingsTileAccessory.none,
                  onTap: () async {
                    await Clipboard.setData(
                      ClipboardData(text: appInfo.baseUrl),
                    );
                    if (context.mounted) {
                      SnackbarUtils.showSuccess('Server address copied.'.tr());
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: AppSizes.lg),
            SettingsGroup(
              title: 'Support'.tr(),
              children: [
                if (ref.watch(sessionAccessProvider).viewCompany)
                  SettingsTile(
                    icon: Icons.business_rounded,
                    title: 'Company Information'.tr(),
                    subtitle: 'Organisation details and contacts.'.tr(),
                    onTap: () => context.push(AppRoutes.company),
                  ),
                SettingsTile(
                  icon: Icons.help_outline_rounded,
                  title: 'Frequently asked questions'.tr(),
                  subtitle: 'Attendance, leave and payslip basics.'.tr(),
                  onTap: () => _showFaq(context),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.xl),
            Center(
              child: Text(
                '© {year} Office HR'.tr(
                  namedArgs: {'year': DateTime.now().year.toString()},
                ),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showFaq(BuildContext context) async {
    const faqs = [
      (
        'Why did my clock-in not count?',
        'Remote clock-ins outside the allowed range are sent for approval. Track them under Clock Requests.',
      ),
      (
        'How do reminders work?',
        'Each reminder repeats weekly on the selected days. Keep notifications allowed for the app so they can arrive.',
      ),
      (
        'Why is my payslip protected?',
        'Sensitive screens can require biometrics. Change this in Settings > Security.',
      ),
    ];

    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheetContext) {
        final theme = Theme.of(sheetContext);
        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSizes.md,
              0,
              AppSizes.md,
              AppSizes.md,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequently asked questions'.tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSizes.md),
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final (question, answer) in faqs)
                          Padding(
                            padding: const EdgeInsets.only(bottom: AppSizes.md),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  question.tr(),
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: AppSizes.xxxxs),
                                Text(
                                  answer.tr(),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.versionLabel});

  final String versionLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(AppSizes.xl),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withValues(alpha: 0.7),
          ],
        ),
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.22),
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            ),
            child: Icon(
              Icons.work_rounded,
              color: theme.colorScheme.onPrimary,
              size: AppSizes.iconLg,
            ),
          ),
          const SizedBox(width: AppSizes.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office HR'.tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: AppSizes.xxxxs),
                Text(
                  'Attendance, leave and payroll for your team.'.tr(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.sm,
              vertical: AppSizes.xxs,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            ),
            child: Text(
              versionLabel,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
