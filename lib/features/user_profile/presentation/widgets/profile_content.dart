import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/detail_page_style.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/address/address.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/profile_image_avatar.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_header.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_section.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/date_formatter.dart';

import 'package:easy_localization/easy_localization.dart';

enum _ProfileTab { employment, personal, account }

class ProfileContent extends HookConsumerWidget {
  const ProfileContent({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final tabs = useTabController(initialLength: _ProfileTab.values.length);
    final selected = _ProfileTab.values[useListenable(tabs).index];
    final employee = session.employee;
    final work = employee?.workInfo;
    final personal = employee?.basicInfo;
    final contact = employee?.contactInfo;
    final family = employee?.familyInfo;
    final nrc = personal?.nrc;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ProfileIdentity(session: session),
        const SizedBox(height: AppSizes.lg),
        _ProfileTabs(controller: tabs),
        const SizedBox(height: AppSizes.lg),
        if (selected == _ProfileTab.employment)
          RecordColumns(
            dividerOnStack: true,
            primary: work != null
                ? RecordSection(
                    title: 'Employment details'.tr(),
                    showRule: false,
                    children: [
                      RecordFields(
                        children: [
                          RecordField(
                            label: 'Department'.tr(),
                            value: work.department?.title,
                          ),
                          RecordField(
                            label: 'Branch'.tr(),
                            value: work.branch?.title,
                          ),
                          RecordField(
                            label: 'Shift'.tr(),
                            value: work.shift?.title,
                          ),
                          RecordField(
                            label: 'Employment status'.tr(),
                            value: _readable(work.employmentStatus),
                          ),
                          RecordField(
                            label: 'Employment type'.tr(),
                            value: _readable(work.employmentType),
                          ),
                          RecordField(
                            label: 'Work mode'.tr(),
                            value: _readable(work.workMode),
                          ),
                          RecordField(
                            label: 'Start date'.tr(),
                            value: formatDateString(work.employmentDate),
                          ),
                          RecordField(
                            label: 'Probation end'.tr(),
                            value: formatDateString(work.probationEndDate),
                          ),
                          RecordField(label: 'Grade'.tr(), value: work.grade),
                          RecordField(
                            label: 'Card ID'.tr(),
                            value: work.cardId,
                          ),
                        ],
                      ),
                    ],
                  )
                : RecordSection(
                    title: 'Employment details'.tr(),
                    showRule: false,
                    children: [
                      Text(
                        'No employment record is linked to this account.'.tr(),
                      ),
                    ],
                  ),
            secondary: RecordSection(
              title: 'Contact information'.tr(),
              showRule: false,
              children: [
                RecordFields(
                  singleColumn: true,
                  children: [
                    RecordField(
                      label: 'Email'.tr(),
                      value: contact?.email.trim().isNotEmpty == true
                          ? contact!.email
                          : session.email,
                    ),
                    RecordField(label: 'Phone'.tr(), value: contact?.phone),
                    RecordField(
                      label: 'Current address'.tr(),
                      value: _address(contact?.currentAddress),
                    ),
                    RecordField(
                      label: 'Permanent address'.tr(),
                      value: _address(contact?.permanentAddress),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (selected == _ProfileTab.personal) ...[
          RecordSection(
            title: 'Personal information'.tr(),
            showRule: false,
            children: personal == null
                ? [Text('No personal information is available.'.tr())]
                : [
                    RecordFields(
                      children: [
                        RecordField(
                          label: 'First name'.tr(),
                          value: personal.firstName,
                        ),
                        RecordField(
                          label: 'Last name'.tr(),
                          value: personal.lastName,
                        ),
                        RecordField(
                          label: 'Gender'.tr(),
                          value: _readable(personal.gender),
                        ),
                        RecordField(
                          label: 'Date of birth'.tr(),
                          value: formatDateString(personal.dateOfBirth),
                        ),
                        RecordField(
                          label: 'Marital status'.tr(),
                          value: _readable(personal.maritalStatus),
                        ),
                        RecordField(
                          label: 'Nationality'.tr(),
                          value: personal.nationality,
                        ),
                        RecordField(
                          label: 'Religion'.tr(),
                          value: personal.religion,
                        ),
                        RecordField(
                          label: 'Ethnicity'.tr(),
                          value: personal.ethnicity,
                        ),
                        RecordField(
                          label: 'Blood type'.tr(),
                          value: personal.bloodType,
                        ),
                        RecordField(
                          label: 'Height'.tr(),
                          value: personal.height == null
                              ? null
                              : '${personal.height} cm',
                        ),
                        RecordField(
                          label: 'Weight'.tr(),
                          value: personal.weight == null
                              ? null
                              : '${personal.weight} kg',
                        ),
                      ],
                    ),
                    if (nrc != null)
                      RecordField(
                        label: 'NRC'.tr(),
                        value:
                            '${nrc.region}/${nrc.township}(${nrc.type})${nrc.numbers}',
                      ),
                  ],
          ),
          if (family != null) ...[
            const SizedBox(height: AppSizes.xl),
            RecordSection(
              title: 'Family and background'.tr(),
              children: [
                RecordFields(
                  children: [
                    RecordField(
                      label: 'Father’s name'.tr(),
                      value: family.fatherName,
                    ),
                    RecordField(
                      label: 'Mother’s name'.tr(),
                      value: family.motherName,
                    ),
                    RecordField(
                      label: 'Family members'.tr(),
                      value: family.numberOfFamilyNumber.toString(),
                    ),
                    RecordField(
                      label: 'Education records'.tr(),
                      value: employee!.education.length.toString(),
                    ),
                    RecordField(
                      label: 'Work experience records'.tr(),
                      value: employee.workExperience.length.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
        if (selected == _ProfileTab.account)
          RecordSection(
            title: 'Account details'.tr(),
            showRule: false,
            children: [
              RecordFields(
                children: [
                  RecordField(label: 'Username'.tr(), value: session.username),
                  RecordField(label: 'Role'.tr(), value: session.role.name),
                  RecordField(label: 'Email'.tr(), value: session.email),
                  RecordField(
                    label: 'Company'.tr(),
                    value: session.companyName,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.md),
              Divider(height: 1, color: theme.detailRule),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Change password'.tr()),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: AppSizes.iconMd,
                ),
                onTap: () => context.push(AppRoutes.changePassword),
              ),
            ],
          ),
      ],
    );
  }
}

class _ProfileIdentity extends StatelessWidget {
  const _ProfileIdentity({required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final position = session.workInfo?.position?.title.trim();
    final code = session.employeeCode?.trim();
    final meta = [
      if (session.companyName.trim().isNotEmpty) session.companyName,
      if (code != null && code.isNotEmpty)
        'ID: {id}'.tr(namedArgs: {'id': code}),
    ].join(' · ');
    final avatar = ProfileImageAvatar(session: session);
    final identity = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecordHeading(session.displayName),
        if (position != null && position.isNotEmpty) ...[
          const SizedBox(height: AppSizes.xxxs),
          Text(position, style: theme.textTheme.bodyMedium),
        ],
        if (meta.isNotEmpty) ...[
          const SizedBox(height: AppSizes.xxxs),
          Text(
            meta,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.detailMuted,
              fontSize: 12,
              height: 1.4,
              letterSpacing: 0,
            ),
          ),
        ],
        TextButton.icon(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            alignment: AlignmentDirectional.centerStart,
          ),
          onPressed: () => context.push(AppRoutes.staffIdCard),
          icon: const Icon(Icons.badge_outlined, size: AppSizes.iconSm),
          label: Text('View digital staff ID'.tr()),
        ),
      ],
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = MediaQuery.textScalerOf(context).scale(16) / 16;
        if (constraints.maxWidth < 108 + 160 * scale) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              avatar,
              const SizedBox(height: AppSizes.sm),
              identity,
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar,
            const SizedBox(width: AppSizes.md),
            Expanded(child: identity),
          ],
        );
      },
    );
  }
}

class _ProfileTabs extends StatelessWidget {
  const _ProfileTabs({required this.controller});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labels = ['Employment'.tr(), 'Personal'.tr(), 'Account'.tr()];
    final style = theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    );
    const horizontalPadding = AppSizes.xs;
    return LayoutBuilder(
      builder: (context, constraints) {
        final painter = TextPainter(
          textDirection: Directionality.of(context),
          textScaler: MediaQuery.textScalerOf(context),
        );
        var scrollable = false;
        for (final label in labels) {
          painter.text = TextSpan(text: label, style: style);
          painter.layout();
          if (painter.width + 2 * horizontalPadding >
              constraints.maxWidth / labels.length) {
            scrollable = true;
            break;
          }
        }
        painter.dispose();
        return TabBar(
          controller: controller,
          isScrollable: scrollable,
          tabAlignment: scrollable ? TabAlignment.start : TabAlignment.fill,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          labelColor: theme.colorScheme.primary,
          unselectedLabelColor: theme.detailMuted,
          labelStyle: style,
          indicatorSize: TabBarIndicatorSize.label,
          dividerColor: theme.detailRule,
          tabs: [for (final label in labels) Tab(text: label)],
        );
      },
    );
  }
}

String _readable(String value) => value
    .trim()
    .split(RegExp(r'[_\s]+'))
    .where((part) => part.isNotEmpty)
    .map((part) => '${part[0].toUpperCase()}${part.substring(1).toLowerCase()}')
    .join(' ');

String? _address(Address? address) {
  if (address == null) return null;
  final value = [
    address.street,
    address.city,
    address.state,
    address.country,
    address.postalCode,
  ].where((part) => part.trim().isNotEmpty).join(', ');
  return value.isEmpty ? null : value;
}
