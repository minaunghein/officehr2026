import 'package:flutter/material.dart';
import 'package:office_hr/core/security/widgets/biometric_gate.dart';

class PayslipScreen extends StatelessWidget {
  const PayslipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payslip'), centerTitle: true),
      body: const BiometricGate(
        reason: 'Authenticate to view your payslips',
        title: 'Payslips are protected',
        description:
            'Unlock with your fingerprint, face, or device passcode to continue.',
        child: _PayslipContent(),
      ),
    );
  }
}

class _PayslipContent extends StatelessWidget {
  const _PayslipContent();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.receipt_long_rounded,
              size: 56,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              'Payslips will appear here',
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This content is only visible after a successful biometric check.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
