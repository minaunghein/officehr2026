import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/general_data/domain/entities/general_data.dart';
import 'package:office_hr/features/general_data/presentation/providers/general_data_providers.dart';
import 'package:office_hr/features/user/domain/entities/basic_info.dart';
import 'package:office_hr/features/user/domain/entities/contact_info.dart';
import 'package:office_hr/features/user/domain/entities/family_info.dart';
import 'package:office_hr/features/user/domain/entities/user_bio.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/entities/work_info.dart';
import 'package:office_hr/features/user/presentation/providers/user_providers.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userDetailsProvider);
    final generalData = ref.watch(generalDataProvider).value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.logout_rounded),
        //     tooltip: 'Logout',
        //     onPressed: () => _confirmLogout(context, ref),
        //   ),
        // ],
      ),
      body: userAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _ErrorView(
          message: error.toString(),
          onRetry: () => ref.read(userDetailsProvider.notifier).fetch(),
        ),
        data: (user) {
          if (user == null) {
            return const Center(child: Text('No profile data available'));
          }
          return RefreshIndicator(
            onRefresh: () => ref.read(userDetailsProvider.notifier).fetch(),
            child: _ProfileContent(user: user, generalData: generalData),
          );
        },
      ),
    );
  }

  // Future<void> _confirmLogout(BuildContext context, WidgetRef ref) async {
  //   final confirmed = await showDialog<bool>(
  //     context: context,
  //     builder: (ctx) => AlertDialog(
  //       title: const Text('Logout'),
  //       content: const Text('Are you sure you want to logout?'),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(ctx, false),
  //           child: const Text('Cancel'),
  //         ),
  //         FilledButton(
  //           onPressed: () => Navigator.pop(ctx, true),
  //           child: const Text('Logout'),
  //         ),
  //       ],
  //     ),
  //   );

  //   if (confirmed == true) {
  //     await ref.read(loginProvider.notifier).logout();
  //   }
  // }
}

class _ProfileContent extends StatelessWidget {
  const _ProfileContent({required this.user, required this.generalData});

  final UserDetails user;
  final GeneralData? generalData;

  @override
  Widget build(BuildContext context) {
    final bio = user.userBio;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          _ProfileHeader(user: user),
          const SizedBox(height: 8),
          if (bio != null) ...[
            _PersonalInfoSection(
              basicInfo: bio.basicInfo,
              generalData: generalData,
            ),
            _ContactInfoSection(contactInfo: bio.contactInfo),
            _WorkInfoSection(workInfo: bio.workInfo, generalData: generalData),
            _FamilyInfoSection(familyInfo: bio.familyInfo),
            _OvertimeSection(bio: bio),
          ] else
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(
                child: Text('Bio information has not been completed yet.'),
              ),
            ),
        ],
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.user});

  final UserDetails user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bio = user.userBio;
    final fullName = _buildFullName(bio?.basicInfo) ?? user.username;
    final positionTitles = bio?.workInfo.position.titles;
    final positionTitle = (positionTitles != null && positionTitles.isNotEmpty)
        ? positionTitles.first
        : user.role;
    final empCode = bio != null
        ? '${bio.workInfo.employeeCodePrefix}${bio.workInfo.employeeCode}'
        : null;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
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
            child: CircleAvatar(
              radius: 48,
              backgroundColor: theme.colorScheme.surfaceContainerHighest,
              backgroundImage: user.profileUrl.isNotEmpty
                  ? CachedNetworkImageProvider(user.profileUrl)
                  : null,
              child: user.profileUrl.isEmpty
                  ? Text(
                      _initials(fullName),
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            fullName,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            positionTitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.9),
            ),
          ),
          if (empCode != null) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'ID: $empCode',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_outlined,
                size: 16,
                color: theme.colorScheme.onPrimary.withValues(alpha: 0.9),
              ),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  user.email,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.9),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static String _initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    if (parts.length == 1) return parts.first[0].toUpperCase();
    return (parts.first[0] + parts.last[0]).toUpperCase();
  }
}

class _PersonalInfoSection extends StatelessWidget {
  const _PersonalInfoSection({
    required this.basicInfo,
    required this.generalData,
  });

