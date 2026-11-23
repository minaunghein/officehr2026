import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/backend_payload_view.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_section.dart';
import 'package:office_hr/shared/date_formatter.dart';
import 'package:office_hr/shared/global.dart';

import 'package:easy_localization/easy_localization.dart';

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
        RecordField(label: 'Company ID'.tr(), value: company.id),
        RecordFields(
          children: [
            if (includeOverview) ...[
              if (company.nameMm?.trim().isNotEmpty == true)
                RecordField(label: 'Local name'.tr(), value: company.nameMm),
              RecordField(label: 'Short code'.tr(), value: company.shortCode),
              RecordField(label: 'Serial number'.tr(), value: company.serial),
              if (company.sequence != null)
                RecordField(
                  label: 'Sequence'.tr(),
                  value: company.sequence.toString(),
                ),
            ],
            RecordField(
              label: 'Organisation status'.tr(),
              value: company.active == null
                  ? 'Not provided'.tr()
                  : company.active!
                  ? 'Active'.tr()
                  : 'Inactive'.tr(),
            ),
            if (company.deleted != null)
              RecordField(
                label: 'Record status'.tr(),
                value: company.deleted! ? 'Deleted'.tr() : 'Current'.tr(),
              ),
            RecordField(
              label: 'Created date'.tr(),
              value: formatDateString(company.createdAt),
            ),
            RecordField(
              label: 'Last updated'.tr(),
              value: formatDateString(company.updatedAt),
            ),
            if (company.deletedAt?.trim().isNotEmpty == true)
              RecordField(
                label: 'Deleted date'.tr(),
                value: formatDateString(company.deletedAt),
              ),
            if (company.version != null)
              RecordField(
                label: 'Record version'.tr(),
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
      if (company.active != null)
        company.active! ? 'Active'.tr() : 'Inactive'.tr(),
    ].join(' · ');

    return ExpansionTile(
      key: PageStorageKey('company-${company.id}'),
      shape: const Border(),
      collapsedShape: const Border(),
      tilePadding: EdgeInsets.zero,
      childrenPadding: const EdgeInsetsDirectional.only(
        start: AppSizes.md,
        bottom: AppSizes.md,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      iconColor: theme.detailMuted,
      collapsedIconColor: theme.detailMuted,
      title: Text(
        valueOrDash(company.name),
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: subtitle.isEmpty
          ? null
          : Text(
              subtitle,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.detailMuted,
              ),
            ),
      children: [
        CompanyRecordFields(company: company, includeOverview: true),
        if (company.generalInfo?.isNotEmpty == true) ...[
          const SizedBox(height: AppSizes.md),
          CompanyPayloadView(
            title: 'Company details'.tr(),
            payload: company.generalInfo!,
          ),
        ],
        if (company.socialMedia?.isNotEmpty == true) ...[
          const SizedBox(height: AppSizes.md),
          CompanyPayloadView(
            title: 'Online presence'.tr(),
            payload: company.socialMedia!,
          ),
        ],
      ],
    );
  }
}
