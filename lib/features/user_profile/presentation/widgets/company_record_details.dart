import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/backend_payload_view.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/date_formatter.dart';
import 'package:office_hr/shared/global.dart';

class CompanyRecordFields extends StatelessWidget {
  const CompanyRecordFields({
    super.key,
    required this.company,
    this.includeOverview = false,
  });

  final Company company;
  final bool includeOverview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UserProfileInfoRow(label: 'Company ID', value: company.id),
        UserProfileFieldGrid(
          children: [
            if (includeOverview) ...[
              if (company.nameMm?.trim().isNotEmpty == true)
                UserProfileInfoRow(label: 'Local name', value: company.nameMm),
              UserProfileInfoRow(label: 'Short code', value: company.shortCode),
              UserProfileInfoRow(label: 'Serial number', value: company.serial),
              if (company.sequence != null)
                UserProfileInfoRow(
                  label: 'Sequence',
                  value: company.sequence.toString(),
                ),
            ],
            UserProfileInfoRow(
              label: 'Organisation status',
              value: company.active == null
                  ? 'Not provided'
                  : company.active!
                  ? 'Active'
                  : 'Inactive',
            ),
            if (company.deleted != null)
              UserProfileInfoRow(
                label: 'Record status',
                value: company.deleted! ? 'Deleted' : 'Current',
              ),
            UserProfileInfoRow(
              label: 'Created date',
              value: formatDateString(company.createdAt),
            ),
            UserProfileInfoRow(
              label: 'Last updated',
              value: formatDateString(company.updatedAt),
            ),
            if (company.deletedAt?.trim().isNotEmpty == true)
              UserProfileInfoRow(
                label: 'Deleted date',
                value: formatDateString(company.deletedAt),
              ),
            if (company.version != null)
              UserProfileInfoRow(
                label: 'Record version',
                value: company.version.toString(),
              ),
          ],
        ),
      ],
    );
  }
}

class LinkedCompanyTile extends StatelessWidget {
  const LinkedCompanyTile({super.key, required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = [
      if (company.shortCode?.trim().isNotEmpty == true) company.shortCode!,
      if (company.active != null) company.active! ? 'Active' : 'Inactive',
    ].join(' · ');

    return ExpansionTile(
      key: PageStorageKey('company-${company.id}'),
      shape: const Border(),
      collapsedShape: const Border(),
      tilePadding: EdgeInsets.zero,
      childrenPadding: const EdgeInsets.only(bottom: AppSizes.md),
      leading: Icon(
        Icons.business_outlined,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      title: Text(valueOrDash(company.name)),
      subtitle: subtitle.isEmpty ? null : Text(subtitle),
      children: [
        CompanyRecordFields(company: company, includeOverview: true),
        if (company.generalInfo?.isNotEmpty == true) ...[
          const SizedBox(height: AppSizes.md),
          CompanyPayloadView(
            title: 'Company details',
            icon: Icons.info_outline_rounded,
            payload: company.generalInfo!,
          ),
        ],
        if (company.socialMedia?.isNotEmpty == true) ...[
          const SizedBox(height: AppSizes.md),
          CompanyPayloadView(
            title: 'Online presence',
            icon: Icons.language_outlined,
            payload: company.socialMedia!,
          ),
        ],
      ],
    );
  }
}