  final BasicInfo basicInfo;
  final GeneralData? generalData;

  @override
  Widget build(BuildContext context) {
    final nrcTypeParts = basicInfo.nrcType.split('-');
    final nrcTypeShort = nrcTypeParts.isNotEmpty
        ? nrcTypeParts.first
        : basicInfo.nrcType;
    final nrcNumberShort = basicInfo.nrcNumbers.isNotEmpty
        ? basicInfo.nrcNumbers.first
        : '';
    final nrc =
        '${basicInfo.nrcRegionCodeId}/${basicInfo.nrcTownship}'
        '($nrcTypeShort)'
        '$nrcNumberShort';

    return _InfoCard(
      title: 'Personal Information',
      icon: Icons.person_outline_rounded,
      children: [
        _InfoRow(
          label: 'Gender',
          value: _lookup(generalData?.gender, basicInfo.genderId),
        ),
        _InfoRow(
          label: 'Date of Birth',
          value: _formatDate(basicInfo.dateOfBirth),
        ),
        _InfoRow(
          label: 'Blood Type',
          value: _lookup(generalData?.bloodType, basicInfo.bloodTypeId),
        ),
        _InfoRow(
          label: 'Marital Status',
          value: _lookup(generalData?.maritalStatus, basicInfo.maritalStatusId),
        ),
        _InfoRow(
          label: 'Nationality',
          value: _lookup(generalData?.nationality, basicInfo.nationalityId),
        ),
        _InfoRow(
          label: 'Religion',
          value: _lookup(generalData?.religion, basicInfo.religionId),
        ),
        _InfoRow(
          label: 'Ethnicity',
          value: _lookup(generalData?.ethnic, basicInfo.ethnicId),
        ),
        _InfoRow(label: 'Height', value: basicInfo.height),
        _InfoRow(label: 'Weight', value: '${basicInfo.weight} lb'),
        _InfoRow(label: 'NRC', value: nrc),
        if (basicInfo.placeOfBirths.isNotEmpty)
          _InfoRow(
            label: 'Place of Birth',
            value: basicInfo.placeOfBirths.first,
          ),
      ],
    );
  }
}

class _ContactInfoSection extends StatelessWidget {
  const _ContactInfoSection({required this.contactInfo});

  final ContactInfo contactInfo;

  @override
  Widget build(BuildContext context) {
    return _InfoCard(
      title: 'Contact Information',
      icon: Icons.contact_phone_outlined,
      children: [
        _InfoRow(label: 'Phone', value: contactInfo.phone),
        _InfoRow(label: 'Office Phone', value: contactInfo.officePhone),
        _InfoRow(
          label: 'Current Address',
          value: _buildAddress(
            contactInfo.currentStreetAddresses,
            contactInfo.currentCity,
            contactInfo.currentTownship,
            contactInfo.currentState,
          ),
        ),
        _InfoRow(
          label: 'Permanent Address',
          value: _buildAddress(
            contactInfo.permanentStreetAddresses,
            contactInfo.permanentCity,
            contactInfo.permanentTownship,
            contactInfo.permanentState,
          ),
        ),
      ],
    );
  }

  String _buildAddress(
    List<String> streets,
    String city,
    String township,
    String state,
  ) {
    final parts = <String>[
      ...streets.where((s) => s.trim().isNotEmpty),
      township,
      city,
      state,
    ].where((s) => s.trim().isNotEmpty).toList();
    return parts.isEmpty ? '-' : parts.join(', ');
  }
}

class _WorkInfoSection extends StatelessWidget {
  const _WorkInfoSection({required this.workInfo, required this.generalData});

  final WorkInfo workInfo;
  final GeneralData? generalData;

