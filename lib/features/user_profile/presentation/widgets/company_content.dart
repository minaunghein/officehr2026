import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/backend_payload_view.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/company_record_details.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_header.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/global.dart';

class CompanyContent extends StatelessWidget {
  const CompanyContent({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final company = session.activeCompany;
    final otherCompanies = session.companies
        .where((item) => item.id != company.id)
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RecordHeader(
          label: 'Current organisation',
          title: valueOrDash(company.name),
          subtitle: company.nameMm ?? '',
          avatar: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            child: SizedBox(
              width: 64,
              height: 64,
              child: ImageWidget(
                width: 64,
                height: 64,
                imageUrl: company.logo,
                boxFit: BoxFit.contain,
                placeholder: ColoredBox(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
                  child: Icon(
                    Icons.business_outlined,
                    size: AppSizes.iconLg,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
          tags: [
            if (company.shortCode?.trim().isNotEmpty == true)
              RecordTag(
                label: company.shortCode!,
                icon: Icons.business_outlined,
              ),
            if (company.active != null)
              RecordTag(
                label: company.active!
                    ? 'Active organisation'
                    : 'Inactive organisation',
              ),
          ],
        ),
        const SizedBox(height: AppSizes.lg),
        UserProfileSection(
          title: 'Organisation overview',
          icon: Icons.apartment_outlined,
          children: [
            UserProfileFieldGrid(
              children: [
                UserProfileInfoRow(label: 'Company name', value: company.name),
                if (company.nameMm?.trim().isNotEmpty == true)
                  UserProfileInfoRow(
                    label: 'Local name',
                    value: company.nameMm,
                  ),
                UserProfileInfoRow(
                  label: 'Short code',
                  value: company.shortCode,
                ),
                UserProfileInfoRow(
                  label: 'Serial number',
                  value: company.serial,
                ),
                if (company.sequence != null)
                  UserProfileInfoRow(
                    label: 'Sequence',
                    value: company.sequence.toString(),
                  ),
              ],
            ),
          ],
        ),
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
        const SizedBox(height: AppSizes.md),
        UserProfileSection(
          title: 'Company record',
          icon: Icons.description_outlined,
          children: [CompanyRecordFields(company: company)],
        ),
        if (otherCompanies.isNotEmpty) ...[
          const SizedBox(height: AppSizes.md),
          UserProfileSection(
            title: 'Other organisations',
            icon: Icons.business_outlined,
            children: [
              Text(
                'Organisations linked to your account',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppSizes.xs),
              for (var i = 0; i < otherCompanies.length; i++) ...[
                if (i > 0) const Divider(height: AppSizes.lg),
                LinkedCompanyTile(company: otherCompanies[i]),
              ],
            ],
          ),
        ],
      ],
    );
  }
}
