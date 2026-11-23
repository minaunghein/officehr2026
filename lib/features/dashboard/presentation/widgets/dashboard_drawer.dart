import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/shared/global.dart';

import 'package:easy_localization/easy_localization.dart';

class DashboardDrawer extends ConsumerWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final userDetails = ref.watch(currentUserProvider);
    final employee = userDetails.value?.employee;
    final role = userDetails.value?.role;
    final fullName =
        buildFullName(employee?.basicInfo) ?? userDetails.value?.username;
    final positionTitle = employee?.workInfo.position?.title;

    final empCode = employee?.workInfo.employeeCode;

    return Drawer(
      backgroundColor: theme.scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
            ),
            child: GestureDetector(
              onTap: () => context.push(AppRoutes.profile),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  !userDetails.hasError &&
                          userDetails.value != null &&
                          userDetails.value!.profileUrl.isNotEmpty
                      ? ClipOval(
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: CachedNetworkImage(
                              imageUrl: userDetails.value!.profileUrl,
                              httpHeaders: ref.watch(authImageHeadersProvider),
                              fit: BoxFit.cover,
                              placeholder: (context, url) => ContainerShimmer(),
                              errorWidget: (context, url, error) => Container(
                                color: theme.colorScheme.onPrimary.withValues(
                                  alpha: 0.2,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.person,
                                  color: theme.colorScheme.onSurface,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: theme.colorScheme.secondary,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                  const SizedBox(width: 12),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (userDetails.hasError)
                        Text(
                          'Error Getting User Info'.tr(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.red,
                          ),
                        )
                      else
                        Text(
                          fullName ?? 'Loading...'.tr(),
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5,
                          ),
                        ),
                      const SizedBox(height: 3),
                      Text(
                        positionTitle ?? 'Unknown Position'.tr(),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimary.withValues(
                            alpha: 0.85,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          if (empCode != null) ...[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.18),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'ID: {id}'.tr(namedArgs: {'id': empCode}),
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                          ],
                          if (role != null) ...[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.18),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                role.name,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: theme.colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _SectionLabel(label: 'Profile'.tr()),
          _SettingsGroup(
            children: [
              _NavTile(
                icon: Icons.badge_rounded,
                iconBg: const Color(0xFFEEF2FF),
                title: 'Digital ID Card'.tr(),
                subtitle: 'Your staff identity card'.tr(),
                onTap: () => context.push(AppRoutes.staffIdCard),
              ),
            ],
          ),
          _SectionLabel(label: 'HR Modules'.tr()),
          _SettingsGroup(
            children: [
              _NavTile(
                icon: Icons.receipt_long_rounded,
                iconBg: const Color(0xFFF5F3FF),
                title: 'Payslips'.tr(),
                subtitle: 'View your salary slips'.tr(),
                onTap: () => context.push(AppRoutes.payslip),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.beach_access_rounded,
                iconBg: const Color(0xFFECFEFF),
                title: 'Leave'.tr(),
                subtitle: 'Manage your leave balance'.tr(),
                onTap: () => context.push(AppRoutes.leave),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.timer_outlined,
                iconBg: const Color(0xFFFFFBEB),
                title: 'Overtime'.tr(),
                subtitle: 'Track your overtime requests'.tr(),
                onTap: () => context.push(AppRoutes.overtime),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.calendar_today_rounded,
                iconBg: const Color(0xFFFFFBEB),
                title: 'Public Holidays'.tr(),
                subtitle: 'National & company holidays'.tr(),
                onTap: () => context.push(AppRoutes.publicHoliday),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.business_rounded,
                iconBg: const Color(0xFFECFDF5),
                title: 'Company Information'.tr(),
                subtitle: 'About your organisation'.tr(),
                onTap: () => context.push(AppRoutes.company),
              ),
            ],
          ),
          _SectionLabel(label: 'ACCOUNT'.tr()),
          _SettingsGroup(
            children: [
              _NavTile(
                icon: Icons.settings_outlined,
                iconBg: const Color(0xFFF1F5F9),
                title: 'Settings'.tr(),
                subtitle: 'Appearance, reminders and security'.tr(),
                onTap: () => context.push(AppRoutes.settings),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSurface.withValues(alpha: 0.45),
          fontWeight: FontWeight.w700,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}

class _SettingsGroup extends StatelessWidget {
  const _SettingsGroup({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(children: children);
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      indent: 56,
      color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.15),
    );
  }
}

class _NavTile extends StatelessWidget {
  const _NavTile({
    required this.icon,
    required this.iconBg,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  final IconData icon;
  final Color iconBg;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        child: Row(
          children: [
            SizedBox(width: 36, height: 36, child: Icon(icon, size: 20)),
            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            Icon(
              Icons.chevron_right_rounded,
              size: 20,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.35),
            ),
          ],
        ),
      ),
    );
  }
}