  @override
  Widget build(BuildContext context) {
    return _InfoCard(
      title: 'Work Information',
      icon: Icons.work_outline_rounded,
      children: [
        _InfoRow(
          label: 'Position',
          value: workInfo.position.titles.isNotEmpty
              ? workInfo.position.titles.first
              : '-',
        ),
        _InfoRow(
          label: 'Department',
          value: workInfo.department.titles.isNotEmpty
              ? workInfo.department.titles.first
              : '-',
        ),
        _InfoRow(
          label: 'Employee Code',
          value: '${workInfo.employeeCodePrefix}${workInfo.employeeCode}',
        ),
        _InfoRow(label: 'Card ID', value: '${workInfo.cardId}'),
        _InfoRow(label: 'Grade', value: '${workInfo.grade}'),
        _InfoRow(
          label: 'Status',
          value: _lookup(
            generalData?.employeeStatus,
            workInfo.employmentStatus,
          ),
        ),
        _InfoRow(
          label: 'Employment Date',
          value: _formatDate(workInfo.employmentDate),
        ),
        _InfoRow(
          label: 'Probation End',
          value: _formatDate(workInfo.probationEndDate),
        ),
        _InfoRow(
          label: 'Supervisor',
          value: workInfo.supervisor?.username ?? '-',
        ),
        _InfoRow(label: 'Shift', value: workInfo.shift?.shiftId ?? '-'),
        _InfoRow(label: 'Branch', value: workInfo.branch.name),
      ],
    );
  }
}

class _FamilyInfoSection extends StatelessWidget {
  const _FamilyInfoSection({required this.familyInfo});

  final FamilyInfo familyInfo;

  @override
  Widget build(BuildContext context) {
    return _InfoCard(
      title: 'Family Information',
      icon: Icons.family_restroom_rounded,
      children: [
        _InfoRow(
          label: 'Father',
          value: familyInfo.fatherNames.isNotEmpty
              ? familyInfo.fatherNames.first
              : '-',
        ),
        _InfoRow(
          label: 'Mother',
          value: familyInfo.motherNames.isNotEmpty
              ? familyInfo.motherNames.first
              : '-',
        ),
        _InfoRow(
          label: 'Family Members',
          value: '${familyInfo.numberOfFamilyMembers}',
        ),
      ],
    );
  }
}

class _OvertimeSection extends StatelessWidget {
  const _OvertimeSection({required this.bio});

  final UserBio bio;

  @override
  Widget build(BuildContext context) {
    return _InfoCard(
      title: 'Overtime & Settings',
      icon: Icons.tune_rounded,
      children: [
        _ChipRow(
          chips: {
            'Overtime': bio.isOvertimeEnabled,
            'OT1': bio.isOvertime1Enabled,
            'OT2': bio.isOvertime2Enabled,
            'OT3': bio.isOvertime3Enabled,
            'Auto Amend': bio.isAutoAmendEnabled,
            'Deduction': bio.isDeductionEnabled,
            'Under': bio.isUnderEnabled,
          },
        ),
      ],
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

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

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
            child: Text(
              value.trim().isEmpty ? '-' : value,
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

class _ChipRow extends StatelessWidget {
  const _ChipRow({required this.chips});

  final Map<String, bool> chips;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: chips.entries.map((entry) {
        final enabled = entry.value;
        return Chip(
          avatar: Icon(
            enabled ? Icons.check_circle : Icons.cancel,
            size: 18,
            color: enabled ? Colors.green : theme.colorScheme.outline,
          ),
          label: Text(entry.key),
          backgroundColor: enabled
              ? Colors.green.withValues(alpha: 0.1)
              : theme.colorScheme.surfaceContainerHighest,
        );
      }).toList(),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

String _lookup(List<dynamic>? options, dynamic id) {
  if (options == null) return '-';
  for (final option in options) {
    if (option.id.toString() == id.toString()) {
      final titles = option.titles as List<String>;
      return titles.isNotEmpty ? titles.first : '-';
    }
  }
  return '-';
}

String? _buildFullName(BasicInfo? info) {
  if (info == null) return null;
  final first = info.firstNames.firstWhere(
    (n) => n != null && n.trim().isNotEmpty,
    orElse: () => null,
  );
  final last = info.lastNames.firstWhere(
    (n) => n != null && n.trim().isNotEmpty,
    orElse: () => null,
  );
  final name = [first, last].where((n) => n != null).join(' ').trim();
  return name.isEmpty ? null : name;
}

String _formatDate(String isoDate) {
  try {
    final date = DateTime.parse(isoDate).toLocal();
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
  } catch (_) {
    return isoDate;
  }
}
