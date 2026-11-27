import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/settings/presentation/providers/app_info_providers.dart';
import 'package:office_hr/features/settings/presentation/widgets/appearance_settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/reminders_settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/security_settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';

import 'package:easy_localization/easy_localization.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final appInfo = ref.watch(appInfoProvider).value;
    final access = ref.watch(sessionAccessProvider);

    return Scaffold(
      backgroundColor: theme.detailCanvas,
      appBar: AppBar(
        backgroundColor: theme.detailCanvas,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 2,
        titleTextStyle: theme.detailPageTitle?.copyWith(fontSize: 24),
        title: Text('Settings'.tr()),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          const maxContentWidth = 540.0;
          final inset = ((constraints.maxWidth - maxContentWidth) / 2).clamp(
            AppSizes.xl,
            double.infinity,
          );
          return ListView(
            padding: EdgeInsets.fromLTRB(
              inset,
              AppSizes.sm,
              inset,
              AppSizes.xl,
            ),
            children: [
              const AppearanceSettingsGroup(),
              const SizedBox(height: AppSizes.lg),
              const RemindersSettingsGroup(),
              const SizedBox(height: AppSizes.lg),
              const SecuritySettingsGroup(),
              const SizedBox(height: AppSizes.lg),
              SettingsGroup(
                title: 'Account'.tr(),
                children: [
                  SettingsTile(
                    icon: Icons.lock_outline_rounded,
                    title: 'Change Password'.tr(),
                    onTap: () => context.push(AppRoutes.changePassword),
                  ),
                  SettingsTile(
                    icon: Icons.badge_outlined,
                    title: 'Digital ID Card'.tr(),
                    enabled: access.viewProfile,
                    onTap: appRouteTap(context, access, AppRoutes.staffIdCard),
                  ),
                  SettingsTile(
                    icon: Icons.business_outlined,
                    title: 'Company Information'.tr(),
                    enabled: access.viewCompany,
                    onTap: appRouteTap(context, access, AppRoutes.company),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.lg),
              const SettingsGroup(children: [_LogoutTile()]),
              if (appInfo != null) ...[
                const SizedBox(height: AppSizes.md),
                Text(
                  'Office HR {version}'.tr(
                    namedArgs: {'version': appInfo.versionLabel},
                  ),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.detailMuted,
                  ),
                ),
              ],
              const SizedBox(height: AppSizes.lg),
            ],
          );
        },
      ),
    );
  }
}

class _LogoutTile extends HookConsumerWidget {
  const _LogoutTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final busy = useState(false);
    final colors = Theme.of(context).colorScheme;

    Future<void> confirmLogout() async {
      if (busy.value) return;
      busy.value = true;
      try {
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            title: Text('Logout'.tr()),
            content: Text('Are you sure you want to logout?'.tr()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext, false),
                child: Text('Cancel'.tr()),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: colors.error,
                  foregroundColor: colors.onError,
                ),
                onPressed: () => Navigator.pop(dialogContext, true),
                child: Text('Logout'.tr()),
              ),
            ],
          ),
        );
        if (confirmed == true && context.mounted) {
          await ref.read(loginProvider.notifier).logout();
        }
      } catch (_) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Something went wrong. Please try again.'.tr()),
            ),
          );
        }
      } finally {
        if (context.mounted) busy.value = false;
      }
    }

    return SettingsTile(
      icon: Icons.logout_rounded,
      title: 'Logout'.tr(),
      destructive: true,
      accessory: SettingsTileAccessory.none,
      onTap: busy.value ? null : confirmLogout,
    );
  }
}
