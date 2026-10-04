import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_state.dart';

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
    // final theme = Theme.of(context);
    Future<void> refresh() => ref.read(userDetailsProvider.notifier).fetch();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          // style: theme.textTheme.titleLarge?.copyWith(
          //   fontWeight: FontWeight.w700,
          // ),
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
        // actions: [
        //   IconButton(
        //     tooltip: 'Refresh $title',
        //     onPressed: session.isLoading ? null : refresh,
        //     icon: const Icon(Icons.refresh_rounded),
        //   ),
        //   const SizedBox(width: AppSizes.xs),
        // ],
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
                  AppSizes.lg,
                  AppSizes.sm,
                  AppSizes.lg,
                  AppSizes.xxl,
                ),
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
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
      padding: const EdgeInsets.all(AppSizes.lg),
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                ContainerShimmer(
                  height: 180,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
                ),
                const SizedBox(height: AppSizes.lg),
                for (var i = 0; i < 2; i++) ...[
                  ContainerShimmer(
                    height: 240,
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
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
