import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/company/company.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/backend_payload_view.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/company_record_details.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_header.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_section.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/global.dart';

class CompanyContent extends StatelessWidget {
  const CompanyContent({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final company = session.activeCompany;
    final linked = session.companies.where((item) => item.id != company.id);
    final primary = [
      if (company.generalInfo?.isNotEmpty == true)
        CompanyPayloadView(
          title: 'Company details'.tr(),
          payload: company.generalInfo!,
        ),
      if ((company.shortCode?.trim().isNotEmpty ?? false) ||
          (company.serial?.trim().isNotEmpty ?? false) ||
          company.sequence != null)
        RecordSection(
          title: 'Organisation overview'.tr(),
          children: [
            RecordFields(
              children: [
                RecordField(label: 'Short code'.tr(), value: company.shortCode),
                RecordField(label: 'Serial number'.tr(), value: company.serial),
                RecordField(
                  label: 'Sequence'.tr(),
                  value: company.sequence?.toString(),
                ),
              ],
            ),
          ],
        ),
    ];
    final secondary = [
      if (company.socialMedia?.isNotEmpty == true)
        CompanyPayloadView(
          title: 'Online presence'.tr(),
          payload: company.socialMedia!,
        ),
      if (linked.isNotEmpty)
        RecordSection(
          title: 'Other organisations'.tr(),
          children: [
            for (final item in linked) LinkedCompanyTile(company: item),
          ],
        ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _CompanyIdentity(company: company),
        const SizedBox(height: AppSizes.xxl),
        if (primary.isNotEmpty && secondary.isNotEmpty)
          RecordColumns(
            primary: _SectionStack(primary),
            secondary: _SectionStack(secondary),
          )
        else if (primary.isNotEmpty || secondary.isNotEmpty)
          _SectionStack([...primary, ...secondary]),
        if (primary.isNotEmpty || secondary.isNotEmpty)
          const SizedBox(height: AppSizes.xl),
        Divider(height: 1, color: theme.detailRule),
        ExpansionTile(
          key: PageStorageKey('company-record-${company.id}'),
          tilePadding: EdgeInsets.zero,
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          shape: const Border(),
          collapsedShape: const Border(),
          iconColor: theme.detailMuted,
          collapsedIconColor: theme.detailMuted,
          title: Text(
            'Company record'.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          children: [CompanyRecordFields(company: company)],
        ),
      ],
    );
  }
}

class _SectionStack extends StatelessWidget {
  const _SectionStack(this.sections);

  final List<Widget> sections;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      for (var i = 0; i < sections.length; i++) ...[
        if (i > 0) const SizedBox(height: AppSizes.xl),
        sections[i],
      ],
    ],
  );
}

class _CompanyIdentity extends StatelessWidget {
  const _CompanyIdentity({required this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final logo = company.logo?.trim();
    final hasLogo = logo != null && logo.isNotEmpty;
    final localName = company.nameMm?.trim();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(AppSizes.xs),
          decoration: BoxDecoration(
            color: hasLogo ? Colors.white : theme.detailInk(0.07),
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          ),
          child: ImageWidget(
            width: 40,
            height: 40,
            imageUrl: logo,
            boxFit: BoxFit.contain,
            placeholder: Icon(
              Icons.apartment_outlined,
              size: 25,
              color: hasLogo ? const Color(0xFF46556A) : theme.detailMuted,
            ),
          ),
        ),
        const SizedBox(height: AppSizes.md),
        RecordHeading(valueOrDash(company.name)),
        if (localName != null &&
            localName.isNotEmpty &&
            localName != company.name.trim()) ...[
          const SizedBox(height: AppSizes.xxxs),
          Text(
            localName,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.detailMuted,
            ),
          ),
        ],
        if (company.active case final active?) ...[
          const SizedBox(height: AppSizes.sm),
          Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: active ? colors.primary : theme.detailMuted,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: AppSizes.xs),
              Flexible(
                child: Text(
                  active
                      ? 'Active organisation'.tr()
                      : 'Inactive organisation'.tr(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.detailMuted,
                    fontSize: 12,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
