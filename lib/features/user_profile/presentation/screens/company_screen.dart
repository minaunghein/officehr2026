import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/backend_payload_view.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_badge.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_state.dart';

class CompanyScreen extends ConsumerWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(userDetailsProvider);
    final theme = Theme.of(context);
    Future<void> refresh() => ref.read(userDetailsProvider.notifier).fetch();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Company Information',
          style: theme.textTheme.headlineMedium,
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     tooltip: 'Refresh company data',
        //     onPressed: refresh,
        //     icon: const Icon(Icons.refresh_rounded),
        //   ),
        // ],
      ),
      body: session.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) =>
            UserProfileErrorState(message: error.toString(), onRetry: refresh),
        data: (value) {
          if (value == null) {
            return const UserProfileEmptyState(
              message: 'No company data available.',
            );
          }
          return RefreshIndicator(
            onRefresh: refresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              children: [
                _CompanyHeader(company: value.activeCompany),
                const SizedBox(height: 14),
                UserProfileSection(
                  title: 'Company Overview',
                  icon: Icons.apartment_rounded,
                  children: [
                    UserProfileFieldGrid(
                      children: [
                        UserProfileInfoRow(
                          label: 'Company Name',
                          value: value.activeCompany.name,
                        ),
                        UserProfileInfoRow(
                          label: 'Short Code',
                          value: value.activeCompany.shortCode,
                        ),
                        UserProfileInfoRow(
                          label: 'Serial',
                          value: value.activeCompany.serial,
                        ),
                        UserProfileInfoRow(
                          label: 'Sequence',
                          value: value.activeCompany.sequence?.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                CompanyPayloadView(
                  title: 'Company Data',
                  icon: Icons.dataset_outlined,
                  payload: _payloadFor(value.activeCompany),
                ),
                if (value.companies.length > 1) ...[
                  const SizedBox(height: 16),
                  _OtherCompanies(companies: value.companies),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CompanyHeader extends StatelessWidget {
  const _CompanyHeader({required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ImageWidget(
                width: 50,
                height: 50,
                imageUrl: company.logo,
                placeholder: CircleAvatar(
                  radius: 30,
                  backgroundColor: theme.colorScheme.onPrimary.withValues(
                    alpha: 0.16,
                  ),
                  child: Icon(
                    Icons.business_rounded,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _display(company.name),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Short Code: ${_display(company.shortCode)}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary.withValues(
                        alpha: 0.78,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (company.active != null) ...[
                    const SizedBox(height: 10),
                    UserProfileActiveStatus(
                      isActive: company.active!,
                      onPrimary: true,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OtherCompanies extends StatelessWidget {
  const _OtherCompanies({required this.companies});

  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return UserProfileSection(
      title: 'Other Companies',
      icon: Icons.business_outlined,
      children: [
        ...companies.map(
          (company) => ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.business_outlined),
            title: Text(_display(company.name)),
            subtitle: Text(_display(company.id)),
          ),
        ),
      ],
    );
  }
}

Map<String, dynamic> _payloadFor(Company company) {
  return {
    'name': company.name,
    'name_mm': company.nameMm,
    'sc': company.shortCode,
    'sequence': company.sequence,
    'active': company.active,
    'serial': company.serial,
    'generalinfo': company.generalInfo,
    'socialmedia': company.socialMedia,
  };
}

String _display(Object? value) {
  if (value == null) return '-';
  final text = value.toString().trim();
  return text.isEmpty ? '-' : text;
}
