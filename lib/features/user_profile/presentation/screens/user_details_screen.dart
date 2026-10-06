import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/basic_info/basic_info.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/education/education.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/employee/employee.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/work_experience/work_experience.dart';
import 'package:office_hr/features/user_profile/domain/entities/user_details.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/user_profile_section.dart';
import 'package:office_hr/shared/date_formatter.dart';

class UserDetailsScreen extends ConsumerWidget {
  const UserDetailsScreen({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final details = ref.watch(userByIdProvider(userId));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          details.value == null
              ? 'Employee Details'
              : _displayName(details.value!),
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: details.when(
        loading: () => const _DetailsSkeleton(),
        error: (error, _) => _ErrorState(
          message: getUserFriendlyError(error),
          onRetry: () => ref.invalidate(userByIdProvider(userId)),
        ),
        data: (value) {
          final employee = value.user.employee;
          if (employee == null) {
            return const _MessageState(
              icon: Icons.person_off_outlined,
              message: 'This user has no employee record.',
            );
          }
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(userByIdProvider(userId)),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              children: [
                _DetailsHeader(details: value, employee: employee),
                const SizedBox(height: 14),
                _ContactSection(employee: employee),
                const SizedBox(height: 14),
                _EmploymentSection(employee: employee),
                const SizedBox(height: 14),
                _PersonalSection(employee: employee),
                if (employee.education.isNotEmpty) ...[
                  const SizedBox(height: 14),
                  UserProfileSection(
                    title: 'Education',
                    icon: Icons.school_outlined,
                    children: employee.education
                        .map((item) => _EducationTile(education: item))
                        .toList(),
                  ),
                ],
                if (employee.workExperience.isNotEmpty) ...[
                  const SizedBox(height: 14),
                  UserProfileSection(
                    title: 'Work Experience',
                    icon: Icons.work_history_outlined,
                    children: employee.workExperience
                        .map((item) => _ExperienceTile(experience: item))
                        .toList(),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _DetailsHeader extends StatelessWidget {
  const _DetailsHeader({required this.details, required this.employee});

  final UserDetails details;
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final name = _displayName(details);
    final position = employee.workInfo.position?.title;
    final status = employee.workInfo.employmentStatus;

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: theme.colorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: theme.colorScheme.primary.withValues(alpha: 0.06),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundColor: theme.colorScheme.primary.withValues(
                    alpha: 0.12,
                  ),
                  child: Text(
                    _initials(name),
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: theme.colorScheme.primary,
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
                        name,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        position == null || position.trim().isEmpty
                            ? '@${details.username}'
                            : position,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.65,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          if (details.role != null)
                            _Chip(
                              icon: Icons.verified_user_outlined,
                              label: details.role!.name,
                            ),
                          if (status.trim().isNotEmpty)
                            _Chip(
                              icon: Icons.circle,
                              label: status,
                              color: status.toUpperCase() == 'ACTIVE'
                                  ? const Color(0xFF16A34A)
                                  : theme.colorScheme.error,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            UserProfileInfoRow(label: 'Email', value: info.email),
            UserProfileInfoRow(label: 'Phone', value: info.phone),
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

class _EmploymentSection extends StatelessWidget {
  const _EmploymentSection({required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final info = employee.workInfo;
    return UserProfileSection(
      title: 'Employment',
      icon: Icons.work_outline_rounded,
      children: [
        UserProfileFieldGrid(
          children: [
            UserProfileInfoRow(label: 'Employee Code', value: info.employeeCode),
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
              label: 'Department',
              value: info.department?.title,
            ),
            UserProfileInfoRow(label: 'Position', value: info.position?.title),
            UserProfileInfoRow(label: 'Branch', value: info.branch?.title),
            UserProfileInfoRow(label: 'Shift', value: info.shift?.title),
            UserProfileInfoRow(
              label: 'Joined',
              value: formatDateString(info.employmentDate),
            ),
            UserProfileInfoRow(
              label: 'Probation End',
              value: formatDateString(info.probationEndDate),
            ),
            UserProfileInfoRow(label: 'Grade', value: info.grade),
            UserProfileInfoRow(label: 'Card ID', value: info.cardId),
          ],
        ),
      ],
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
            UserProfileInfoRow(label: 'Gender', value: info.gender),
            UserProfileInfoRow(
              label: 'Date of Birth',
              value: formatDateString(info.dateOfBirth),
            ),
            UserProfileInfoRow(
              label: 'Marital Status',
              value: info.maritalStatus,
            ),
            UserProfileInfoRow(label: 'Blood Type', value: info.bloodType),
            UserProfileInfoRow(label: 'Nationality', value: info.nationality),
            UserProfileInfoRow(label: 'Religion', value: info.religion),
            UserProfileInfoRow(label: 'Ethnicity', value: info.ethnicity),
            UserProfileInfoRow(
              label: 'NRC',
              value: nrc == null
                  ? '-'
                  : '${nrc.region}/${nrc.township}(${nrc.type})${nrc.numbers}',
            ),
            UserProfileInfoRow(label: 'Height', value: _num(info.height)),
            UserProfileInfoRow(label: 'Weight', value: _num(info.weight)),
          ],
        ),
      ],
    );
  }
}

class _EducationTile extends StatelessWidget {
  const _EducationTile({required this.education});

  final Education education;

  @override
  Widget build(BuildContext context) {
    final period = _period(education.startDate, education.endDate);
    return _TimelineTile(
      icon: Icons.school_outlined,
      title: _value(education.degree),
      subtitle: _value(education.school),
      trailing: period,
      description: _value(education.field),
    );
  }
}

class _ExperienceTile extends StatelessWidget {
  const _ExperienceTile({required this.experience});

  final WorkExperience experience;

  @override
  Widget build(BuildContext context) {
    return _TimelineTile(
      icon: Icons.business_center_outlined,
      title: _value(experience.position),
      subtitle: _value(experience.company),
      trailing: _period(experience.startDate, experience.endDate),
      description: _responsibility(experience.description),
    );
  }
}

class _TimelineTile extends StatelessWidget {
  const _TimelineTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String trailing;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.09),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 18, color: theme.colorScheme.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                if (trailing.trim().isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    trailing,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                if (description.trim().isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.label, this.color});

  final IconData icon;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tint = color ?? theme.colorScheme.primary;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: tint.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: tint.withValues(alpha: 0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: tint),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: theme.textTheme.labelSmall?.copyWith(
              color: tint,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailsSkeleton extends StatelessWidget {
  const _DetailsSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ContainerShimmer(
          height: 120,
          borderRadius: BorderRadius.circular(16),
        ),
        const SizedBox(height: 14),
        for (var i = 0; i < 3; i++) ...[
          ContainerShimmer(
            height: 180,
            borderRadius: BorderRadius.circular(14),
          ),
          const SizedBox(height: 14),
        ],
      ],
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Unable to load employee details',
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try again'),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageState extends StatelessWidget {
  const _MessageState({required this.icon, required this.message});

  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 48,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.35),
            ),
            const SizedBox(height: 14),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _displayName(UserDetails details) {
  final employee = details.user.employee;
  if (employee == null) {
    return details.username.trim().isEmpty ? 'Employee' : details.username;
  }
  return _fullName(employee.basicInfo);
}

String _fullName(BasicInfo info) {
  final name = [info.firstName, info.lastName]
      .map((part) => part.trim())
      .where((part) => part.isNotEmpty)
      .join(' ');
  if (name.isNotEmpty) return name;
  final mm = [info.firstNameMm, info.lastNameMm]
      .map((part) => part.trim())
      .where((part) => part.isNotEmpty)
      .join(' ');
  return mm.isEmpty ? 'Employee' : mm;
}

String _initials(String name) {
  final parts = name
      .trim()
      .split(RegExp(r'\s+'))
      .where((part) => part.isNotEmpty)
      .toList();
  if (parts.isEmpty) return '?';
  if (parts.length == 1) return parts.first.characters.first.toUpperCase();
  return (parts.first.characters.first + parts.last.characters.first)
      .toUpperCase();
}

String _address(dynamic address) {
  if (address == null) return '-';
  final parts = [
    address.street,
    address.city,
    address.state,
    address.country,
    address.postalCode,
  ].where((part) => part.toString().trim().isNotEmpty).join(', ');
  return parts.isEmpty ? '-' : parts;
}

String _period(String? start, String? end) {
  final from = formatDateString(start);
  final to = formatDateString(end);
  if (from == '-' && to == '-') return '';
  return '$from - $to';
}

String _responsibility(String description) {
  final trimmed = description.trim();
  if (trimmed.isEmpty) return '';
  if (trimmed.startsWith('{')) {
    try {
      final decoded = jsonDecode(trimmed);
      if (decoded is Map && decoded['responsibility'] != null) {
        return decoded['responsibility'].toString();
      }
    } catch (_) {
      return trimmed;
    }
  }
  return trimmed;
}

String _value(String? value) {
  final trimmed = value?.trim() ?? '';
  return trimmed.isEmpty ? '-' : trimmed;
}

String _num(int? value) => value == null ? '-' : value.toString();
