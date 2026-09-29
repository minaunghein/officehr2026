import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/employee/employee.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_badge.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_state.dart';
import 'package:office_hr/shared/date_formatter.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(userDetailsProvider);
    final theme = Theme.of(context);
    Future<void> refresh() => ref.read(userDetailsProvider.notifier).fetch();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: theme.textTheme.headlineMedium),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     tooltip: 'Refresh profile',
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
              message: 'No profile data available.',
            );
          }
          return RefreshIndicator(
            onRefresh: refresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              children: [_ProfileContent(session: value)],
            ),
          );
        },
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  const _ProfileContent({required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final employee = session.employee;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ProfileHeader(session: session),
        const SizedBox(height: 16),
        UserProfileSection(
          title: 'Account',
          icon: Icons.account_circle_outlined,
          children: [
            UserProfileFieldGrid(
              children: [
                UserProfileInfoRow(label: 'Username', value: session.username),
                UserProfileInfoRow(label: 'Email', value: session.email),
                UserProfileInfoRow(label: 'Role', value: session.role.name),
                UserProfileInfoRow(
                  label: 'Company',
                  value: session.companyName,
                ),
                // UserProfileInfoRow(
                //   label: 'Company ID',
                //   value: session.companyId,
                // ),
              ],
            ),
          ],
        ),
        if (employee != null) ...[
          const SizedBox(height: 12),
          _PersonalSection(employee: employee),
          const SizedBox(height: 12),
          _ContactSection(employee: employee),
          const SizedBox(height: 12),
          _WorkSection(employee: employee),
          const SizedBox(height: 12),
          _FamilySection(employee: employee),
        ],
      ],
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initials = session.displayName
        .trim()
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2)
        .map((part) => part[0].toUpperCase())
        .join();
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: theme.colorScheme.onPrimary.withValues(
                alpha: 0.16,
              ),
              foregroundColor: theme.colorScheme.onPrimary,
              child: Text(
                initials.isEmpty ? '?' : initials,
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    session.displayName,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onPrimary,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    session.positionTitle,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary.withValues(
                        alpha: 0.78,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      UserProfileBadge(
                        icon: Icons.business_outlined,
                        label: session.companyName,
                      ),
                      if (session.employeeCode != null)
                        UserProfileBadge(
                          icon: Icons.badge_outlined,
                          label: session.employeeCode!,
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    session.email,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PersonalSection extends StatelessWidget {
  const _PersonalSection({required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final info = employee.basicInfo;
    final nrc = info.nrc;
    return UserProfileSection(
      title: 'Personal Information',
      icon: Icons.person_outline_rounded,
      children: [
        UserProfileFieldGrid(
          children: [
            UserProfileInfoRow(label: 'First Name', value: info.firstName),
            UserProfileInfoRow(label: 'Last Name', value: info.lastName),
            UserProfileInfoRow(label: 'Gender', value: info.gender),
            UserProfileInfoRow(
              label: 'Date of Birth',
              value: formatDateString(info.dateOfBirth),
            ),
            UserProfileInfoRow(
              label: 'Marital Status',
              value: info.maritalStatus,
            ),
            UserProfileInfoRow(label: 'Nationality', value: info.nationality),
            UserProfileInfoRow(label: 'Religion', value: info.religion),
            UserProfileInfoRow(label: 'Ethnicity', value: info.ethnicity),
            UserProfileInfoRow(label: 'Blood Type', value: info.bloodType),
            UserProfileInfoRow(label: 'Height', value: _value(info.height)),
            UserProfileInfoRow(label: 'Weight', value: _value(info.weight)),
            UserProfileInfoRow(
              label: 'NRC',
              value: nrc == null
                  ? '-'
                  : '${nrc.region}/${nrc.township}(${nrc.type})${nrc.numbers}',
            ),
          ],
        ),
      ],
    );
  }
}

class _ContactSection extends StatelessWidget {
  const _ContactSection({required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final info = employee.contactInfo;
    return UserProfileSection(
      title: 'Contact Information',
      icon: Icons.contact_phone_outlined,
      children: [
        UserProfileFieldGrid(
          children: [
            UserProfileInfoRow(label: 'Phone', value: info.phone),
            UserProfileInfoRow(label: 'Email', value: info.email),
            UserProfileInfoRow(
              label: 'Current Address',
              value: _address(info.currentAddress),
            ),
            UserProfileInfoRow(
              label: 'Permanent Address',
              value: _address(info.permanentAddress),
            ),
          ],
        ),
      ],
    );
  }
}

class _WorkSection extends StatelessWidget {
  const _WorkSection({required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final info = employee.workInfo;
    return UserProfileSection(
      title: 'Employment Information',
      icon: Icons.work_outline_rounded,
      children: [
        UserProfileFieldGrid(
          children: [
            UserProfileInfoRow(
              label: 'Employee Code',
              value: info.employeeCode,
            ),
            UserProfileInfoRow(
              label: 'Employment Status',
              value: info.employmentStatus,
            ),
            UserProfileInfoRow(
              label: 'Employment Type',
              value: info.employmentType,
            ),
            UserProfileInfoRow(label: 'Work Mode', value: info.workMode),
            UserProfileInfoRow(
              label: 'Employment Date',
              value: formatDateString(info.employmentDate),
            ),
            UserProfileInfoRow(
              label: 'Probation End',
              value: formatDateString(info.probationEndDate),
            ),
            UserProfileInfoRow(
              label: 'Department',
              value: info.department?.title,
            ),
            UserProfileInfoRow(label: 'Position', value: info.position?.title),
            UserProfileInfoRow(label: 'Branch', value: info.branch?.title),
            UserProfileInfoRow(label: 'Shift', value: info.shift?.title),
            UserProfileInfoRow(label: 'Card ID', value: info.cardId),
            UserProfileInfoRow(label: 'Grade', value: info.grade),
          ],
        ),
      ],
    );
  }
}

class _FamilySection extends StatelessWidget {
  const _FamilySection({required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final info = employee.familyInfo;
    return UserProfileSection(
      title: 'Family Information',
      icon: Icons.family_restroom_outlined,
      children: [
        UserProfileFieldGrid(
          children: [
            UserProfileInfoRow(label: 'Father Name', value: info.fatherName),
            UserProfileInfoRow(label: 'Mother Name', value: info.motherName),
            UserProfileInfoRow(
              label: 'Family Members',
              value: info.numberOfFamilyNumber.toString(),
            ),
            UserProfileInfoRow(
              label: 'Education Records',
              value: employee.education.length.toString(),
            ),
            UserProfileInfoRow(
              label: 'Work Experience Records',
              value: employee.workExperience.length.toString(),
            ),
          ],
        ),
      ],
    );
  }
}

String _address(dynamic address) {
  if (address == null) return '-';
  final parts = [
    address.street,
    address.city,
    address.state,
    address.country,
  ].where((part) => part.toString().trim().isNotEmpty).join(', ');
  return parts.isEmpty ? '-' : parts;
}

String _value(Object? value) => value?.toString() ?? '-';
