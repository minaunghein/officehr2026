import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/shared/date_formatter.dart';
import 'package:qr_flutter/qr_flutter.dart';

class StaffIdCardScreen extends ConsumerWidget {
  const StaffIdCardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentUser = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Digital ID Card', style: theme.textTheme.headlineMedium),
        actions: [
          IconButton(
            tooltip: 'How to verify',
            onPressed: () => _showVerificationInfo(context),
            icon: const Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: currentUser.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _CardStateMessage(
          icon: Icons.error_outline_rounded,
          title: 'Unable to load ID card',
          message: 'Please try again later.',
          color: theme.colorScheme.error,
        ),
        data: (session) {
          if (session == null) {
            return _CardStateMessage(
              icon: Icons.badge_outlined,
              title: 'No ID card available',
              message: 'Sign in to view your digital staff ID card.',
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            );
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  children: [
                    _StaffIdCard(session: session),
                    const SizedBox(height: 18),
                    _SecurityNote(onTap: () => _showVerificationInfo(context)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StaffIdCard extends StatelessWidget {
  const _StaffIdCard({required this.session});

  final AuthSession session;

  static const _cardTop = Color(0xFF0A1F4D);
  static const _cardMid = Color(0xFF0B48B8);
  static const _cardBottom = Color(0xFF061631);

  @override
  Widget build(BuildContext context) {
    final employee = session.employee;
    final workInfo = employee?.workInfo;
    final basicInfo = employee?.basicInfo;

    final details = <_CardInfoData>[
      _CardInfoData(
        icon: Icons.apartment_rounded,
        label: 'Department',
        value: _text(workInfo?.department?.title),
      ),
      _CardInfoData(
        icon: Icons.location_city_rounded,
        label: 'Branch',
        value: _text(workInfo?.branch?.title),
      ),
      _CardInfoData(
        icon: Icons.schedule_rounded,
        label: 'Shift',
        value: _text(workInfo?.shift?.title),
      ),
      _CardInfoData(
        icon: Icons.bloodtype_rounded,
        label: 'Blood Type',
        value: _text(basicInfo?.bloodType),
      ),
      _CardInfoData(
        icon: Icons.work_outline_rounded,
        label: 'Employment',
        value: _text(workInfo?.employmentType),
      ),
      _CardInfoData(
        icon: Icons.event_available_rounded,
        label: 'Joined',
        value: formatDateString(workInfo?.employmentDate),
      ),
    ].where((item) => item.value != '-').toList();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [_cardTop, _cardMid, _cardBottom],
        ),
        boxShadow: [
          BoxShadow(
            color: _cardMid.withValues(alpha: 0.35),
            blurRadius: 34,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: -70,
            right: -50,
            child: _Glow(
              size: 220,
              color: Colors.white.withValues(alpha: 0.10),
            ),
          ),
          Positioned(
            bottom: -80,
            left: -60,
            child: _Glow(
              size: 200,
              color: const Color(0xFF3D7BFF).withValues(alpha: 0.22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CardHeader(
                  companyName: session.companyName,
                  employeeCode: session.employeeCode,
                ),
                const SizedBox(height: 22),
                Center(
                  child: _Avatar(
                    profileUrl: session.profileUrl,
                    initials: _initials(session.displayName),
                    status: workInfo?.employmentStatus ?? '',
                  ),
                ),
                const SizedBox(height: 14),
                Center(
                  child: Text(
                    session.displayName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    session.positionTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.82),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (details.isNotEmpty) ...[
                  const SizedBox(height: 20),
                  _GlassPanel(details: details),
                ],
                const SizedBox(height: 20),
                _CardFooter(session: session),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader({required this.companyName, required this.employeeCode});

  final String companyName;
  final String? employeeCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.16),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withValues(alpha: 0.24)),
          ),
          child: const Icon(Icons.badge_rounded, color: Colors.white, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4,
                ),
              ),
              Text(
                'EMPLOYEE ID',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.6,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.contactless_rounded, color: Colors.white70, size: 26),
      ],
    );
  }
}

class _GlassPanel extends StatelessWidget {
  const _GlassPanel({required this.details});

  final List<_CardInfoData> details;

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    for (var i = 0; i < details.length; i += 2) {
      final left = details[i];
      final right = i + 1 < details.length ? details[i + 1] : null;
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _InfoTile(data: left)),
            const SizedBox(width: 16),
            Expanded(
              child: right == null ? const SizedBox() : _InfoTile(data: right),
            ),
          ],
        ),
      );
      if (i + 2 < details.length) rows.add(const SizedBox(height: 16));
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.16)),
      ),
      child: Column(children: rows),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({required this.data});

  final _CardInfoData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              data.icon,
              size: 13,
              color: Colors.white.withValues(alpha: 0.7),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                data.label.toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.55),
                  fontSize: 9.5,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.8,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          data.value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _CardFooter extends StatelessWidget {
  const _CardFooter({required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final employee = session.employee;
    final code = session.employeeCode ?? session.userId;
    final status = _text(employee?.workInfo.employmentStatus);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _FooterField(label: 'EMPLOYEE CODE', value: _grouped(code)),
              const SizedBox(height: 12),
              _FooterField(
                label: 'ISSUED',
                value: formatDateString(employee?.createdAt),
              ),
              const SizedBox(height: 12),
              _FooterField(
                label: 'STATUS',
                value: status == '-' ? 'ACTIVE' : status.toUpperCase(),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: QrImageView(
            data: _qrPayload(session),
            version: QrVersions.auto,
            size: 76,
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: _StaffIdCard._cardBottom,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.square,
              color: _StaffIdCard._cardBottom,
            ),
          ),
        ),
      ],
    );
  }
}

