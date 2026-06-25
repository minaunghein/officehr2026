import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';
import 'package:office_hr/shared/global.dart';

class DashboardDrawer extends ConsumerWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final themeStyle = ref.watch(themeProvider);
    final userDetails = ref.watch(userDetailsProvider);
    final bio = userDetails.value?.userBio;
    final fullName =
        buildFullName(bio?.basicInfo) ?? userDetails.value?.username;
    final titles = bio?.workInfo.position.titles;
    final positionTitle =
        (titles != null && titles.isNotEmpty ? titles.first : null) ??
        userDetails.value?.role;
    final empCode = bio != null
        ? '${bio.workInfo.employeeCodePrefix}${bio.workInfo.employeeCode}'
        : null;

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
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                color: theme.colorScheme.primaryContainer,
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.person,
                                  color: theme.colorScheme.onPrimaryContainer,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.person, size: 30),
                        ),
                  const SizedBox(width: 12),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (userDetails.hasError)
                        Text(
                          'Error Getting User Info',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.red,
                          ),
                        )
                      else
                        Text(
                          fullName ?? 'Loading...',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5,
                          ),
                        ),
                      const SizedBox(height: 3),
                      Text(
                        positionTitle ?? 'Unknown Position',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimary.withValues(
                            alpha: 0.85,
                          ),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (empCode != null) ...[
                        const SizedBox(height: 6),
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
                            'ID: $empCode',
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
            ),
          ),
          const _SectionLabel(label: 'Appearance'),
          _SettingsGroup(
            children: [_ThemeTile(themeStyle: themeStyle, ref: ref)],
          ),
          const _SectionLabel(label: 'HR Modules'),
          _SettingsGroup(
            children: [
              _NavTile(
                icon: Icons.receipt_long_rounded,
                iconBg: const Color(0xFFF5F3FF),
                title: 'Payslips',
                subtitle: 'View your salary slips',
                onTap: () => context.push(AppRoutes.payslip),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.beach_access_rounded,
                iconBg: const Color(0xFFECFEFF),
                title: 'Leave',
                subtitle: 'Manage your leave balance',
                onTap: () => context.push(AppRoutes.leave),
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.calendar_today_rounded,
                iconBg: const Color(0xFFFFFBEB),
                title: 'Public Holidays',
                subtitle: 'National & company holidays',
                onTap: () {},
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.business_rounded,
                iconBg: const Color(0xFFECFDF5),
                title: 'Company Information',
                subtitle: 'About your organisation',
                onTap: () => context.push(AppRoutes.company),
              ),
            ],
          ),
          const _SectionLabel(label: 'ACCOUNT'),
          _SettingsGroup(
            children: [
              _NavTile(
                icon: Icons.lock_outline_rounded,
                iconBg: const Color(0xFFF1F5F9),
                title: 'Change Password',
                onTap: () {},
              ),
              const _Divider(),
              _NavTile(
                icon: Icons.logout_rounded,
                iconBg: const Color(0xFFFEF2F2),
                title: 'Logout',
                titleColor: const Color(0xFFDC2626),
                showChevron: false,
                onTap: () => _confirmLogout(context, ref),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Future<void> _confirmLogout(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFDC2626),
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Logout'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(loginProvider.notifier).logout();
    }
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
    this.titleColor,
    this.showChevron = true,
  });

  final IconData icon;
  final Color iconBg;
  final String title;
  final String? subtitle;
  final Color? titleColor;
  final bool showChevron;
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
                      color: titleColor,
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

            if (showChevron)
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

class _ThemeTile extends StatelessWidget {
  const _ThemeTile({required this.themeStyle, required this.ref});

  final OfficeHrTheme themeStyle;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = themeStyle.isDark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Row(
        children: [
          SizedBox(
            width: 36,
            height: 36,

            child: Icon(
              isDark ? Icons.dark_mode_rounded : Icons.light_mode_rounded,

              size: 20,
            ),
          ),
          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dark Mode',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  isDark ? 'Currently dark' : 'Currently light',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),

          Switch(
            value: isDark,
            onChanged: (_) {
              ref
                  .read(themeProvider.notifier)
                  .setTheme(isDark ? OfficeHrTheme.light : OfficeHrTheme.dark);
            },
          ),
        ],
      ),
    );
  }
}
