import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/user/domain/entities/company.dart';
import 'package:office_hr/features/user/domain/entities/general_info.dart';
import 'package:office_hr/features/user/domain/entities/social_media.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';

class CompanyScreen extends ConsumerWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final userDtlAsync = ref.watch(userDetailsProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
        title: Text(
          'Company Info',
          style: theme.textTheme.headlineMedium?.copyWith(
            color: theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: BackButton(color: theme.colorScheme.onPrimary),
      ),
      body: userDtlAsync.when(
        data: (userDetails) {
          if (userDetails == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.business_rounded,
                    size: 64,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No User Details found',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            );
          }

          final company = userDetails.company;
          final generalInfo = company.generalInfo;
          final socialMedia = company.socialMedia;

          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(userDetailsProvider.notifier).fetch();
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CompanyHeader(company: company),
                  const SizedBox(height: 16),
                  _InfoCard(
                    title: 'Organization Details',
                    icon: Icons.info_outline_rounded,
                    children: [
                      _InfoRow(label: 'Company ID', value: company.id),
                      if (company.shortCode != null &&
                          company.shortCode!.isNotEmpty)
                        _InfoRow(
                          label: 'Short Code',
                          value: company.shortCode!,
                        ),
                      if (company.serial != null && company.serial!.isNotEmpty)
                        _InfoRow(
                          label: 'Serial Number',
                          value: company.serial!,
                        ),
                      _InfoRow(
                        label: 'Status',
                        widgetValue: Text(
                          company.active ? 'Active' : 'Inactive',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: company.active ? Colors.green : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      if (company.createdAt != null)
                        _InfoRow(
                          label: 'Registered On',
                          value: _formatDate(company.createdAt!),
                        ),
                    ],
                  ),
                  if (generalInfo != null && _hasGeneralInfo(generalInfo))
                    _InfoCard(
                      title: 'General Information',
                      icon: Icons.description_outlined,
                      children: [
                        if (generalInfo.street != null &&
                            generalInfo.street!.isNotEmpty)
                          _InfoRow(label: 'Street', value: generalInfo.street),
                        if (generalInfo.street1 != null &&
                            generalInfo.street1!.isNotEmpty)
                          _InfoRow(
                            label: 'Street 1',
                            value: generalInfo.street1,
                          ),
                        if (generalInfo.city != null)
                          _InfoRow(
                            label: 'City',
                            value: generalInfo.city.toString(),
                          ),
                        if (generalInfo.state != null)
                          _InfoRow(
                            label: 'State',
                            value: generalInfo.state.toString(),
                          ),
                        if (generalInfo.country != null)
                          _InfoRow(
                            label: 'Country',
                            value: generalInfo.country.toString(),
                          ),
                        if (generalInfo.zip != null)
                          _InfoRow(
                            label: 'Zip',
                            value: generalInfo.zip.toString(),
                          ),
                        if (generalInfo.email != null &&
                            generalInfo.email!.isNotEmpty)
                          _InfoRow(label: 'Email', value: generalInfo.email),
                        if (generalInfo.phone != null &&
                            generalInfo.phone!.isNotEmpty)
                          _InfoRow(label: 'Phone', value: generalInfo.phone),
                        if (generalInfo.registerId != null &&
                            generalInfo.registerId!.isNotEmpty)
                          _InfoRow(
                            label: 'Register ID',
                            value: generalInfo.registerId,
                          ),
                        if (generalInfo.website != null &&
                            generalInfo.website!.isNotEmpty)
                          _InfoRow(
                            label: 'Website',
                            value: generalInfo.website,
                          ),
                        if (generalInfo.updatedAt != null)
                          _InfoRow(
                            label: 'Updated On',
                            value: _formatDate(generalInfo.updatedAt!),
                          ),
                      ],
                    ),
                  if (socialMedia != null && _hasSocialMedia(socialMedia))
                    _InfoCard(
                      title: 'Social & Web Links',
                      icon: Icons.public_rounded,
                      children: [
                        if (socialMedia.facebookLink != null &&
                            socialMedia.facebookLink!.isNotEmpty)
                          _LinkRow(
                            label: 'Facebook',
                            value: socialMedia.facebookLink!,
                          ),
                        if (socialMedia.linkedInLink != null &&
                            socialMedia.linkedInLink!.isNotEmpty)
                          _LinkRow(
                            label: 'LinkedIn',
                            value: socialMedia.linkedInLink!,
                          ),
                        if (socialMedia.twitterLink != null &&
                            socialMedia.twitterLink!.isNotEmpty)
                          _LinkRow(
                            label: 'Twitter',
                            value: socialMedia.twitterLink!,
                          ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 48,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  'Failed to load company info',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () =>
                      ref.read(userDetailsProvider.notifier).fetch(),
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _hasGeneralInfo(GeneralInfo info) {
    return (info.street?.isNotEmpty ?? false) ||
        (info.street1?.isNotEmpty ?? false) ||
        info.city != null ||
        info.state != null ||
        info.country != null ||
        info.zip != null ||
        (info.email?.isNotEmpty ?? false) ||
        (info.phone?.isNotEmpty ?? false) ||
        (info.registerId?.isNotEmpty ?? false) ||
        (info.website?.isNotEmpty ?? false) ||
        info.updatedAt != null;
  }

  bool _hasSocialMedia(SocialMedia socialMedia) {
    return (socialMedia.facebookLink?.isNotEmpty ?? false) ||
        (socialMedia.linkedInLink?.isNotEmpty ?? false) ||
        (socialMedia.twitterLink?.isNotEmpty ?? false);
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final day = date.day.toString().padLeft(2, '0');
    return '$day ${months[date.month - 1]} ${date.year}';
  }
}

class _CompanyHeader extends StatelessWidget {
  const _CompanyHeader({required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initials = company.name.trim().isNotEmpty
        ? company.name
              .trim()
              .split(RegExp(r'\s+'))
              .take(2)
              .map((s) => s[0])
              .join()
              .toUpperCase()
        : 'C';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withValues(alpha: 0.7),
          ],
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 52,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: SizedBox(
                width: 96,
                height: 96,
                child: company.logo != null && company.logo!.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: company.logo!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: theme.colorScheme.surfaceContainerHighest,
                          alignment: Alignment.center,
                          child: Text(
                            initials,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: theme.colorScheme.surfaceContainerHighest,
                        alignment: Alignment.center,
                        child: Text(
                          initials,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            company.name,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (company.shortCode != null && company.shortCode!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                company.shortCode!.toUpperCase(),
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  final String title;
  final IconData icon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: theme.colorScheme.primary),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _LinkRow extends StatelessWidget {
  const _LinkRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _InfoRow(
      label: label,
      widgetValue: Row(
        children: [
          Icon(Icons.link_rounded, size: 20, color: theme.colorScheme.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, this.value, this.widgetValue});

  final String label;
  final String? value;
  final Widget? widgetValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child:
                widgetValue ??
                Text(
                  (value == null || value!.trim().isEmpty) ? '-' : value!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