class _FooterField extends StatelessWidget {
  const _FooterField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.5),
            fontSize: 9,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13.5,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.4,
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    required this.profileUrl,
    required this.initials,
    required this.status,
  });

  final String profileUrl;
  final String initials;
  final String status;

  @override
  Widget build(BuildContext context) {
    final isActive =
        status.trim().isEmpty || status.toLowerCase() != 'inactive';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 104,
          height: 104,
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF8FB2FF), Color(0xFF3D7BFF)],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 18,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: ClipOval(
            child: ColoredBox(
              color: const Color(0xFF0B48B8),
              child: profileUrl.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: profileUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => _initialsLabel(),
                      errorWidget: (context, url, error) => _initialsLabel(),
                    )
                  : _initialsLabel(),
            ),
          ),
        ),
        Positioned(
          right: 2,
          bottom: 6,
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: _StaffIdCard._cardBottom, width: 2),
            ),
            child: Center(
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: isActive
                      ? const Color(0xFF22C55E)
                      : const Color(0xFFEF4444),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _initialsLabel() {
    return Center(
      child: Text(
        initials,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w800,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class _Glow extends StatelessWidget {
  const _Glow({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class _SecurityNote extends StatelessWidget {
  const _SecurityNote({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.lock_outline_rounded,
              size: 15,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
            ),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                'QR carries only your user ID - no personal data. Tap to learn how to verify.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardStateMessage extends StatelessWidget {
  const _CardStateMessage({
    required this.icon,
    required this.title,
    required this.message,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: color),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}

class _CardInfoData {
  const _CardInfoData({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;
}

void _showVerificationInfo(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final theme = Theme.of(context);
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verify this ID card',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const _VerifyStep(
                number: '1',
                title: 'Scan the QR',
                body:
                    'Use the company verifier app or camera to scan the code on the card.',
              ),
              const _VerifyStep(
                number: '2',
                title: 'Verifier authenticates',
                body:
                    'The verifier signs in and the backend resolves the card ID to the employee record.',
              ),
              const _VerifyStep(
                number: '3',
                title: 'Confirm identity',
                body:
                    'Match the on-screen photo and name, and confirm the employee is active.',
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.shield_outlined,
                      size: 18,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'The QR holds your public user ID only. Treat a screenshot as a copy of a physical card - for stronger security issue short-lived, server-signed tokens and verify them against a public key.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.75,
                          ),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _VerifyStep extends StatelessWidget {
  const _VerifyStep({
    required this.number,
    required this.title,
    required this.body,
  });

  final String number;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 26,
            height: 26,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Text(
              number,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
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
                const SizedBox(height: 2),
                Text(
                  body,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.65),
                    height: 1.35,
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

String _qrPayload(AuthSession session) => session.userId;

String _text(String? value) {
  final trimmed = value?.trim() ?? '';
  return trimmed.isEmpty ? '-' : trimmed;
}

String _grouped(String value) {
  final clean = value.replaceAll(RegExp(r'\s+'), '');
  final buffer = StringBuffer();
  for (var i = 0; i < clean.length; i++) {
    if (i > 0 && i % 4 == 0) buffer.write('  ');
    buffer.write(clean[i]);
  }
  return buffer.toString();
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
