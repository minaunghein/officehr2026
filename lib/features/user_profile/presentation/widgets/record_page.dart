import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_state.dart';

const _recordMaxWidth = 900.0;

class RecordPage extends ConsumerWidget {
  const RecordPage({
    super.key,
    required this.title,
    required this.emptyMessage,
    required this.contentBuilder,
  });

  final String title;
  final String emptyMessage;
  final Widget Function(AuthSession session) contentBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(userDetailsProvider);
    final theme = Theme.of(context);
    Future<void> refresh() => ref.read(userDetailsProvider.notifier).fetch();

    return Scaffold(
      backgroundColor: theme.detailCanvas,
      appBar: AppBar(
        title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        titleSpacing: 2,
        titleTextStyle: theme.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: theme.detailCanvas,
        scrolledUnderElevation: 0,
        centerTitle: false,
      ),
      body: SafeArea(
        top: false,
        child: session.when(
          loading: () => const _RecordSkeleton(),
          error: (error, _) => UserProfileErrorState(
            message: getUserFriendlyError(error),
            onRetry: refresh,
          ),
          data: (value) {
            if (value == null) {
              return UserProfileEmptyState(message: emptyMessage);
            }
            return RefreshIndicator(
              onRefresh: refresh,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(
                  AppSizes.xl,
                  AppSizes.lg,
                  AppSizes.xl,
                  AppSizes.xxl,
                ),
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: _recordMaxWidth,
                      ),
                      child: SelectionArea(child: contentBuilder(value)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _RecordSkeleton extends StatelessWidget {
  const _RecordSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSizes.xl),
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: _recordMaxWidth),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: ContainerShimmer(
                    height: 28,
                    width: 200,
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusSm,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.xxl),
                for (final width in [128.0, 200.0, 164.0]) ...[
                  Divider(height: 1, color: Theme.of(context).detailRule),
                  const SizedBox(height: AppSizes.lg),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: ContainerShimmer(
                      height: 20,
                      width: width,
                      borderRadius: BorderRadius.circular(
                        AppSizes.borderRadiusSm,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.lg),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
