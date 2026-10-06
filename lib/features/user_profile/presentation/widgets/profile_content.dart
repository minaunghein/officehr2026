import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/widgets/image_widget.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/address/address.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/record_header.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/date_formatter.dart';
import 'package:office_hr/shared/global.dart';

enum _ProfileTab { employment, personal, account }

class ProfileContent extends HookConsumerWidget {
  const ProfileContent({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final selected = useState(_ProfileTab.employment);
    final employee = session.employee;
    final work = employee?.workInfo;
    final personal = employee?.basicInfo;
    final contact = employee?.contactInfo;
    final family = employee?.familyInfo;
    final nrc = personal?.nrc;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RecordHeader(
          label: 'Employee profile',
          title: session.displayName,
          subtitle: session.positionTitle,
          avatar: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            child: SizedBox(
              width: 64,
              height: 64,
              child: ImageWidget(
                imageUrl: session.profileUrl,
                width: 64,
                height: 64,
                placeholder: ColoredBox(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
                  child: Center(
                    child: Text(
                      initials(session.displayName) ?? '?',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          tags: [
            if (session.employeeCode != null)
              RecordTag(
                label: session.employeeCode!,
                icon: Icons.badge_outlined,
              ),
            RecordTag(
              label: session.companyName,
              icon: Icons.business_outlined,
            ),
            if (work?.employmentStatus.trim().isNotEmpty == true)
              RecordTag(label: _readable(work!.employmentStatus)),
          ],
          footer: Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () => context.push(AppRoutes.staffIdCard),
              icon: Icon(
                Icons.badge_outlined,
                size: AppSizes.iconMd,
                color: theme.colorScheme.onPrimary,
              ),
              label: Text(
                'View digital staff ID',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSizes.lg),
        Wrap(
          spacing: AppSizes.xs,
          runSpacing: AppSizes.xs,
          children: _ProfileTab.values.map((tab) {
            final label = switch (tab) {
              _ProfileTab.employment => 'Employment',
              _ProfileTab.personal => 'Personal',
              _ProfileTab.account => 'Account',
            };
            return ChoiceChip(
              label: Text(label),
              selected: selected.value == tab,
              showCheckmark: false,
              selectedColor: theme.colorScheme.primary.withValues(alpha: 0.10),
              backgroundColor: theme.colorScheme.surface,
              labelStyle: theme.textTheme.labelLarge?.copyWith(
                color: selected.value == tab
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
              side: BorderSide(
                color: selected.value == tab
                    ? theme.colorScheme.primary.withValues(alpha: 0.3)
                    : theme.colorScheme.onSurface.withValues(alpha: 0.12),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
              onSelected: (_) => selected.value = tab,
            );
          }).toList(),
        ),
        const SizedBox(height: AppSizes.lg),
        if (selected.value == _ProfileTab.employment) ...[
          if (work != null)
            UserProfileSection(
              title: 'Employment details',
              icon: Icons.work_outline_rounded,
              children: [
                UserProfileFieldGrid(
                  children: [
                    UserProfileInfoRow(
                      label: 'Employee code',
                      value: work.employeeCode,
                    ),
                    UserProfileInfoRow(
                      label: 'Department',
                      value: work.department?.title,
                    ),
                    UserProfileInfoRow(
                      label: 'Position',
                      value: work.position?.title,
                    ),
                    UserProfileInfoRow(
                      label: 'Branch',
                      value: work.branch?.title,
                    ),
                    UserProfileInfoRow(
                      label: 'Shift',
                      value: work.shift?.title,
                    ),
                    UserProfileInfoRow(
                      label: 'Employment status',
                      value: _readable(work.employmentStatus),
                    ),
                    UserProfileInfoRow(
                      label: 'Employment type',
                      value: _readable(work.employmentType),
                    ),
                    UserProfileInfoRow(
                      label: 'Work mode',
                      value: _readable(work.workMode),
                    ),
                    UserProfileInfoRow(
                      label: 'Start date',
                      value: formatDateString(work.employmentDate),
                    ),
                    UserProfileInfoRow(
                      label: 'Probation end',
                      value: formatDateString(work.probationEndDate),
                    ),
                    UserProfileInfoRow(label: 'Grade', value: work.grade),
                    UserProfileInfoRow(label: 'Card ID', value: work.cardId),
                  ],
                ),
              ],
            )
          else
            const UserProfileSection(
              title: 'Employment details',
              icon: Icons.work_outline_rounded,
              children: [
                Text('No employment record is linked to this account.'),
              ],
            ),
          const SizedBox(height: AppSizes.md),
          UserProfileSection(
            title: 'Contact information',
            icon: Icons.contact_mail_outlined,
            children: [
              UserProfileFieldGrid(
                children: [
                  UserProfileInfoRow(
                    label: 'Email',
                    value: contact?.email.trim().isNotEmpty == true
                        ? contact!.email
                        : session.email,
                  ),
                  UserProfileInfoRow(label: 'Phone', value: contact?.phone),
                ],
              ),
              if (contact != null) ...[
                const Divider(height: AppSizes.lg),
                UserProfileInfoRow(
                  label: 'Current address',
                  value: _address(contact.currentAddress),
                ),
                UserProfileInfoRow(
                  label: 'Permanent address',
                  value: _address(contact.permanentAddress),
                ),
              ],
            ],
          ),
        ],
        if (selected.value == _ProfileTab.personal) ...[
          UserProfileSection(
            title: 'Personal information',
            icon: Icons.person_outline_rounded,
            children: personal == null
                ? [const Text('No personal information is available.')]
                : [
                    UserProfileFieldGrid(
                      children: [
                        UserProfileInfoRow(
                          label: 'First name',
                          value: personal.firstName,
                        ),
                        UserProfileInfoRow(
                          label: 'Last name',
                          value: personal.lastName,
                        ),
                        UserProfileInfoRow(
                          label: 'Gender',
                          value: _readable(personal.gender),
                        ),
                        UserProfileInfoRow(
                          label: 'Date of birth',
                          value: formatDateString(personal.dateOfBirth),
                        ),
                        UserProfileInfoRow(
                          label: 'Marital status',
                          value: _readable(personal.maritalStatus),
                        ),
                        UserProfileInfoRow(
                          label: 'Nationality',
                          value: personal.nationality,
                        ),
                        UserProfileInfoRow(
                          label: 'Religion',
                          value: personal.religion,
                        ),
                        UserProfileInfoRow(
                          label: 'Ethnicity',
                          value: personal.ethnicity,
                        ),
                        UserProfileInfoRow(
                          label: 'Blood type',
                          value: personal.bloodType,
                        ),
                        UserProfileInfoRow(
                          label: 'Height',
                          value: personal.height == null
                              ? null
                              : '${personal.height} cm',
                        ),
                        UserProfileInfoRow(
                          label: 'Weight',
                          value: personal.weight == null
                              ? null
                              : '${personal.weight} kg',
                        ),
                      ],
                    ),
                    UserProfileInfoRow(
                      label: 'NRC',
                      value: nrc == null
                          ? null
                          : '${nrc.region}/${nrc.township}(${nrc.type})${nrc.numbers}',
                    ),
                  ],
          ),
          if (family != null) ...[
            const SizedBox(height: AppSizes.md),
            UserProfileSection(
              title: 'Family and background',
              icon: Icons.family_restroom_outlined,
              children: [
                UserProfileFieldGrid(
                  children: [
                    UserProfileInfoRow(
                      label: 'Father’s name',
                      value: family.fatherName,
                    ),
                    UserProfileInfoRow(
                      label: 'Mother’s name',
                      value: family.motherName,
                    ),
                    UserProfileInfoRow(
                      label: 'Family members',
                      value: family.numberOfFamilyNumber.toString(),
                    ),
                    UserProfileInfoRow(
                      label: 'Education records',
                      value: employee!.education.length.toString(),
                    ),
                    UserProfileInfoRow(
                      label: 'Work experience records',
                      value: employee.workExperience.length.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
        if (selected.value == _ProfileTab.account)
          UserProfileSection(
            title: 'Account details',
            icon: Icons.manage_accounts_outlined,
            children: [
              UserProfileFieldGrid(
                children: [
                  UserProfileInfoRow(
                    label: 'Username',
                    value: session.username,
                  ),
                  UserProfileInfoRow(label: 'Role', value: session.role.name),
                  UserProfileInfoRow(label: 'Email', value: session.email),
                  UserProfileInfoRow(
                    label: 'Company',
                    value: session.companyName,
                  ),
                ],
              ),
              const Divider(height: AppSizes.xxl),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.lock_outline_rounded),
                title: const Text('Change password'),
                subtitle: const Text('Update your account password'),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => context.push(AppRoutes.changePassword),
              ),
            ],
          ),
      ],
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
  return [
    address.street,
    address.city,
    address.state,
    address.country,
    address.postalCode,
  ].where((part) => part.trim().isNotEmpty).join(', ');
}
