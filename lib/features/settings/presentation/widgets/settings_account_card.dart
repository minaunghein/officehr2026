import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/shared/global.dart';

import 'package:easy_localization/easy_localization.dart';

/// Compact account summary shown at the top of Settings; opens the profile.
class SettingsAccountCard extends ConsumerWidget {
  const SettingsAccountCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final session = ref.watch(currentUserProvider).value;
    if (session == null) return const SizedBox.shrink();

    final employeeCode = session.workInfo?.employeeCode;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => context.push(AppRoutes.profile),
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.primary.withValues(alpha: 0.72),
              ],
            ),
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.lg),
            child: Row(
              children: [
                ClipOval(
                  child: SizedBox.square(
                    dimension: 52,
                    child: ImageWidget(
                      imageUrl: session.profileUrl,
                      placeholder: ColoredBox(
                        color: Colors.white.withValues(alpha: 0.22),
                        child: Center(
                          child: Text(
                            initials(session.displayName) ?? '?',
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        session.displayName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        employeeCode == null
                            ? session.positionTitle
                            : '${session.positionTitle} · '
                                  '${'ID: {id}'.tr(namedArgs: {'id': employeeCode})}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimary.withValues(
                            alpha: 0.85,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
